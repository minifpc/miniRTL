# This Python script rename all exported symbols in a EXE.
# (c) 2025 by paule32
# all rights reserved.
#
import lief

def make_hex_identifier(name, index):
    # Konvertiere Namen in 4-Byte-Blöcke, nimm ersten Block als Basis
    name_bytes = name.encode('utf-8')
    while len(name_bytes) < 4:
        name_bytes += b'\x00'
    hexblock = name_bytes[:4].hex()
    return f"{hexblock}_{index}"  # z.B. 4d794675_1

def ersetze_exportnamen_mit_hex(pfad_eingabe, pfad_ausgabe):
    binary = lief.parse(pfad_eingabe)

    if not binary.has_exports:
        print("Keine exportierten Symbole gefunden.")
        return

    exports = binary.exported_functions
    print(f"{len(exports)} exportierte Funktion(en) gefunden.\n")

    neue_namen = {}

    for index, alter_name in enumerate(exports, start=1):
        neuer_name = make_hex_identifier(alter_name, index)
        neue_namen[alter_name] = neuer_name

    # Namen ersetzen
    for alter_name, neuer_name in neue_namen.items():
        export = binary.get_export(alter_name)
        if export:
            print(f"Ersetze: {alter_name} -> {neuer_name}")
            export.name = neuer_name

    # Neue Datei schreiben
    binary.write(pfad_ausgabe)
    print(f"\nNeue Datei gespeichert als: {pfad_ausgabe}")


# Beispielaufruf
eingabe_dll = "test.exe"
ausgabe_dll = "test.exe.new"

ersetze_exportnamen_mit_hex(eingabe_dll, ausgabe_dll)
