<?php  
include_once "dbh.inc.php";
if (isset($_GET['success'])) {
//   echo "<div class='alert alert-success alert-dismissible fade show' role='alert'>
//   <strong>Verificated successfully!</strong>
//   <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
//     <span aria-hidden='true'>&times;</span>
//   </button>
// </div>";
      }

if(isset($_POST['verify'])) {
  $adoption_id = $_POST['sup_id'];

  $sql = "UPDATE adaption SET verify = 1 
  			WHERE adoption_id='$adoption_id'";
  if (mysqli_query($conn, $sql)) {
  header ("Location:verify_adopter.php?success");
   
 } else {
   echo "Record creation error for: " . $sql . "\n" . mysqli_error($conn);
 }
}
if (isset($_GET['del'])) {
	$id = $_GET['del'];
	mysqli_query($conn, "DELETE FROM adaption WHERE adoption_id=$id");
	$_SESSION['message'] = '<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-danger" role="alert">
                    User deleted!
                    </div>
                </div>
            </div>  
        </div>'; 
	header('location: verify_adopter.php');
}


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
  $_SESSION['message'] = '<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-success" role="alert">
                    Success!
                    </div>
                </div>
            </div>  
        </div>'; 
   
 } else {
   $_SESSION['message'] = '<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-danger" role="alert">
                    Failed!
                    </div>
                </div>
            </div>  
        </div>'; 
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
  $_SESSION['message'] = '<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-success" role="alert">
                    Success!
                    </div>
                </div>
            </div>  
        </div>'; 
   
 } else {
   $_SESSION['message'] = '<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-danger" role="alert">
                    Failed!
                    </div>
                </div>
            </div>  
        </div>'; 
 }
}
//SELECT * FROM adaption
// 		LEFT JOIN cat ON adaption.fk_cat_id = cat.cat_id
// 		LEFT JOIN dog ON adaption.fk_dog_id = dog.dog_id
//		JOIN supporter ON supporter.fk_cat_id = cat.cat_id OR supporter.fk_dog_id = dog.dog_id
// 		WHERE adaption.verify = 2 AND supporter.verify = 1
?>


