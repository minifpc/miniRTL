import csv
from collections import defaultdict

INPUT_CSV = "fehler_out.txt"
OUTPUT_RC = "fehler_win.rc"

def parse_csv(filepath):
    resources = []
    with open(filepath, newline='', encoding='utf-8') as csvfile:
        reader = csv.reader(csvfile, delimiter=',', quotechar='"')
        for row_num, row in enumerate(reader, start=1):
            if len(row) < 4:
                print(f"Zeile {row_num} hat weniger als 4 Spalten: {row}")
                continue
            # Alle Felder ab dem vierten als Text zusammensetzen (Fehlertext kann Kommas enthalten)
            record_num = row[0].strip()
            error_code = row[1].strip()
            error_name = row[2].strip()
            error_text = ",".join(row[3:]).strip()  # Rest der Zeile = Fehlertext
            try:
                numeric_id = int(error_code, 16)
            except ValueError:
                print(f"Ungültiger ErrorCode in Zeile {row_num}: {error_code}")
                continue
            resources.append((numeric_id, error_name, error_text))
    return resources

def generate_rc_grouped(resources):
    grouped = defaultdict(list)
    
    for code, name, text in resources:
        group_id = code // 16
        grouped[group_id].append((code, text))

    lines = []
    lines.append("// Gruppierte STRINGTABLE-Ressourcen (16er Blöcke)")
    lines.append("")

    for group in sorted(grouped.keys()):
        entries = sorted(grouped[group], key=lambda x: x[0])
        lines.append("STRINGTABLE")
        lines.append("BEGIN")
        for code, text in entries:
            # Escape Anführungszeichen im Text
            escaped_text = text.replace('"', '""')
            lines.append(f"  {code} \"{escaped_text}\"")
        lines.append("END\n")

    return "\n".join(lines)

def main():
    resources = parse_csv(INPUT_CSV)
    if not resources:
        print("Keine gültigen Einträge gefunden. Bitte CSV prüfen.")
        return
    rc_code = generate_rc_grouped(resources)
    with open(OUTPUT_RC, "w", encoding="utf-8") as f:
        f.write(rc_code)
    print(f"✅ Ressourcendatei geschrieben: {OUTPUT_RC} ({len(resources)} Einträge)")

if __name__ == "__main__":
    main()
