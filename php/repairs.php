<?php 
include("includes/navbar.inc.php"); 
include("includes/dbh.inc.php");
?>
<link rel="stylesheet" type="text/css" href="../css/ourmission.css">
<div class="break">
</div>
<div class="container">
	<div class="jumbotron backg3 p-3 p-md-5 text-white rounded">
		<div class="col-md-6 px-0">
		<h1 class="display-4 font-weight-bold"><?php echo $languages[$x]['repairs_title'] ?></h1>
		</div>
	</div>
<div class="row mb-4">
		<br>
<div class="col-md-12">
				<img style="width: 100%" src="../downloads/<?php echo $languages[$x]['repairs_path'] ?>.jpg" alt="">
			<br></div>
			<br> 
		</div>
	</div>
<div class="break">
</div>
<?php 
include("includes/footer.inc.php")
?>