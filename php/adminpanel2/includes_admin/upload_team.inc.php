<?php
require_once 'dbh.inc.php';

if(isset($_POST['upload_team'])) {

    $name =mysqli_real_escape_string($conn, $_POST['name']);
    $position_sk =mysqli_real_escape_string($conn, $_POST['position_sk']);
    $description_sk =mysqli_real_escape_string($conn, $_POST['desc_sk']);
    $position_en =mysqli_real_escape_string($conn, $_POST['position_en']);
    $description_en =mysqli_real_escape_string($conn, $_POST['desc_en']);
    $position_de =mysqli_real_escape_string($conn, $_POST['position_de']);
    $description_de =mysqli_real_escape_string($conn, $_POST['desc_de']);
    
    $sql = "INSERT INTO team (name,position_sk,description_sk,position_en,description_en,position_de,description_de )
    VALUES ('$name','$position_sk','$description_sk','$position_en','$description_en','$position_de','$description_de')";
    if (mysqli_query($conn, $sql)) {
   header("Location: ../image_upload_team.php");
 } else {
   echo "Record creation error for: " . $sql . "\n" . mysqli_error($conn);
 }
}
   
?>

