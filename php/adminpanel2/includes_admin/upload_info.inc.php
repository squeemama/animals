<?php
require_once 'dbh.inc.php';

if(isset($_POST['upload_info'])) {

$title_sk =  mysqli_real_escape_string($conn,$_POST['title_sk']);
$title_en =  mysqli_real_escape_string($conn,$_POST['title_en']);
$title_de =  mysqli_real_escape_string($conn,$_POST['title_de']);
$text_sk =  mysqli_real_escape_string($conn,$_POST['text_sk']);
$text_en =  mysqli_real_escape_string($conn,$_POST['text_en']);
$text_de =  mysqli_real_escape_string($conn,$_POST['text_de']);
    
    $sql = "INSERT INTO info (info_title_sk,info_text_sk,info_title_en,info_text_en,info_title_de,info_text_de )
    VALUES ('$title_sk','$text_sk','$title_en','$text_en','$title_de','$text_de')";
    if (mysqli_query($conn, $sql)) {
   header("Location: ../upload_info.php?success");
 } else {
   echo "Record creation error for: " . $sql . "\n" . mysqli_error($conn);
 }
}
   
?>

