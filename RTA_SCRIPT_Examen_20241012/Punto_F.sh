#! /bin/bash

mkdir -p ../RTA_ARCHIVOS_Examen_20241012/
cd ../RTA_ARCHIVOS_Examen_20241012/
curl -s ifconfig.me | awk -F 'v' '{print"Mi IP Publica es: "$1}' > Filtro_Avanzado.txt
echo Mi usuario es: $(whoami) >> Filtro_Avanzado.txt
echo El Hash de mi usuario es: $(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}') >> Filtro_Avanzado.txt
echo El URL de mi repositorio es: $(git remote get-url origin) >> Filtro_Avanzado.txt
