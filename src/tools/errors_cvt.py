import re

def fehlerliste_erstellen_final(eingabedatei_pfad, ausgabedatei_pfad):
    """
    Erstellt eine Liste von Fehlercodes aus einer externen Datei mit neuem Schema:
    Index, Hex-Code, Fehlername, Fehlerbeschreibung.

    Args:
        eingabedatei_pfad (str): Der Pfad zur Quelltextdatei mit den Fehlerinformationen.
        ausgabedatei_pfad (str): Der Pfad zur Zieldatei, in die die Fehlercodes
                                 geschrieben werden sollen.
    """
    try:
        with open(eingabedatei_pfad, 'r', encoding='utf-8') as infile:
            lines = infile.readlines()

        fehler_daten = []
        i = 0
        index_counter = 1 # Startet den Index bei 1

        while i < len(lines):
            # Zeile 1: Fehlername (z.B. ERROR_SUCCESS)
            fehlername = lines[i].strip()
            i += 1

            # Zeile 2: Leer
            if i < len(lines) and lines[i].strip() == "":
                i += 1
            else:
                print(f"Warnung: Unerwarteter Inhalt in Zeile {i+1} (erwartet leere Zeile). Überspringe Block.")
                i = min(i + 4, len(lines)) # Versuche, zum nächsten Block zu springen
                continue

            # Zeile 3: Fehlercode (z.B. 0 (0x0))
            fehlercode_line = lines[i].strip()
            i += 1

            # Extrahiere den Hex-Wert aus Klammern mit Regex
            match = re.search(r'\(0x([0-9a-fA-F]+)\)', fehlercode_line)
            fehlercode_hex = None
            if match:
                extracted_hex = match.group(1)
                try:
                    # Konvertiere in Dezimal und dann wieder in Hexadezimal mit 32-Bit-Format
                    fehlercode_dez = int(extracted_hex, 16)
                    # Formatiere als 8-stelligen Hex-String mit führenden Nullen
                    fehlercode_hex = f"{fehlercode_dez:08X}"
                except ValueError:
                    print(f"Warnung: Ungültiger Hexadezimalwert '{extracted_hex}' in Zeile {i} gefunden. Überspringe Block.")
                    i = min(i + 3, len(lines))
                    continue
            else:
                print(f"Warnung: Kein Hex-Code im Format '(0x...)' in Zeile {i} gefunden: '{fehlercode_line}'. Überspringe Block.")
                i = min(i + 3, len(lines))
                continue

            # Zeile 4: Leer
            if i < len(lines) and lines[i].strip() == "":
                i += 1
            else:
                print(f"Warnung: Unerwarteter Inhalt in Zeile {i+1} (erwartet leere Zeile). Überspringe Block.")
                i = min(i + 2, len(lines))
                continue

            # Zeile 5: Fehlerbeschreibung
            fehlerbeschreibung = lines[i].strip()
            i += 1

            # Zeile 6: Leer (optional, wenn Datei am Ende ist)
            if i < len(lines) and lines[i].strip() == "":
                i += 1
            else:
                pass # Ende der Datei erreicht oder keine finale Leerzeile

            # Formatieren der Ausgabezeile: Index,Hex-Code,Fehlername,Beschreibung
            formatted_line = f"{index_counter},0x{fehlercode_hex},{fehlername},{fehlerbeschreibung}"
            fehler_daten.append(formatted_line)
            index_counter += 1

        with open(ausgabedatei_pfad, 'w', encoding='utf-8') as outfile:
            for zeile in fehler_daten:
                outfile.write(zeile + '\n')

        print(f"Die Fehlerliste wurde erfolgreich im neuen Format in '{ausgabedatei_pfad}' erstellt.")

    except FileNotFoundError:
        print(f"Fehler: Die Datei '{eingabedatei_pfad}' wurde nicht gefunden.")
    except Exception as e:
        print(f"Ein unerwarteter Fehler ist aufgetreten: {e}")

if __name__ == "__main__":
    eingabe = "errors_in.txt"
    ausgabe = "errors_out.txt" # Verwende .csv, da es Komma-separiert ist
    fehlerliste_erstellen_final(eingabe, ausgabe)
