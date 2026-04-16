#!/bin/bash
# i.sh - Script per actualitzar el sistema i instal·lar paquets utilitzant variables
# Activitat: M6_0374 Administració SO - RA7. Guions d'script A02 Variables

# Variable amb la llista de paquets a instal·lar
PAQUETS="vim git curl"

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
echo "[INFO] Paquets a instal·lar: $PAQUETS"

# Instal·lació dels paquets definits a la variable
echo "[INFO] Executant: apt install -y $PAQUETS"
sudo apt install -y $PAQUETS

echo "========================================"
echo "   Procés completat"
echo "========================================"
echo "[OK] El sistema s'ha actualitzat i els paquets definits s'han instal·lat (si no ho estaven)."
