#!/bin/bash

# Agregar tarea programada para script7 cada 5 minutos
echo "*/5 * * * * /ruta/al/script7.sh" | crontab -

# Agregar tarea programada para script8 cada minuto
echo "* * * * * /ruta/al/script8.sh" | crontab -
