#!/bin/bash

# Directorio de la carpeta
carpeta="leosella0071"

# Crear la carpeta "img" si no existe
mkdir -p img

# Obtener la lista de archivos con extensión .jpg en la carpeta específica
jpg_files=$(ls -1 "$carpeta"/*.jpg 2>/dev/null)

# Verificar si se encontraron archivos .jpg
if [ -z "$jpg_files" ]; then
  echo "No se encontraron archivos .jpg en la carpeta $carpeta."
  exit 1
fi

# Mover los archivos .jpg a la carpeta "img"
cp $jpg_files img/

echo "Archivos .jpg movidos a la carpeta 'img'."
