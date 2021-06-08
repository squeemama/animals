<?php 
include "includes_admin/navbar.inc.php"; 
include_once "includes_admin/dbh.inc.php";
include_once "includes_admin/edit_mission.inc.php";
?>
<link rel="stylesheet" type="text/css" href="../../css/users.css">
<div class="break">
	
</div>
<div class="container">
	<div class='row'>
		<?php 
        if (isset($_GET['success'])) {
  echo "<div class='col-md-10 offset-md-2' >
		  <div class='alert alert-success alert-dismissible fade show' role='alert'>
		  <strong>".$languages[$x]["success"]."</strong>
		  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
		    <span aria-hidden='true'>&times;</span>
		  </button>
		</div>
		</div>";
      } ?>
	<?php if (isset($_SESSION['userUid']))
      {
	$sql = "SELECT * FROM mission";
	$result = mysqli_query($conn, $sql);
	$rows = $result->fetch_all(MYSQLI_ASSOC);
	foreach ($rows as $row) {
		echo "<hr>
		<div class='col-md-10 offset-md-2'>
		<form action='includes_admin/edit_mission.inc.php' method='POST'>
		<div class='form-group'>
			<label><b>".$languages[$x]["edit_title"]." SLO: </b></label>
			<input class='form-control ' type='text' name='title_sk' value='".htmlspecialchars($row["mission_title_sk"])."'>
		</div>
		<div class='form-group'>
			<label><b>".$languages[$x]["edit_title"]." ENG: </b></label>
			<input class='form-control ' type='text' name='title_en' value='".htmlspecialchars($row["mission_title_en"])."'>
		</div>
		<div class='form-group'>
			<label><b>".$languages[$x]["edit_title"]." DEU: </b></label>
			<input class='form-control ' type='text' name='title_de' value='".htmlspecialchars($row["mission_title_de"])."'>
		</div>
		<div class='form-group'>
			<label><b>Text SLO: </b></label>
			<textarea class='form-control' type='text' name='text_sk'  rows='18'>".htmlspecialchars($row["mission_text_sk"])."</textarea>
		</div>   
		<div class='form-group'>
			<label><b>Text ENG: </b></label>
			<textarea class='form-control' type='text' name='text_en'  rows='18'>".htmlspecialchars($row["mission_text_en"])."</textarea>
		</div>
		<div class='form-group'>
			<label><b>Text DEU: </b></label>
			<textarea class='form-control' type='text' name='text_de'  rows='18'>".htmlspecialchars($row["mission_text_de"])."</textarea>
		</div>       
		<button class='btn btn-warning' type='submit' name='edit_mission' value='".$row["mission_id"]."' >".$languages[$x]["up_edit_btn"]."</button>
		</form><br>
		</div>
		
		
		";
	}
	?>
		</div>
	</div>
<?php   }
include "includes_admin/footer.inc.php"; 
?>