#!/bin/bash
set -euo pipefail

echo "Restaurando el entorno del laboratorio..."

# Limpiar todas las reglas de iptables aplicadas (borra el firewall)
iptables -F
iptables -X

# Reiniciar Apache para liberar memoria y conexiones atascadas
sudo systemctl restart apache2

echo "Entorno restaurado correctamente."