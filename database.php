<?php

$hostname = "localhost";
$username = "root2";
$password = "1q2w3e4r";
$database_name = "db_food_blog";

$db = mysqli_connect($hostname, $username, $password, $database_name);

if($db->connect_error){
    echo "Connetion Database Failed";
    die("error!");
}

?>
