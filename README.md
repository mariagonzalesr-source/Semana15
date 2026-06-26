# Laboratorio 15: Troubleshooting y Mitigación de Ataques en Apache
Integrante:Gonzales Relaiza, María del Milagro  
Curso: Sistemas Operativos de Código Abierto  

## Descripción
Este repositorio contiene la evidencia y los scripts desarrollados para diagnosticar y mitigar un ataque de Denegación de Servicio (SYN Flood y HTTP Flood) en un servidor web Apache.

## Archivos incluidos
- defensa.sh: Script de mitigación que aplica Rate Limiting y filtrado de cadenas.
- reset_lab.sh: Script de restauración para limpiar el entorno y volver al estado inicial.


## Instrucciones de uso
1. Otorgar permisos de ejecución: `chmod +x defensa.sh reset_lab.sh`
2. Ejecutar la defensa: `sudo ./defensa.sh`
3. Restaurar el entorno: `sudo ./reset_lab.sh`
