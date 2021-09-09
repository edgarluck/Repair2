#!/bin/bash

# code by edgarluck

# COLORES

verde='\033[32m'
amarillo='\033[33m'
magenta='\033[1;35m'
rojo='\033[31m'
blanco='\033[37m'
cyan='\033[1;36m'

clear

##### Repair

SYSTEM=(uname -o)
if [ "${SYSTEM}" == "Android" ]; then
        BIN="/data/data/com.termux/files/usr/bin"
        APT="pkg"
else
        BIN="/bin"
        APT="apt-get"
fi

command -v cowsay > /dev/null 2>&1 || { sleep 0.5; echo>&2 -e "$verde[$blanco*$verde]$blanco Verificando cowsay...";sleep 3;}

VERIFICAR_cowsay=$(ps aux | grep -o "cowsay" | head -n1)
if [[ $VERIFICAR_cowsay == *'cowsay'* ]]; then
        pkill -f -2 cowsay > /dev/null 2>&1
        killall -2 cowsay > /dev/null 2>&1
fi

command -v cowsay > /dev/null 2>&1 || { sleep 0.5; echo >&2 -e "$verde[$blanco*$verde]$blanco Instalando cowsay..."; pkg install cowsay -y &>> /dev/null;sleep 3;}

sleep 2

while :
do
echo -e ${cyan}""
cowsay Esto solo Funciona con el script de CamPhish ¿ Usted tiene descargado CamPhish?

echo -e ${verde}"             ++++++++++++++++"
echo -e ${blanco}"             Elige una opcion${verde}
             ++++++++++++++++${verde}
        ["${blanco}1${verde}]${blanco} Si.${verde}
echo -e ${verde}"        [${blanco}2${verde}]${rojo} No."${cyan}

echo ""
echo -e -n "# > ${blanco} "
read -r opcion

[ "$opcion" == "1" ]||[ "$opcion" == "2" ] && break

echo -e "${rojo}[-]${blanco} Opcion incorrecta..."
sleep 2
clear
done

case ${opcion} in

	1)
		echo -e "${verde}[$blanco*$verde]$blanco Iniciando Proceso..."
		sleep 3
		cd
		cd CamPhish
		rm camphish.sh
		cd
		cd Repair2
		cp camphish.sh $HOME
		cd
		chmod 711 camphish.sh
		mv camphish.sh CamPhish
		cd
                echo -e "$verde[$blanco*$verde]$blanco Procesando..."
		sleep 3
		echo -e "$verde[$blanco*$verde]$blanco Proceso terminado"
		sleep 3
		echo -e "$verde[$blancoπ$verde]$blanco code by edgarluck"
		;;
	2)

		echo "     Descarga CamPhish primero para continuar con el proceso"
		echo "     Este es el enlace git:

---> https://github.com/techchipnet/CamPhish"
                echo ""

                echo "     clonalo en otra session con el siguiente comando:

---> git clone https://github.com/techchipnet/CamPhish
"
esac
