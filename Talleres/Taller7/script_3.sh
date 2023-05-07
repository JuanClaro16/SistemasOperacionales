#!/bin/bash

# Se define el comando y el nombre del alias
alias_name="lsl"
alias_command="ls -l"

# Se agrega el alias al archivo de configuración bash
echo "alias $alias_name='$alias_command'" >> ~/.bashrc

# Carga el archivo
source ~/.bashrc

# Muestra un mensaje de confirmación
echo "Alias '$alias_name' creado correctamente"
