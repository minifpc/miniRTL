# Datei: remove_block.py

start_marker = "QAPPLICATIONPASCAL$_$QAPPLICATION_$__$$_CREATE$$QAPPLICATION:"
end_marker = "nop"

input_file = "QApplicationPascal.s"
output_file = "QApplicationPascal_clean.s"

insert_text = [
    "    push rbp\n",
    "    mov rbp, rsp\n"
]

with open(input_file, "r", encoding="utf-8") as f:
    lines = f.readlines()

with open(output_file, "w", encoding="utf-8") as f:
    inside_block = False
    for line in lines:
        if start_marker in line:
            inside_block = True
            f.write(line)             # Startmarker beibehalten
            f.writelines(insert_text) # Text einfügen
            continue
        if inside_block and end_marker in line:
            inside_block = False
            continue  # Endmarker überspringen
        if not inside_block:
            f.write(line)
 