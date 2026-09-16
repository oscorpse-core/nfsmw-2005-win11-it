#Requires -Version 5.1
# Upload release assets via streaming HTTP (no full-file buffer).
# gh release upload hangs on ~2GB files on Windows; this path does not.
$ErrorActionPreference = 'Stop'
$Repo = 'oscorpse-core/nfsmw-2005-win11-it'
$Tag  = 'v1.0.1'
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path
$Dist = Join-Path $Root 'dist'
$Log  = Join-Path $Dist 'publish-release.log'
$Notes = Join-Path $Root 'RELEASE_NOTES.md'
$Part1 = Join-Path $Dist 'nfsmw-2005-win11-it.7z.001'
$Part2 = Join-Path $Dist 'nfsmw-2005-win11-it.7z.002'

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
Log 'START streaming publisher'

foreach ($f in @($Part1, $Part2, $Notes)) {
  if (-not (Test-Path -LiteralPath $f)) { throw "Missing $f" }
}

Log 'Kill leftover gh/publish'
Get-CimInstance Win32_Process -Filter "Name='gh.exe'" -ErrorAction SilentlyContinue |
  ForEach-Object { Stop-Process -Id $_.ProcessId -Force -ErrorAction SilentlyContinue }
Start-Sleep -Seconds 1

$prev = $ErrorActionPreference
$ErrorActionPreference = 'Continue'
Log 'Delete existing releases'
$ids = @(& gh api "repos/$Repo/releases" --jq '.[].id' 2>$null)
foreach ($id in $ids) {
  if ([string]::IsNullOrWhiteSpace([string]$id)) { continue }
  Log "DELETE release $id"
  & gh api -X DELETE "repos/$Repo/releases/$id" 2>$null | Out-Null
}
cmd /c "gh api -X DELETE repos/$Repo/git/refs/tags/$Tag >nul 2>nul"
$ErrorActionPreference = $prev

Log 'Create draft'
& gh release create $Tag -R $Repo --draft --title 'v1.0.1 - Pack Win11 IT (+ CommonRedist)' --notes-file $Notes
if ($LASTEXITCODE -ne 0) { throw 'release create failed' }

# Resolve release id via JSON (jq boolean/draft filters are flaky under PowerShell)
$releaseId = 0L
try {
  $byTag = (& gh api "repos/$Repo/releases/tags/$Tag" 2>$null) | ConvertFrom-Json
  if ($byTag -and $byTag.id) { $releaseId = [long]$byTag.id }
} catch { }
if ($releaseId -le 0) {
  $all = (& gh api "repos/$Repo/releases") | ConvertFrom-Json
  $match = @($all | Where-Object { $_.tag_name -eq $Tag } | Select-Object -First 1)
  if ($match.Count -gt 0 -and $match[0].id) { $releaseId = [long]$match[0].id }
}
if ($releaseId -le 0) { throw "Could not resolve release id for tag $Tag" }
Log "releaseId=$releaseId"
$token = (& gh auth token).Trim()
if ([string]::IsNullOrWhiteSpace($token)) { throw 'gh auth token empty' }

# Smaller file first (faster feedback), then large part
Upload-AssetStreaming -ReleaseId $releaseId -FilePath $Part2 -Token $token
Upload-AssetStreaming -ReleaseId $releaseId -FilePath $Part1 -Token $token

$assets = & gh api "repos/$Repo/releases/$releaseId" --jq '[.assets[] | {name,size,state}]'
Log "ASSETS=$assets"
$count = @(& gh api "repos/$Repo/releases/$releaseId" --jq '.assets[].name').Count
if ($count -lt 2) { throw "Expected 2 assets, got $count" }

Log 'Publish'
& gh release edit $Tag -R $Repo --draft=false
if ($LASTEXITCODE -ne 0) { throw 'publish failed' }
Log 'PUBLISHED https://github.com/oscorpse-core/nfsmw-2005-win11-it/releases/tag/v1.0.1'
