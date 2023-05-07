#!/bin/bash

# Obtener la fecha y hora actual
fecha=$(date +"%Y-%m-%d %T")

# Obtener el nombre del host
hostname=$(hostname)

# Obtener la carga del sistema
load=$(uptime | awk '{print $10 $11 $12}')

# Obtener la memoria libre
free=$(free | awk '/Mem/{print $4}')

# Escribir la línea en el archivo de log
echo "$fecha $hostname Load: $load Free Memory: $free" >> /ruta/al/archivo.log
