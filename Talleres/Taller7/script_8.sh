#!/bin/bash

# Ruta y nombre del archivo de log
log_file="/ruta/al/archivo.log"

# Tamaño máximo del archivo en bytes
max_size=1000000 # 1 MB

# Comprobar el tamaño del archivo
size=$(stat -c%s "$log_file")
if [[ $size -gt $max_size ]]; then
  # Si el archivo supera el tamaño máximo, comprimirlo
  gzip "$log_file"
  # Crear un nuevo archivo de log vacío
  > "$log_file"
fi
