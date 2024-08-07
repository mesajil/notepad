# File Renaming Script

This bash script is designed to facilitate bulk renaming of files in a specific directory. Using user-defined variables, the script allows you to perform file name replacements in an efficient and automated manner. It is a useful tool for situations where file names need to be updated following a specific pattern, ensuring that the process is performed quickly and consistently. In addition, it includes checks to ensure that the target directory exists before making any changes, providing an additional layer of security and reliability in its use.

## Instrucciones

### Script para renombrar archivos en una carpeta específica

Este script en bash renombrará todos los archivos en un directorio específico, reemplazando "klarna" por "culqi" en los nombres de los archivos.

#### 1. Guardar el script

Guarda el script anterior en un archivo, por ejemplo, `rename_files.sh`.

#### 2. Hacer el script ejecutable

Abre una terminal y navega hasta la ubicación del archivo `rename_files.sh`. Luego, haz el archivo ejecutable con el comando:

```bash
chmod +x rename_files.sh
```

#### 3. Editar las variables

Abre el script `rename_files.sh` con un editor de texto y ajusta las variables `TARGET_DIR`, `OLD_NAME`, y `NEW_NAME` según sea necesario.

#### 4. Ejecutar el script

Ejecuta el script:

```bash
./rename_files.sh
```

### Sugerencias adicionales

**a.** Añadir argumentos de línea de comandos para los valores de las variables.

**b.** Crear un respaldo de los archivos originales antes de renombrarlos.

### Código del script

```bash
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
```
