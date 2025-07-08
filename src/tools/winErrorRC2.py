import csv
from collections import defaultdict

INPUT_CSV = "fehler_out.txt"
OUTPUT_RC = "fehler_win2.rc"

def parse_csv(filepath):
    entries = []
    with open(filepath, newline='', encoding='utf-8') as csvfile:
        reader = csv.reader(csvfile, delimiter=',', quotechar='"')
        for row_num, row in enumerate(reader, start=1):
            if len(row) < 3:
                print(f"⚠️  Zeile {row_num} hat weniger als 3 Spalten: {row}")
                continue
            error_code = row[1].strip()
            error_name = row[2].strip()
            try:
                numeric_id = int(error_code, 16)
            except ValueError:
                print(f"Ungültiger ErrorCode in Zeile {row_num}: {error_code}")
                continue
            entries.append((numeric_id, error_name))
    return entries

def generate_rc_grouped(entries):
    grouped = defaultdict(list)
    
    for code, name in entries:
        group_id = code // 16
        grouped[group_id].append((code, name))

    lines = []
    lines.append("// STRINGTABLE für Fehlernamen (gruppiert nach 16er-Blöcken)")
    lines.append("")

    for group in sorted(grouped.keys()):
        block = sorted(grouped[group], key=lambda x: x[0])
        lines.append("STRINGTABLE")
        lines.append("BEGIN")
        for code, name in block:
            safe_name = name.replace('"', '""')
            lines.append(f"  {code} \"{safe_name}\"")
        lines.append("END\n")

    return "\n".join(lines)

def main():
    entries = parse_csv(INPUT_CSV)
    if not entries:
        print("⚠️  Keine gültigen Einträge gefunden.")
        return
    rc_code = generate_rc_grouped(entries)
    with open(OUTPUT_RC, "w", encoding="utf-8") as f:
        f.write(rc_code)
    print(f"Datei geschrieben: {OUTPUT_RC} ({len(entries)} Einträge)")

if __name__ == "__main__":
    main()
