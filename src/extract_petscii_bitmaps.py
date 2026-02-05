#!/usr/bin/env python3
# Extract C64 PETSCII 8x8 bitmaps from a character ROM (chargen.901225-01.bin, 8192 bytes).
# Usage:
#   python extract_petscii_bitmaps.py chargen.901225-01.bin petscii_8x8.json
#
# Output format:
# {
#   "00": ["..", ..., ".."],  # 8 hex bytes (row 0..7), each 0..FF representing 8 pixels MSB->LSB
#   ...
# }
import sys, json, os

def main():
    if len(sys.argv) < 3:
        print("Usage: python extract_petscii_bitmaps.py <chargen.bin> <out.json>")
        sys.exit(1)

    rom_path  = sys.argv[1]
    out_path  = sys.argv[2]

    data = open(rom_path, "rb").read()
    if len(data) not in (4096, 8192):
        print(f"Error: unexpected ROM size {len(data)}. Expected 4096 or 8192 bytes.")
        sys.exit(2)

    # Many dumps are 4KB; the C64 KERNAL commonly uses 2x4KB for upper/lower bank.
    # We assume the first 256 glyphs are arranged as 256*8 bytes = 2048 bytes per bank.
    # We'll take the first 256 glyphs from the first 2048 bytes block by default.
    # If 8KB, we'll still use the first bank; you can change bank_offset to 2048 to use the other.
    bank_offset = 0
    bank_size   = 2048
    if len(data) == 4096:
        # Two banks back-to-back; use the first
        pass
    elif len(data) == 8192:
        # Four blocks of 2KB; first 2KB is fine for a standard set.
        pass

    block = data[bank_offset:bank_offset+bank_size]
    if len(block) != bank_size:
        print("Error: truncated bank.")
        sys.exit(3)

    # 256 glyphs à 8 bytes
    out = {}
    for code in range(256):
        off = code * 8
        rowbytes = block[off:off+8]
        if len(rowbytes) < 8:
            rowbytes = rowbytes + bytes(8-len(rowbytes))
        out[f"{code:02X}"] = [f"{b:02X}" for b in rowbytes]

    with open(out_path, "w", encoding="utf-8") as f:
        json.dump(out, f, indent=2)

    print(f"Wrote {out_path} with {len(out)} glyphs.")

if __name__ == "__main__":
    main()
