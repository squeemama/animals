<?php 
include("includes/navbar.inc.php");
include("includes/dbh.inc.php");
 ?>
<link rel="stylesheet" type="text/css" href="../css/adoption.css">
<div class="container">
<div class="break">
</div>
      <div class="jumbotron backg2 p-3 p-md-5 text-white rounded">
        <div class="col-md-6 px-0">
          <h1 class="display-4 font-weight-bold"><?php echo $languages[$x]["support_title"] ?></h1>
          <p class="lead my-3"><?php echo $languages[$x]["support_subtitle"] ?></p>
        </div>
      </div>
      <div class="row"> 
        <?php 
 $sql ="SELECT * FROM how_support";
$Rows = mysqli_query($conn, $sql);
$Result = $Rows->fetch_all(MYSQLI_ASSOC);
 foreach($Result as $row) {
         ?>
        <div class="col-md-12">
          <h2 class="text-left"><?php echo $row['support_title_'.$x] ?></h2>
          <p class="my-3"><?php echo $row['support_text_'.$x] ?></p>
        </div><?php } ?>
      </div>
</div>
<div class="break">
</div>
<?php include("includes/footer.inc.php"); ?>