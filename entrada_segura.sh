#!/bin/bash

# Aquest bloc es repeteix fins que l'usuari introdueix una ruta que existeixi.
ruta=""
until [ -e "$ruta" ]
do
    read -p "Introdueix una ruta existent (o escriu 'sortir'): " ruta

    if [ "$ruta" = "sortir" ]; then
        echo "Sortint de l'script..."
        exit 0
    fi

    if [ ! -e "$ruta" ]; then
        echo "La ruta no és vàlida, torna-ho a intentar."
    fi
done

echo "Ruta vàlida: $ruta"

# Aquest bloc es repeteix fins que l'usuari introdueix un número enter.
num=""
until [[ "$num" =~ ^[0-9]+$ ]]
do
    read -p "Introdueix un número per al compte enrere: " num

    if [[ ! "$num" =~ ^[0-9]+$ ]]; then
        echo "Error: has d'introduir un valor numèric enter."
    fi
done

# Aquest bloc s'executa mentre el número sigui més gran o igual que zero.
while [ "$num" -ge 0 ]
do
    echo "Processant l'element en $num segons..."
    sleep 1
    num=$((num - 1))
done

echo "Procés finalitzat."
