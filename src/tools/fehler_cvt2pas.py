def generate_pascal_record_file(input_filepath, pascal_output_filepath):
    """
    Liest formatierte Fehlercodes aus einer Datei und generiert eine Pascal-Datei.
    Die Pascal-Datei enthält einen Record und eine globale Initialisierung der Daten.

    Args:
        input_filepath (str): Pfad zur Eingabedatei (z.B. die von vorher erzeugte CSV-ähnliche Datei).
                              Format: Dezimalcode,Hexcode,Bezeichnung,Beschreibung
        pascal_output_filepath (str): Pfad, unter dem die Pascal-Datei gespeichert werden soll.
    """
    try:
        with open(input_filepath, 'r', encoding='utf-8') as infile:
            lines = infile.readlines()

        pascal_code_lines = []
        pascal_code_lines.append("UNIT ErrorData;")
        pascal_code_lines.append("")
        pascal_code_lines.append("INTERFACE")
        pascal_code_lines.append("")
        pascal_code_lines.append("TYPE")
        pascal_code_lines.append("  TErrorCodeRecord = RECORD")
        pascal_code_lines.append("    error_code: Integer; // 32-Bit Integer")
        pascal_code_lines.append("    error_name: PChar;")
        pascal_code_lines.append("    error_desc: PChar;")
        pascal_code_lines.append("  END;")
        pascal_code_lines.append("")
        pascal_code_lines.append(f"VAR")
        pascal_code_lines.append(f"  WindowsErrorCodes: ARRAY[0..{len(lines) - 1}] OF TErrorCodeRecord;")
        pascal_code_lines.append("")
        pascal_code_lines.append("{$ifdef DLLEXPORT}")
        pascal_code_lines.append("procedure InitWindowsErrorCodes; stdcall; export;")
        pascal_code_lines.append("{$endif}")
        pascal_code_lines.append("{$ifdef DLLIMPORT}")
        pascal_code_lines.append("procedure InitWindowsErrorCodes; stdcall; external RTLDLL;")
        pascal_code_lines.append("{$endif}")
        pascal_code_lines.append("")
        pascal_code_lines.append("IMPLEMENTATION")
        pascal_code_lines.append("")
        pascal_code_lines.append("{$ifdef DLLEXPORT}")
        pascal_code_lines.append("procedure InitWindowsErrorCodes; stdcall; export;")
        pascal_code_lines.append("begin")

        for i, line in enumerate(lines):
            parts = line.strip().split(',')
            if len(parts) == 4:
                decimal_code = parts[0]
                # hex_code = parts[1] # Hexcode wird hier nicht direkt verwendet, aber kann bei Bedarf eingefügt werden
                designation = parts[2].replace("'", "''") # Escape single quotes for Pascal strings
                description = parts[3].replace("'", "''") # Escape single quotes for Pascal strings

                pascal_code_lines.append(f"  WindowsErrorCodes[{i}].error_code := {decimal_code};")
                pascal_code_lines.append(f"  WindowsErrorCodes[{i}].error_name := '{designation}';")
                pascal_code_lines.append(f"  WindowsErrorCodes[{i}].error_desc := '{description}';")
            else:
                print(f"Warnung: Ungültiges Zeilenformat in Eingabedatei bei Zeile {i+1}: '{line.strip()}'. Diese Zeile wird übersprungen.")

        pascal_code_lines.append("end;") # End of InitWindowsErrorCodes
        pascal_code_lines.append("")
        pascal_code_lines.append("exports")
        pascal_code_lines.append("  InitWindowsErrorCodes;")
        pascal_code_lines.append("{$endif}")
        pascal_code_lines.append("")
        pascal_code_lines.append("end.") # End of UNIT

        with open(pascal_output_filepath, 'w', encoding='utf-8') as outfile:
            for code_line in pascal_code_lines:
                outfile.write(code_line + '\n')

        print(f"Die Pascal-Datei '{pascal_output_filepath}' wurde erfolgreich generiert.")

    except FileNotFoundError:
        print(f"Fehler: Die Eingabedatei '{input_filepath}' wurde nicht gefunden.")
    except Exception as e:
        print(f"Ein unerwarteter Fehler ist aufgetreten: {e}")

if __name__ == "__main__":
    # Angenommen, 'fehlercodes_output.txt' ist die Datei, die im vorherigen Schritt erzeugt wurde.
    # Sie sollte das Format 'Dezimalcode,Hexcode,Bezeichnung,Beschreibung' haben.
    input_file_for_pascal = "fehler_out.txt"
    pascal_output_file = "ErrorData.pas"

    generate_pascal_record_file(input_file_for_pascal, pascal_output_file)

    # Optional: Inhalt der generierten Pascal-Datei anzeigen
    print("\nInhalt der generierten Pascal-Datei:")
    try:
        with open(pascal_output_file, 'r', encoding='utf-8') as f:
            print(f.read())
    except FileNotFoundError:
        print("Pascal-Ausgabedatei nicht gefunden.")
        