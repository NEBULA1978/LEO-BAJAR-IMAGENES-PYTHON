#!/bin/bash

index=1
output_file="component_names.txt"

> "$output_file"  # Limpia o crea el archivo de salida

while read -r filename; do
    echo "<CardComp" >> "$output_file"
    echo "    class=\"mt-2 mx-auto single-spot\"" >> "$output_file"
    echo "    picture=\"$filename\"" >> "$output_file"
    echo "    parrafo=\"Carta $index\"" >> "$output_file"
    echo "    :header=\"{" >> "$output_file"
    echo "        name: '$filename'," >> "$output_file"
    echo "        picture: '$filename'," >> "$output_file"
    echo "    }\"" >> "$output_file"
    echo "    :likes=\"true\"" >> "$output_file"
    echo "/>" >> "$output_file"
    ((index++))
done < nombres.txt

echo "Component names written to '$output_file'"
