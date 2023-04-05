#!/bin/bash


archivo_suma="suma.txt"

# Leer el contenido de los archivos
contenido1=($(cat nueva_carpeta/archivo01.txt))
contenido2=($(cat nueva_carpeta/archivo02.txt))

# Sumar los contenidos
suma=$((contenido1 + contenido2))

# Guardar el resultado en un archivo
echo "$suma" > "$archivo_suma"
