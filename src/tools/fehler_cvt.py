def process_error_codes(input_filepath, output_filepath):
    """
    Liest Fehlercodes aus einer Datei, formatiert sie und speichert sie in einer neuen Datei.

    Die Eingabedatei hat das Format:
    Dezimalcode
    (Leerzeile)
    Hexcode
    (Leerzeile)
    Bezeichnung
    (Leerzeile)
    Beschreibung
    (Leerzeile)
    ...usw.

    Die Ausgabedatei enthält pro Fehlercode eine Zeile im Format:
    Dezimalcode,Hexcode,Bezeichnung,Beschreibung
    """
    try:
        with open(input_filepath, 'r', encoding='utf-8') as infile:
            lines = infile.readlines()

        processed_lines = []
        i = 0
        while i < len(lines):
            decimal_code = lines[i].strip()
            # Überprüfen, ob die Zeile nicht leer ist und es sich tatsächlich um einen Dezimalcode handeln könnte
            if not decimal_code:
                i += 1  # Überspringe leere Zeilen, die nicht Teil eines Fehlercodes sind
                continue

            # Erwarte eine Leerzeile nach dem Dezimalcode
            if i + 1 < len(lines) and lines[i+1].strip() == '':
                hex_code = lines[i+2].strip()
            else:
                # Handle cases where there might not be a blank line, or the format is unexpected
                # This simple script assumes the strict blank line format, more robust error handling
                # would be needed for less predictable input.
                print(f"Warnung: Unerwartetes Format bei Zeile {i+1}. Überspringe möglicherweise Daten.")
                i += 1
                continue # Skip this block if format is not as expected

            # Erwarte eine Leerzeile nach dem Hexcode
            if i + 3 < len(lines) and lines[i+3].strip() == '':
                designation = lines[i+4].strip()
            else:
                print(f"Warnung: Unerwartetes Format bei Zeile {i+3}. Überspringe möglicherweise Daten.")
                i += 1
                continue

            # Erwarte eine Leerzeile nach der Bezeichnung
            if i + 5 < len(lines) and lines[i+5].strip() == '':
                description = lines[i+6].strip()
            else:
                print(f"Warnung: Unerwartetes Format bei Zeile {i+5}. Überspringe möglicherweise Daten.")
                i += 1
                continue


            processed_lines.append(f"{decimal_code},{hex_code},{designation},{description}")
            i += 7  # Springe zur nächsten Gruppe von Daten (4 Zeilen + 3 Leerzeilen)

        with open(output_filepath, 'w', encoding='utf-8') as outfile:
            for line in processed_lines:
                outfile.write(line + '\n')

        print(f"Die Daten wurden erfolgreich von '{input_filepath}' gelesen und in '{output_filepath}' gespeichert.")

    except FileNotFoundError:
        print(f"Fehler: Die Datei '{input_filepath}' wurde nicht gefunden.")
    except Exception as e:
        print(f"Ein unerwarteter Fehler ist aufgetreten: {e}")

if __name__ == "__main__":
    input_file  = "fehler_in.txt"
    output_file = "fehler_out.txt"
    process_error_codes(input_file, output_file)

    # Inhalt der Ausgabedatei überprüfen (optional)
    print("\nInhalt der Ausgabedatei:")
    try:
        with open(output_file, 'r', encoding='utf-8') as f:
            print(f.read())
    except FileNotFoundError:
        print("Ausgabedatei nicht gefunden.")
 