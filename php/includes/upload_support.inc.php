<?php 
include("dbh.inc.php");
if(isset($_POST['support_cat'])) {
  $support_name = mysqli_real_escape_string($conn,$_POST['support_name']);
  $support_email = mysqli_real_escape_string($conn,$_POST['support_email']);
  $support_zip = mysqli_real_escape_string($conn,$_POST['support_zip']);
  $support_city = mysqli_real_escape_string($conn,$_POST['support_city']);
  $support_street = mysqli_real_escape_string($conn,$_POST['support_street']);
  $support_tel = mysqli_real_escape_string($conn,$_POST['support_tel']);
  $support_anonym = $_POST['support_anonym'];
  $fk_cat_id = $_POST['cat_id'];
  $sql = "INSERT INTO supporter (name, email, zip, city, street, tel, fk_cat_id, verify, anonym)
  VALUES ('$support_name','$support_email','$support_zip','$support_city','$support_street','$support_tel','$fk_cat_id',2, $support_anonym)";
  if (mysqli_query($conn, $sql)) {
    mail("janatalavaskova@gmail.com","Nová žiadosť o podporu.","Bola prijatá nová žiadosť o podporu, skontrolujte svoj Admin.) ", "Web Útulok Piešťany");
    header("Location: ../cats.php?success");
 } else {
   echo "Record creation error for: " . $sql . "\n" . mysqli_error($conn);
 }
}
if(isset($_POST['support_dog'])) {
  $support_name = mysqli_real_escape_string($conn,$_POST['support_name']);
  $support_email = mysqli_real_escape_string($conn,$_POST['support_email']);
  $support_zip = mysqli_real_escape_string($conn,$_POST['support_zip']);
  $support_city = mysqli_real_escape_string($conn,$_POST['support_city']);
  $support_street = mysqli_real_escape_string($conn,$_POST['support_street']);
  $support_tel = mysqli_real_escape_string($conn,$_POST['support_tel']);
  $support_anonym = $_POST['support_anonym'];
  $fk_dog_id = $_POST['dog_id'];
  $sql = "INSERT INTO supporter (name, email, zip, city, street, tel, fk_dog_id, verify, anonym)
  VALUES ('$support_name','$support_email','$support_zip','$support_city','$support_street','$support_tel','$fk_dog_id',2, $support_anonym)";
  if (mysqli_query($conn, $sql)) {
  mail("janatalavaskova@gmail.com","Nová žiadosť o podporu.","Bola prijatá nová žiadosť o podporu, skontrolujte svoj Admin.) ", "Web Útulok Piešťany");
header("Location: ../dogs.php?success");
 } else {
   echo "Record creation error for: " . $sql . "\n" . mysqli_error($conn);
 }
}?>