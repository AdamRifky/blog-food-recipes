<?php

$hostname = "localhost";
$username = "root";
$password = "";
$database_name = "db_food_blog";

$db = mysqli_connect($hostname, $username, $password, $database_name);

if($db->connect_error){
    echo "Connetion Database Failed";
    die("error!");
}

?>