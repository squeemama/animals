<?php 
include_once "dbh.inc.php";

if(isset($_POST['edit_info'])) {
$info_id = $_POST['edit_info'];
$title_sk =  mysqli_real_escape_string($conn,$_POST['title_sk']);
$title_en =  mysqli_real_escape_string($conn,$_POST['title_en']);
$title_de =  mysqli_real_escape_string($conn,$_POST['title_de']);
$text_sk =  mysqli_real_escape_string($conn,$_POST['text_sk']);
$text_en =  mysqli_real_escape_string($conn,$_POST['text_en']);
$text_de =  mysqli_real_escape_string($conn,$_POST['text_de']);

mysqli_query($conn, "UPDATE `info` SET 
`info_title_sk` = '$title_sk', `info_text_sk` = '$text_sk',
`info_title_en` = '$title_en', `info_text_en` = '$text_en',
`info_title_de` = '$title_de', `info_text_de` = '$text_de'
WHERE info_id=$info_id");
header('location: ../edit_info.php?success');

}

if (isset($_GET['del'])) {
	$id = $_GET['del'];
	
	mysqli_query($conn, "DELETE FROM info WHERE info_id=$id");
	$_SESSION['message'] = '<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-danger" role="alert">
                    Record deleted!
                    </div>
                </div>
            </div>  
        </div>';
	echo '<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-danger" role="alert">
                    Record deleted!
                    </div>
                </div>
            </div>  
        </div>';

}
?>
