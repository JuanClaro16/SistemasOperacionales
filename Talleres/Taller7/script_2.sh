#!/bin/bash

# Verificamos que se hayan pasado los tres argumentos necesarios
if [ "$#" -ne 3 ]; then
  echo "Uso: $0 permisos usuario grupo"
  exit 1
fi

# Asignamos los argumentos a variables
permisos="$1"
usuario="$2"
grupo="$3"

# Verificamos que el archivo exista
if [ ! -f "archivo.txt" ]; then
  echo "El archivo no existe."
  exit 1
fi

# Modificamos los permisos, usuario y grupo del archivo
chown "$usuario:$grupo" archivo.txt
chmod "$permisos" archivo.txt

# Mostramos un mensaje de confirmación
echo "Los permisos, usuario y grupo del archivo se han modificado correctamente."
