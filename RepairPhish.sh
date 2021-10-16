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

trap ctrl_c 2
function ctrl_c {
echo 
echo -e $verde"[+]$blanco Finalizado"
echo -e $verde"[+]$blanco Created by @EdgarLuck"
echo -e $verde"[+]$blanco Contacta https://t.me/EdgarLuck" 
echo
echo
exit
}

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

command -v cowsay > /dev/null 2>&1 || { sleep 0.5; echo >&2 -e "$verde[$blanco*$verde]$blanco Instalando cowsay..."; pkg install cowsay -y &>> /dev/null;sleep 3;}

command -v cowsay > /dev/null 2>&1 || { sleep 0.5; echo>&2 -e "$verde[$blanco*$verde]$blanco Verificando otravez cowsay...";sleep 3;} 

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
#################

## RUTAS

edgar=/data/data/com.termux/files/home
luck=/data/data/com.termux/files/home/CamPhish
#################


function next {

                cd 
		cd CamPhish
		rm camphish.sh 
		cd
		cd
                cd Repair2
                chmod 711 camphish.sh
                cp camphish.sh $HOME
                cd
                mv camphish.sh CamPhish
                cd
                echo -e "$verde[$blanco*$verde]$blanco Procesando..."
                sleep 3
                echo -e "$verde[$blanco*$verde]$blanco Proceso terminado"
                sleep 3
                echo -e "$verde[$blancoπ$verde]$blanco code by edgarluck"
	}
case ${opcion} in

	1)
		echo -e "${verde}[$blanco*$verde]$blanco Iniciando Proceso..."
		sleep 4.5
		cd
if [ -e $edgar/CamPhish ]; then
	echo -e "$verde[ 🔍$verde ]$blanco Buscando el directorio...📂"
	sleep 3
	echo -e "$verde[ 🔍$verde ]$blanco Directorio encontrado .. 📂"
	sleep 3
else
	clear
	echo 
	echo -e $amarillo"[$rojo!$amarillo]$blanco Error falta clonar CamPhish desde 0  :( " 
	echo -e $amarillo"[$rojo!$amarillo]$blanco o c
ontacta https://t.me/EdgarLuck" 
exit
fi
if [ -e $luck/camphish.sh ]; then
	echo -e "$verde[ 🔍$verde ]$blanco Buscando el archivo...📄"
	sleep 3
	echo -e "$verde[ 🔍$verde ]$blanco Archivo encontrado .. 📄"
	sleep 3
	next
	exit
else
        clear
        echo
        echo -e $amarillo"[$rojo!$amarillo]$blanco Error falta un archivo 📄 :( "
        echo -e $amarillo"[$rojo!$amarillo]$blanco o contacta https://t.me/EdgarLuck"
        exit
fi
;;
		
	2)
		echo "     Descarga CamPhish primero para continuar con el proceso"
		echo "     Este es el enlace git:

---> https://github.com/techchipnet/CamPhish"
                echo ""

                echo "     Clonalo en otra session en la ruta home con el siguiente comando:

---> git clone https://github.com/techchipnet/CamPhish
"
;;	
esac
