<?php
include("dbh.inc.php");
if(isset($_POST['adopt_cat'])) {
  $adopt_name = mysqli_real_escape_string($conn,$_POST['adopt_name']);
  $kind = mysqli_real_escape_string($conn,$_POST['kind']);
  $other1 = mysqli_real_escape_string($conn,$_POST['other1']);
  $other2 = mysqli_real_escape_string($conn,$_POST['other2']);
  $adopt_email = mysqli_real_escape_string($conn,$_POST['adopt_email']);
  $adopt_address = mysqli_real_escape_string($conn,$_POST['adopt_address']);
  $adopt_tel1 = mysqli_real_escape_string($conn,$_POST['adopt_tel1']);
  $adopt_tel2 = mysqli_real_escape_string($conn,$_POST['adopt_tel2']);
  $fk_cat_id = mysqli_real_escape_string($conn,$_POST['cat_id']);

  $sql = "INSERT INTO adaption (name,kind,other_pets,kind_of_pets,email,address,telephone_number1,telephone_number2,fk_cat_id,verify)
  VALUES ('$adopt_name','$kind','$other1','$other2','$adopt_email','$adopt_address','$adopt_tel1','$adopt_tel2','$fk_cat_id',2)";
  if (mysqli_query($conn, $sql)) {
    //mail($adopt_email,"Thank you for your request.","Thank you for your request. We will contact you soon.", "Web Útulok Piešťany");
    mail("janatalavaskova@gmail.com","Nová žiadosť o adopciu.","Bola prijatá nová žiadosť o adopciu, skontrolujte svoj Admin.) ", "Web Útulok Piešťany");
   header("Location: ../cats.php?success_adopt");
 } else {
   echo "<br><br><br><br><div class='mt-4 alert alert-danger alert-dismissible fade show' role='alert'>
          <strong>There is a problem: ".mysqli_error($conn)."</strong>
          <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
            <span aria-hidden='true'>&times;</span>
          </button>
        </div>";
 }
}

if(isset($_POST['adopt_dog'])) {
  $adopt_name = mysqli_real_escape_string($conn,$_POST['adopt_name']);
  $kind = mysqli_real_escape_string($conn,$_POST['kind']);
  $other1 = mysqli_real_escape_string($conn,$_POST['other1']);
  $other2 = mysqli_real_escape_string($conn,$_POST['other2']);
  $adopt_email =mysqli_real_escape_string($conn, $_POST['adopt_email']);
  $adopt_address = mysqli_real_escape_string($conn,$_POST['adopt_address']);
  $adopt_tel1 = mysqli_real_escape_string($conn,$_POST['adopt_tel1']);
  $adopt_tel2 = mysqli_real_escape_string($conn,$_POST['adopt_tel2']);
  $fk_dog_id = mysqli_real_escape_string($conn,$_POST['dog_id']);

  $sql = "INSERT INTO adaption (name,kind,other_pets,kind_of_pets,email,address,telephone_number1,telephone_number2,fk_dog_id,verify)
  VALUES ('$adopt_name','$kind','$other1','$other2','$adopt_email','$adopt_address','$adopt_tel1','$adopt_tel2','$fk_dog_id',2)";
  if (mysqli_query($conn, $sql)) {
    //mail($adopt_email,"Thank you for your request.","Thank you for your request. We will contact you soon.", "Web Útulok Piešťany");
    mail("janatalavaskova@gmail.com","Nová žiadosť o adopciu.","Bola prijatá nová žiadosť o adopciu, skontrolujte svoj Admin.) ", "Web Útulok Piešťany");
 header("Location: ../dogs.php?success_adopt");
 } else {
  echo "<br><br><br><br><div class='mt-4 alert alert-danger alert-dismissible fade show' role='alert'>
          <strong>There is a problem: ".mysqli_error($conn)."</strong>
          <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
            <span aria-hidden='true'>&times;</span>
          </button>
        </div>";
 }
}
 ?>