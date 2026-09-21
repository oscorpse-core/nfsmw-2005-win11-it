"""Locate sell=GetCost()/2 sites in NFSMW speed.exe (v1.3)."""
from pathlib import Path

exe = Path(r"C:\Users\andre\_Main\games\nfs2005\nfsmw-2005-win11-it-qol\speed.exe")
data = exe.read_bytes()

targets = {
    "sell_confirm": 0xA46253BA,
    "sell_str": 0xB4A40135,
    "cant_sell": 0x9A772BD6,
    "impound": 0x80E4F27C,
    "showcase": 0x89D0649C,
    "dialog_alert": 0x417B2601,
}


def find_all(pat: bytes):
    hits = []
    start = 0
    while True:
        i = data.find(pat, start)
        if i < 0:
            break
        hits.append(i)
        start = i + 1
    return hits


for name, val in targets.items():
    pat = val.to_bytes(4, "little")
    hits = find_all(pat)
    print(f"{name} 0x{val:08X}: {len(hits)} hits")
    for o in hits[:16]:
        print(f"  file=0x{o:X} VA=0x{0x400000 + o:X}")

# Disassemble-ish: around each sell_confirm hit, look for shr/sar eax,1 after call
# Pattern: after GetCost call, often: shr eax,1  (D1 E8) or sar eax,1

sell_hits = find_all((0xA46253BA).to_bytes(4, "little"))
for o in sell_hits:
    window = data[max(0, o - 0x80) : o + 0x120]
    print(f"\n=== context around VA 0x{0x400000 + o:X} ===")
    # find D1 E8 / D1 F8 in nearby bytes relative to o
    for rel in range(len(window)):
        abs_off = max(0, o - 0x80) + rel
        if abs_off + 1 >= len(data):
            break
        b0, b1 = data[abs_off], data[abs_off + 1]
        if b0 == 0xD1 and b1 in (0xE8, 0xF8):  # shr/sar eax,1
            print(f"  shr/sar eax,1 @ file=0x{abs_off:X} VA=0x{0x400000 + abs_off:X}")
        if b0 == 0xD1 and b1 in (0xE9, 0xF9):  # shr/sar ecx,1
            print(f"  shr/sar ecx,1 @ file=0x{abs_off:X} VA=0x{0x400000 + abs_off:X}")
        if b0 == 0xD1 and b1 in (0xEA, 0xFA):  # shr/sar edx,1
            print(f"  shr/sar edx,1 @ file=0x{abs_off:X} VA=0x{0x400000 + abs_off:X}")
        # push imm32 of hash
        if data[abs_off : abs_off + 5] == bytes([0x68]) + (0xA46253BA).to_bytes(4, "little"):
            print(f"  push sell_confirm @ VA=0x{0x400000 + abs_off:X}")

print("\nDone.")
