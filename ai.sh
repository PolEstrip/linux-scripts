#!/bin/bash
# ai.sh - Script per actualitzar el sistema i instal·lar paquets rebuts per paràmetre
# Activitat: M6_0374 Administració SO - RA7. Guions d'script A03 Paràmetres

# Comprovació de paràmetres
# $# conté el nombre de paràmetres passats a l'script
if [ $# -eq 0 ]; then
    echo "Error: No s'ha indicat cap paquet."
    echo "Ús: ./ai.sh paquet1 paquet2 ..."
    exit 1
fi

# $@ conté TOTS els paràmetres passats a l'script
PAQUETS="$@"

echo "========================================"
echo "   Paràmetres rebuts"
echo "========================================"
echo "[INFO] Nombre de paquets: $#"
echo "[INFO] Paquets a instal·lar: $PAQUETS"

echo "========================================"
echo "   Actualització del sistema"
echo "========================================"

# Actualització de la llista de paquets
echo "[INFO] Executant: apt update"
sudo apt update

echo "========================================"
echo "   Actualització dels paquets instal·lats"
echo "========================================"

# Actualització dels paquets instal·lats
echo "[INFO] Executant: apt upgrade -y"
sudo apt upgrade -y

echo "========================================"
echo "   Instal·lació de paquets"
echo "========================================"
echo "[INFO] Executant: apt install -y $PAQUETS"

# Instal·lació dels paquets passats per paràmetre
sudo apt install -y $PAQUETS

echo "========================================"
echo "   Procés completat"
echo "========================================"
echo "[OK] El sistema s'ha actualitzat i els paquets indicats com a paràmetres s'han instal·lat (si no ho estaven)."
