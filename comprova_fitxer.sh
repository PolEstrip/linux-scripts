#!/bin/bash

# Demanar a l'usuari la ruta d'un fitxer o directori
read -p "Introdueix la ruta d'un fitxer o directori: " ruta

# Comprovar si l'usuari ha deixat la variable buida
if [ -z "$ruta" ]; then
    echo "No has introduït cap ruta"
    exit 1
fi

# Comprovar si la ruta existeix al sistema
if [ -e "$ruta" ]; then

    # Comprovar si l'element és un fitxer regular
    if [ -f "$ruta" ]; then
        tipus="fitxer"

    # Comprovar si l'element és un directori
    elif [ -d "$ruta" ]; then
        tipus="directori"

    # En cas que existeixi però no sigui ni fitxer regular ni directori
    else
        tipus="altre tipus d'element"
    fi

    echo "L'element $ruta existeix i és un $tipus"

    # Comprovar si l'usuari actual té permisos de lectura
    if [ -r "$ruta" ]; then
        echo "Tens permisos per llegir aquest element"
    else
        echo "No tens permís de lectura"
    fi

else
    echo "Error: La ruta $ruta no es troba en el sistema"
fi
