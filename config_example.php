<?php 
define('HOST', 'localhost');
define('PORT', '3306');
define('DB', 'smdb');
define('USER', 'root');
define('PASS', '1234');

function dump($txt){
    echo "<pre>";
    var_dump($txt);
    echo "</pre>";
}

$dbi = new mysqli(HOST,USER,PASS,DB);
$dbi->query("SET NAMES UTF8");