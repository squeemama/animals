<?php 
	include_once "dbh.inc.php";
	
	if(isset($_POST['edit_mission'])) {
  $mission_id = $_POST['edit_mission'];
$title_sk = mysqli_real_escape_string($conn,$_POST['title_sk']);
$text_sk = mysqli_real_escape_string($conn,$_POST['text_sk']);
$title_en = mysqli_real_escape_string($conn,$_POST['title_en']);
$text_en = mysqli_real_escape_string($conn,$_POST['text_en']);
$title_de = mysqli_real_escape_string($conn,$_POST['title_de']);
$text_de = mysqli_real_escape_string($conn,$_POST['text_de']);
  $sql = "UPDATE `mission` SET 
  `mission_title_sk` = '$title_sk', `mission_text_sk` = '$text_sk', 
  `mission_title_en` = '$title_en', `mission_text_en` = '$text_en', 
  `mission_title_de` = '$title_de', `mission_text_de` = '$text_de'
  WHERE mission_id='$mission_id'";

  if (mysqli_query($conn, $sql)) {
   header('location: ../edit_mission.php?success');
 } else {
   echo "Edit error for: " . $sql . "\n" . mysqli_error($conn);
 }
}
?>