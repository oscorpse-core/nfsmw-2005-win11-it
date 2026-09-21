#Requires -Version 5.1
<#
.SYNOPSIS
  Upload GitHub Release assets via streaming HTTP (avoids gh hang on ~2GB).

.PARAMETER Line
  vanilla = pack stock IT (default). qol = pack QoL.

.PARAMETER Tag
  Override tag (default: vanilla v1.0.1, qol v1.1.0-qol).

.PARAMETER ReplaceExisting
  If set, delete ONLY this tag's release + git tag before recreate.
  Never deletes other Releases (required for dual vanilla+QoL).

.EXAMPLE
  .\publish-release.ps1
  .\publish-release.ps1 -Line qol
  .\publish-release.ps1 -Line qol -Tag v1.1.0-qol -ReplaceExisting
#>
param(
  [ValidateSet('vanilla', 'qol')]
  [string]$Line = 'vanilla',
  [string]$Tag = '',
  [switch]$ReplaceExisting
)

$ErrorActionPreference = 'Stop'
$Repo = 'oscorpse-core/nfsmw-2005-win11-it'
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
$Dist = Join-Path $Root 'dist'
$Log  = Join-Path $Dist 'publish-release.log'

if ($Line -eq 'vanilla') {
  if ([string]::IsNullOrWhiteSpace($Tag)) { $Tag = 'v1.0.1' }
  $Notes = Join-Path $Root 'RELEASE_NOTES.md'
  $Part1 = Join-Path $Dist 'nfsmw-2005-win11-it.7z.001'
  $Part2 = Join-Path $Dist 'nfsmw-2005-win11-it.7z.002'
  $Title = "$Tag - Pack Win11 IT vanilla (+ CommonRedist)"
} else {
  if ([string]::IsNullOrWhiteSpace($Tag)) { $Tag = 'v1.1.0-qol' }
  $Notes = Join-Path $Root 'RELEASE_NOTES-QOL.md'
  $Part1 = Join-Path $Dist 'nfsmw-2005-win11-it-qol.7z.001'
  $Part2 = Join-Path $Dist 'nfsmw-2005-win11-it-qol.7z.002'
  $Title = "$Tag - Pack Win11 IT QoL (+ CommonRedist)"
}

function Log([string]$msg) {
  $line = '[{0}] {1}' -f (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'), $msg
  Add-Content -LiteralPath $Log -Value $line -Encoding UTF8
  [Console]::Out.WriteLine($line)
}

function Upload-AssetStreaming {
  param(
    [Parameter(Mandatory)][long]$ReleaseId,
    [Parameter(Mandatory)][string]$FilePath,
    [Parameter(Mandatory)][string]$Token
  )
  $name = Split-Path -Leaf $FilePath
  $size = (Get-Item -LiteralPath $FilePath).Length
  $url  = "https://uploads.github.com/repos/$Repo/releases/$ReleaseId/assets?name=$([uri]::EscapeDataString($name))"
  Log ("STREAM upload {0} ({1:N2} MB)" -f $name, ($size/1MB))

  $req = [System.Net.HttpWebRequest]::Create($url)
  $req.Method = 'POST'
  $req.Accept = 'application/vnd.github+json'
  $req.ContentType = 'application/octet-stream'
  $req.Headers.Add('Authorization', "Bearer $Token")
  $req.Headers.Add('X-GitHub-Api-Version', '2022-11-28')
  $req.ContentLength = $size
  $req.AllowWriteStreamBuffering = $false
  $req.Timeout = -1
  $req.ReadWriteTimeout = 30 * 60 * 1000
  $req.SendChunked = $false
  $req.KeepAlive = $true
  $req.UserAgent = 'nfsmw-publish-release'

  $buffer = New-Object byte[] (4MB)
  $fs = [System.IO.File]::OpenRead($FilePath)
  try {
    $reqStream = $req.GetRequestStream()
    try {
      $sent = [long]0
      $lastLog = [datetime]::UtcNow
      while ($true) {
        $read = $fs.Read($buffer, 0, $buffer.Length)
        if ($read -le 0) { break }
        $reqStream.Write($buffer, 0, $read)
        $sent += $read
        if (([datetime]::UtcNow - $lastLog).TotalSeconds -ge 10) {
          $pct = [math]::Round(100.0 * $sent / $size, 1)
          Log ("  {0}: {1:N0}/{2:N0} MB ({3}%)" -f $name, ($sent/1MB), ($size/1MB), $pct)
          $lastLog = [datetime]::UtcNow
        }
      }
      $reqStream.Flush()
    } finally {
      $reqStream.Close()
    }

    $resp = $req.GetResponse()
    try {
      $reader = New-Object IO.StreamReader($resp.GetResponseStream())
      $body = $reader.ReadToEnd()
      $reader.Close()
      Log ("UPLOAD OK {0}" -f $name)
      return $body
    } finally {
      $resp.Close()
    }
  } catch [System.Net.WebException] {
    $errBody = ''
    if ($_.Exception.Response) {
      $sr = New-Object IO.StreamReader($_.Exception.Response.GetResponseStream())
      $errBody = $sr.ReadToEnd()
      $sr.Close()
    }
    throw ("Upload failed {0}: {1} | {2}" -f $name, $_.Exception.Message, $errBody)
  } finally {
    $fs.Dispose()
  }
}

New-Item -ItemType Directory -Force -Path $Dist | Out-Null
if (Test-Path -LiteralPath $Log) { Remove-Item -LiteralPath $Log -Force }
Log "START streaming publisher line=$Line tag=$Tag"

foreach ($f in @($Part1, $Part2, $Notes)) {
  if (-not (Test-Path -LiteralPath $f)) { throw "Missing $f" }
}

# Safety: never wipe other Releases. Only optional replace of THIS tag.
if ($ReplaceExisting) {
  Log "ReplaceExisting: remove only tag $Tag"
  $prev = $ErrorActionPreference
  $ErrorActionPreference = 'Continue'
  try {
    $byTag = (& gh api "repos/$Repo/releases/tags/$Tag" 2>$null) | ConvertFrom-Json
    if ($byTag -and $byTag.id) {
      Log "DELETE release id=$($byTag.id) tag=$Tag"
      & gh api -X DELETE "repos/$Repo/releases/$($byTag.id)" 2>$null | Out-Null
    }
  } catch { }
  cmd /c "gh api -X DELETE repos/$Repo/git/refs/tags/$Tag >nul 2>nul"
  $ErrorActionPreference = $prev
} else {
  Log 'ReplaceExisting not set — will fail if tag already exists (safe for dual-release)'
}

Log 'Create draft'
& gh release create $Tag -R $Repo --draft --title $Title --notes-file $Notes
if ($LASTEXITCODE -ne 0) { throw 'release create failed' }

# Draft releases often lack a resolvable git tag URL; resolve via list + tag_name.
$releaseId = 0L
$allRaw = & gh api "repos/$Repo/releases"
$all = $allRaw | ConvertFrom-Json
foreach ($r in @($all)) {
  if ($r.tag_name -eq $Tag -and $r.id) {
    $releaseId = [long]$r.id
    break
  }
}
if ($releaseId -le 0) {
  try {
    $byTag = (& gh api "repos/$Repo/releases/tags/$Tag") | ConvertFrom-Json
    if ($byTag -and $byTag.id) { $releaseId = [long]$byTag.id }
  } catch { }
}
if ($releaseId -le 0) { throw "Could not resolve release id for tag $Tag" }
Log "releaseId=$releaseId"
$token = (& gh auth token).Trim()
if ([string]::IsNullOrWhiteSpace($token)) { throw 'gh auth token empty' }

Upload-AssetStreaming -ReleaseId $releaseId -FilePath $Part2 -Token $token
Upload-AssetStreaming -ReleaseId $releaseId -FilePath $Part1 -Token $token

$assets = & gh api "repos/$Repo/releases/$releaseId" --jq '[.assets[] | {name,size,state}]'
Log "ASSETS=$assets"
$count = @(& gh api "repos/$Repo/releases/$releaseId" --jq '.assets[].name').Count
if ($count -lt 2) { throw "Expected 2 assets, got $count" }

Log 'Publish'
& gh release edit $Tag -R $Repo --draft=false
if ($LASTEXITCODE -ne 0) { throw 'publish failed' }
Log "PUBLISHED https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases/tag/$Tag"
