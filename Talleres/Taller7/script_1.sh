#!/bin/bash

comands="$HOME/.bash_history"
sorted_comands = $(cat "comands" | sort | uniq -c)
echo "$sorted_comands"
