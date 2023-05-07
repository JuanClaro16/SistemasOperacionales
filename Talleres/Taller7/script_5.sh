#!/bin/bash

# Verificamos que se hayan pasado dos argumentos
if [ "$#" -ne 2 ]; then
  echo "Uso: $0 archivo1 archivo2"
  exit 1
fi

# Asignamos los argumentos a variables
archivo1="$1"
archivo2="$2"

# Mostramos el tipo de archivo para ambos archivos
echo "Tipo de archivo para $archivo1:"
file "$archivo1"
echo "Tipo de archivo para $archivo2:"
file "$archivo2"

# Comparamos los archivos a nivel de bytes
if cmp -s "$archivo1" "$archivo2"; then
  echo "Los archivos son iguales a nivel de bytes."
else
  echo "Los archivos son diferentes a nivel de bytes."
fi

# Contamos el número de líneas en cada archivo
lineas_archivo1=$(wc -l < "$archivo1")
lineas_archivo2=$(wc -l < "$archivo2")

# Mostramos el número de líneas para ambos archivos
echo "Número de líneas en $archivo1: $lineas_archivo1"
echo "Número de líneas en $archivo2: $lineas_archivo2"

# Comparamos los archivos a nivel de líneas utilizando el comando "diff"
echo "Diferencias entre $archivo1 y $archivo2:"
diff "$archivo1" "$archivo2"
