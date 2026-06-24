#!/bin/bash

echo "Aplicando medidas de defensa..."

# Eliminar reglas anteriores para evitar duplicados
iptables -D INPUT -p tcp --syn --dport 80 -m limit --limit 10/s -j ACCEPT 2>/dev/null
iptables -D INPUT -p tcp --syn --dport 80 -j DROP 2>/dev/null
iptables -D INPUT -p tcp --dport 80 -m string --string "db.sql" --algo bm -j DROP 2>/dev/null

# Mitigar SYN Flood
iptables -A INPUT -p tcp --syn --dport 80 -m limit --limit 10/s -j ACCEPT
iptables -A INPUT -p tcp --syn --dport 80 -j DROP

# Bloquear descargas de db.sql
iptables -A INPUT -p tcp --dport 80 -m string --string "db.sql" --algo bm -j DROP

echo "Defensa aplicada correctamente."