<?php 
	require_once "dbh.inc.php";

$name = "";
$position_sk = "";
$description_sk = "";	
$position_en = "";
$description_en = "";
$position_de = "";
$description_de = "";
if (isset($_POST['update'])) {
	$name = mysqli_real_escape_string($conn, $_POST['name']);
	$position_sk =mysqli_real_escape_string($conn, $_POST['position_sk']);
    $description_sk =mysqli_real_escape_string($conn, $_POST['description_sk']);
    $position_en =mysqli_real_escape_string($conn, $_POST['position_en']);
    $description_en =mysqli_real_escape_string($conn, $_POST['description_en']);
    $position_de =mysqli_real_escape_string($conn, $_POST['position_de']);
    $description_de =mysqli_real_escape_string($conn, $_POST['description_de']);
	$id = $_POST['id'];
	mysqli_query($conn, "UPDATE team SET name='$name', 
	position_sk='$position_sk' , description_sk='$description_sk', 
	position_en='$position_en' , description_en='$description_en', 
	position_de='$position_de' , description_de='$description_de'
	 WHERE team_id='$id'");
	$_SESSION['message'] = "Team updated!"; 
	header('location: ../edit_team.php?success');
}
if (isset($_GET['del'])) {
	$id = $_GET['del'];
	$sql1 = "SELECT * FROM team_image WHERE fk_team_id = $id";
	$results = mysqli_query($conn, $sql1);
	$rowss = mysqli_fetch_assoc($results);
	if(is_file("../../image_upload/".$rowss['team_image'])){
		unlink("../../image_upload/".$rowss['team_image']);
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
	};
	mysqli_query($conn, "DELETE FROM team WHERE team_id=$id");
	$_SESSION['message'] = "Team deleted!"; 
	echo '<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="alert alert-success" role="alert">
		  			Record deleted!
					</div>
				</div>
			</div>	
		</div>';
}
?>

