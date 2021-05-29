<?php

if (!empty($_SERVER['HTTP_CLIENT_IP']))
    {
      $ipo = $_SERVER['HTTP_CLIENT_IP']."\r\n";
    }
elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))
    {
      $ipo = $_SERVER['HTTP_X_FORWARDED_FOR']."\r\n";
    }
else
    {
      $ipo = $_SERVER['REMOTE_ADDR']."\r\n";
    }
$agent = " User-Agent: ";
$nav = $_SERVER['HTTP_USER_AGENT'];

$file = fopen('foundip.txt', 'a') or die('Intentalo nuevamente');
$co = "=======================================================\n";
$cl = "=======================================================\n";
$ip = "IP: $ipo\n";
$us = "User-Agent: $nav\n";
fwrite($file, "\n". $co. $ip. $us. $cl);
fclose($file);

