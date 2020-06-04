<?php
if (!empty($_SERVER['HTTP_CLIENT_IP']))
    {
      $add = $_SERVER['HTTP_CLIENT_IP']."\r\n";

    }
elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))
    {
      $add = $_SERVER['HTTP_X_FORWARDED_FOR']."\r\n";

    }
else
    {
      $add = $_SERVER['REMOTE_ADDR']."\r\n";

    }
$agent = "User-Agent: ";
$nav = $_SERVER['HTTP_USER_AGENT'];
$file = fopen('foundip.txt', 'a') or die('Intentalo nuevamente');
$co = "=======================================================\n";
$cl = "=======================================================\n";
$ip = "IP: $add\n";

$us = "User-Agent: $nav\n";
fwrite($file, "\n". $co. "\n". $ip. $us. $cl);
fclose($file);
