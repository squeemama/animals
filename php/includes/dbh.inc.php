<?php
if(isset($_COOKIE['lang2'])){
	$x = $_COOKIE['lang2'];
} else {
	$x = 'sk';
}
if($_SESSION["lang2"]=== "eng"){
	$x = 'en';
}elseif($_SESSION["lang2"]=== "ger"){
	$x = 'de';
}elseif($_SESSION["lang2"]=== "slo"){
	$x = 'sk';
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "shelterlegacy";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
   die("Connection failed: " . mysqli_connect_error() . "\n");
}

?>

