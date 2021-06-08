<?php 
include_once "dbh.inc.php";

if(isset($_POST['edit_help'])) {
$help_id = $_POST['edit_help'];
$title_sk =  mysqli_real_escape_string($conn,$_POST['title_sk']);
$text_sk =  mysqli_real_escape_string($conn,$_POST['text_sk']);
$title_en =  mysqli_real_escape_string($conn,$_POST['title_en']);
$text_en =  mysqli_real_escape_string($conn,$_POST['text_en']);
$title_de =  mysqli_real_escape_string($conn,$_POST['title_de']);
$text_de =  mysqli_real_escape_string($conn,$_POST['text_de']);

mysqli_query($conn, "UPDATE `help_us` SET 
`help_title_sk` = '$title_sk', `help_text_sk` = '$text_sk',
`help_title_en` = '$title_en', `help_text_en` = '$text_en',
`help_title_de` = '$title_de', `help_text_de` = '$text_de'
WHERE help_id=$help_id");
header('location: ../edit_help.php?success');

}
?>
