<?php 


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "shelterlegacy";

// echo"\n\n-----------------------------------------".$_SERVER['PHP_SELF']." --------dbname:".$dbname."----db2:".$db2."---------\r\n";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
   die("Connection failed: " . mysqli_connect_error() . "\n");
}

?>