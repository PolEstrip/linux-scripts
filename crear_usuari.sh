#!/bin/bash

# Neteja la pantalla per millor experiència d'usuari
clear

# Demanem el nom d'usuari
read -p "Introdueix el nom d'usuari: " USERNAME
if [ -z "$USERNAME" ]; then
    echo "Error: el nom d'usuari no pot estar buit."
    exit 1
fi

# Demanem el comentari / nom complet
read -p "Introdueix el nom complet o comentari: " COMMENT
if [ -z "$COMMENT" ]; then
    echo "Error: el comentari no pot estar buit."
    exit 1
fi

# Demanem el nom del grup
read -p "Introdueix el nom del grup: " GROUP
if [ -z "$GROUP" ]; then
    echo "Error: el nom del grup no pot estar buit."
    exit 1
fi

# Creem el grup si no existeix
groupadd "$GROUP" 2>/dev/null

# Creem l'usuari amb el comentari i el grup primari
useradd -c "$COMMENT" -g "$GROUP" "$USERNAME"

# Missatge de confirmació final
echo "L'usuari $USERNAME s'ha creat correctament dins del grup $GROUP"
