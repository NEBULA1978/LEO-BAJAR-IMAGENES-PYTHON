#!/bin/bash

count=1
for file in *.jpg *.png *.svg; do
    if [ -f "$file" ]; then
        new_name="imagen$count.${file##*.}"  # Construir el nuevo nombre
        mv "$file" "$new_name"               # Renombrar la imagen
        echo "Renombrando '$file' a '$new_name'"
        ((count++))
    fi
done
