#!/bin/bash

# Directorio en el que se buscarán los archivos
directorio="/ruta/al/directorio"
archivos=$(find "$directorio-type f \( -name "*.txt" -o -name "*.jpg" -o -name "*.png"\))
echo "Archivos encontrados:"
echo $archivos
