#!/bin/bash

# Directorio objetivo (puedes cambiarlo según necesites)
TARGET_DIR="./ruta/a/la/carpeta"

# Variables para los nombres a reemplazar
OLD_NAME="klarna"
NEW_NAME="culqi"

# Verifica si el directorio existe
if [ ! -d "$TARGET_DIR" ]; then
  echo "El directorio $TARGET_DIR no existe."
  exit 1
fi

# Reemplazar "$OLD_NAME" por "$NEW_NAME" en los nombres de los archivos
for file in "$TARGET_DIR"/*"$OLD_NAME"*; do
  if [ -e "$file" ]; then
    new_name=$(echo "$file" | sed "s/$OLD_NAME/$NEW_NAME/g")
    mv "$file" "$new_name"
  fi
done

echo "Renombrado completado."