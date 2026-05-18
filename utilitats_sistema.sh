#!/bin/bash

# Funció: benvinguda
# Rep com a paràmetre el nom de l'alumne
# Mostra un missatge personalitzat de salutació
benvinguda() {
    local nom="$1"
    echo "Hola $nom, anem a comprovar el sistema"
}

# Funció: comprova_usuari
# Rep com a paràmetre un nom d'usuari
# Comprova si existeix dins del fitxer /etc/passwd
comprova_usuari() {
    local usuari="$1"

    if grep -q "^$usuari:" /etc/passwd; then
        echo "L'usuari '$usuari' existeix al sistema."
    else
        echo "L'usuari '$usuari' no existeix al sistema."
    fi
}

# Funció: calculadora_espai
# Mostra l'espai lliure de la partició principal /
calculadora_espai() {
    local particio="/"
    echo "Espai del sistema a la partició principal:"
    df -h "$particio"
}

# Lògica principal de l'script
read -p "Introdueix el teu nom: " nom_alumne
benvinguda "$nom_alumne"

read -p "Introdueix un nom d'usuari del sistema: " nom_usuari
comprova_usuari "$nom_usuari"

calculadora_espai
