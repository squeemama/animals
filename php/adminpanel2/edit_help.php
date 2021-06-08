<?php
include "includes_admin/navbar.inc.php"; 
include_once "includes_admin/dbh.inc.php";
include_once "includes_admin/edit_help.inc.php";
?>
<link rel="stylesheet" type="text/css" href="../../css/users.css">
<div class="break">
	
</div>
<div class="container">
	<div class='row'>
	<?php
if (isset($_SESSION['userUid']))
      {
$results = mysqli_query($conn, "SELECT * FROM help_us");
while ($row = mysqli_fetch_array($results)) { 
	 ?>
		<hr>
		<div class="col-md-10 offset-md-2">
			<?php 
        if (isset($_GET['success'])) {
  echo "<div class='alert alert-success alert-dismissible fade show' role='alert'>
  <strong>".$languages[$x]["success"]."</strong>
  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
    <span aria-hidden='true'>&times;</span>
  </button>
</div>";
      } ?>
		<form action="includes_admin/edit_help.inc.php" method="POST">
		<div class="form-group">
			<label><b><?php echo $languages[$x]["edit_title"] ?> SLO:</b></label>
			<input class="form-control " type="text" name="title_sk" value="<?php echo htmlspecialchars($row["help_title_sk"]); ?>">
		</div>
		<div class="form-group">
			<label><b><?php echo $languages[$x]["edit_title"] ?> ENG:</b></label>
			<input class="form-control " type="text" name="title_en" value="<?php echo htmlspecialchars($row["help_title_en"]); ?>">
		</div>
		<div class="form-group">
			<label><b><?php echo $languages[$x]["edit_title"] ?> DEU:</b></label>
			<input class="form-control " type="text" name="title_de" value="<?php echo htmlspecialchars($row["help_title_de"]); ?>">
		</div>
		<div class="form-group">
			<label><b>Text SLO: </b></label>
			<textarea class="form-control" type="text" name="text_sk"  rows="18"><?php echo htmlspecialchars($row["help_text_sk"]); ?></textarea>
		</div>
		<div class="form-group">
			<label><b>Text ENG: </b></label>
			<textarea class="form-control" type="text" name="text_en"  rows="18"><?php echo htmlspecialchars($row["help_text_en"]); ?></textarea>
		</div>
		<div class="form-group">
			<label><b>Text DEU: </b></label>
			<textarea class="form-control" type="text" name="text_de"  rows="18"><?php echo htmlspecialchars($row["help_text_de"]); ?></textarea>
		</div>          
		<button class="btn btn-warning" type="submit" name="edit_help" value="<?php echo $row["help_id"]; ?>" ><?php echo $languages[$x]["up_edit_btn"] ?></button>
		</form><br>
		</div>		
		<?php
	}
	?>
		</div>
	</div>
<?php } 
include "includes_admin/footer.inc.php"; 
?>