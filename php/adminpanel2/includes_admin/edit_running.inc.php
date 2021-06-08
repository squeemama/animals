<?php 
include_once "dbh.inc.php";

if(isset($_POST['edit_running'])) {
$text_id = $_POST['edit_running'];
$text_sk =  mysqli_real_escape_string($conn,$_POST['text_sk']);
$text_en =  mysqli_real_escape_string($conn,$_POST['text_en']);
$text_de =  mysqli_real_escape_string($conn,$_POST['text_de']);

mysqli_query($conn, "UPDATE `running_text` SET 
`text_content_sk` = '$text_sk',
`text_content_en` = '$text_en',
`text_content_de` = '$text_de'
WHERE text_id=$text_id");
header('location: ../edit_running.php?success');

}
?>
