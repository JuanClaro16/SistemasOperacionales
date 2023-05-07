#!/bin/bash

# Agregar tarea programada para script7
echo "*/5 * * * * /ruta/al/script7.sh" | crontab -

# Agregar tarea programada para script8
echo "* * * * * /ruta/al/script8.sh" | crontab -
