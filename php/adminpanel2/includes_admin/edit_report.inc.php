<?php 
	include_once "dbh.inc.php";
	

if (isset($_POST['update'])) {
	$date = mysqli_real_escape_string($conn, $_POST['report_date']);
	$description_sk = mysqli_real_escape_string($conn, $_POST['report_description_sk']);
	$name_sk = mysqli_real_escape_string($conn, $_POST['report_name_sk']);
	$description_en = mysqli_real_escape_string($conn, $_POST['report_description_en']);
	$name_en = mysqli_real_escape_string($conn, $_POST['report_name_en']);
	$description_de = mysqli_real_escape_string($conn, $_POST['report_description_de']);
	$name_de = mysqli_real_escape_string($conn, $_POST['report_name_de']);
	$keywords = mysqli_real_escape_string($conn, $_POST['report_keywords']);
	$id = mysqli_real_escape_string($conn, $_POST['id']);

	mysqli_query($conn, "UPDATE reports SET  reports_date='$date', 
	reports_descriptions_sk='$description_sk',  name_sk='$name_sk', 
	reports_descriptions_en='$description_en',  name_en='$name_en',
	reports_descriptions_de='$description_de',  name_de='$name_de',
	keywords='$keywords' WHERE reports_id='$id'");
	
	header('location: ../edit_report.php?success');
}
if (isset($_GET['del'])) {
	$id = $_GET['del'];
	$sql1 = "SELECT * FROM reports_image WHERE fk_reports_id = $id";
	$results = mysqli_query($conn, $sql1);
	$rowss = mysqli_fetch_assoc($results);
	if(is_file("../../image_upload/".$rowss['reports_image'])) {
		unlink("../../image_upload/".$rowss['reports_image']);
	} else {
		echo '<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-danger" role="alert">
                    Image not found/ deleted!
                    </div>
                </div>
            </div>  
        </div>';
	}

	mysqli_query($conn, "DELETE FROM reports WHERE reports_id=$id");
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