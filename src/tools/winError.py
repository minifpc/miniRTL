import csv

INPUT_CSV = "windows_errors.csv"
OUTPUT_UNIT = "WinErrorCodes.pas"

def sanitize_pascal_identifier(identifier):
    return identifier.strip().replace(' ', '_').replace('-', '_')

def parse_csv(filepath):
    errors = []
    with open(filepath, newline='', encoding='utf-8') as csvfile:
        reader = csv.reader(csvfile, delimiter=';')
        next(reader)  # Skip header
        for row in reader:
            if len(row) < 4:
                continue
            _, hex_code, const_name, error_text = row
            const_name = sanitize_pascal_identifier(const_name)
            errors.append((hex_code.strip(), const_name.strip(), error_text.strip()))
    return errors

def generate_pascal_unit(errors):
    lines = []

    lines.append("unit WinErrorCodes;")
    lines.append("")
    lines.append("interface")
    lines.append("")
    lines.append("type")
    lines.append("  TWinError = (")
    for i, (_, const_name, _) in enumerate(errors):
        comma = ',' if i < len(errors) - 1 else ''
        lines.append(f"    {const_name}{comma}")
    lines.append("  );")
    lines.append("")
    lines.append("const")
    for hex_code, const_name, _ in errors:
        lines.append(f"  {const_name}_CODE = {hex_code};")
    lines.append("")
    lines.append("function GetErrorText(Error: TWinError): string;")
    lines.append("")
    lines.append("implementation")
    lines.append("")
    lines.append("function GetErrorText(Error: TWinError): string;")
    lines.append("begin")
    lines.append("  case Error of")
    for _, const_name, error_text in errors:
        lines.append(f"    {const_name}: Result := '{error_text}';")
    lines.append("  else")
    lines.append("    Result := 'Unknown error';")
    lines.append("  end;")
    lines.append("end;")
    lines.append("")
    lines.append("end.")

    return "\n".join(lines)

def main():
    errors = parse_csv(INPUT_CSV)
    pascal_code = generate_pascal_unit(errors)
    with open(OUTPUT_UNIT, 'w', encoding='utf-8') as f:
        f.write(pascal_code)
    print(f"Pascal unit written to {OUTPUT_UNIT}")

if __name__ == "__main__":
    main()
