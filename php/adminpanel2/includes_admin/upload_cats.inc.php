<?php 
include("dbh.inc.php");

if(isset($_POST['upload_cat_table'])) {
  $cat_name = mysqli_real_escape_string($conn, $_POST['cat_name']);
  $type_sk =  mysqli_real_escape_string($conn, $_POST['type_sk']);
  $type_en =  mysqli_real_escape_string($conn, $_POST['type_en']);
  $type_de =  mysqli_real_escape_string($conn, $_POST['type_de']);
  $desc_sk = mysqli_real_escape_string($conn, $_POST['desc_sk']);
  $desc_de = mysqli_real_escape_string($conn, $_POST['desc_de']);
  $desc_en = mysqli_real_escape_string($conn, $_POST['desc_en']);
  $weight = mysqli_real_escape_string($conn, $_POST['weight']);
  $height = mysqli_real_escape_string($conn, $_POST['height']);
  $castration = $_POST['castration'];
  $cat_id_old = $_POST['cat_id_old'];
  $born_date =$_POST['born_date'];
  $gender = $_POST['gender'];

  $sql = "INSERT INTO cat (cat_name,born_date,castration,height,weight,cat_desc_sk,cat_desc_de,cat_desc_en,type_sk,type_en,type_de,gender,in_memoriam,cat_id_old)
  VALUES ('$cat_name', '$born_date', '$castration', '$height', '$weight','$desc_sk','$desc_de','$desc_en','$type_sk','$type_en','$type_de','$gender',1,'$cat_id_old')
  ";
  if (mysqli_query($conn, $sql)) {
   header("Location: ../image_upload_cat.php");
 } else {
   echo "Record creation error for: " . $sql . "\n" . mysqli_error($conn);
 }
}
 ?>