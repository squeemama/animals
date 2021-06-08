<?php 
include_once "dbh.inc.php";

if(isset($_POST['edit_support'])) {
$support_id = $_POST['edit_support'];
$title_sk =  mysqli_real_escape_string($conn,$_POST['title_sk']);
$text_sk =  mysqli_real_escape_string($conn,$_POST['text_sk']);
$title_en =  mysqli_real_escape_string($conn,$_POST['title_en']);
$text_en =  mysqli_real_escape_string($conn,$_POST['text_en']);
$title_de =  mysqli_real_escape_string($conn,$_POST['title_de']);
$text_de =  mysqli_real_escape_string($conn,$_POST['text_de']);

mysqli_query($conn, "UPDATE `how_support` SET 
`support_title_sk` = '$title_sk', `support_text_sk` = '$text_sk',
`support_title_en` = '$title_en', `support_text_en` = '$text_en',
`support_title_de` = '$title_de', `support_text_de` = '$text_de'
WHERE how_support_id=$support_id");
header('location: ../edit_support.php?success');

}
?>
