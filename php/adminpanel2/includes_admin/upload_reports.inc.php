<?php
require_once 'dbh.inc.php';

if(isset($_POST['upload_report'])) {

    $title_sk = mysqli_real_escape_string($conn, $_POST['title_sk']);
    $description_sk =mysqli_real_escape_string($conn, $_POST['desc_sk']);
    $title_en = mysqli_real_escape_string($conn, $_POST['title_en']);
    $description_en =mysqli_real_escape_string($conn, $_POST['desc_en']);
    $title_de = mysqli_real_escape_string($conn, $_POST['title_de']);
    $description_de =mysqli_real_escape_string($conn, $_POST['desc_de']);
    $reports_date =$_POST['reports_date'];
    $keywords =mysqli_real_escape_string($conn, $_POST['keywords']);
    
    $sql = "INSERT INTO reports (name_sk, reports_descriptions_sk, name_en, reports_descriptions_en,name_de, reports_descriptions_de,reports_date, keywords )
    VALUES ('$title_sk','$description_sk','$title_en','$description_en','$title_de','$description_de','$reports_date','$keywords')";
    if (mysqli_query($conn, $sql)) {
   header("Location: ../image_upload_reports.php");
 } else {
   echo "Record creation error for: " . $sql . "\n" . mysqli_error($conn);
 }
}
   
?>
