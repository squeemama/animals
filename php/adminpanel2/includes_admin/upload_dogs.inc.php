<?php 
include_once("dbh.inc.php");

if(isset($_POST['upload_dog_table'])) {
  $dog_name = mysqli_real_escape_string($conn, $_POST['dog_name']);
  $type_sk =  mysqli_real_escape_string($conn, $_POST['type_sk']);
  $type_en =  mysqli_real_escape_string($conn, $_POST['type_en']);
  $type_de =  mysqli_real_escape_string($conn, $_POST['type_de']);
  $desc_sk = mysqli_real_escape_string($conn, $_POST['desc_sk']);
  $desc_de = mysqli_real_escape_string($conn, $_POST['desc_de']);
  $desc_en = mysqli_real_escape_string($conn, $_POST['desc_en']);
  $weight = mysqli_real_escape_string($conn, $_POST['weight']);
  $height = mysqli_real_escape_string($conn, $_POST['height']);
  $dog_id_old = $_POST['dog_id_old'];
  $castration = $_POST['castration'];
  $born_date = $_POST['born_date'];
  $gender = $_POST['gender'];

  $sql = "INSERT INTO dog (dog_name,born_date,castration,height,weight,dog_desc_sk,dog_desc_de,dog_desc_en,type_sk,type_en,type_de,gender,in_memoriam,dog_id_old)
  VALUES ('$dog_name', '$born_date', '$castration', '$height', '$weight','$desc_sk', '$desc_de', '$desc_en', '$type_sk','$type_en','$type_de','$gender',1,'$dog_id_old')
  ";
  if (mysqli_query($conn, $sql)) {
   header("Location: ../image_upload_dog.php");
 } else {
   echo "Record creation error for: " . $sql . "\n" . mysqli_error($conn);
 }

}


 ?>