<?php 
include_once("includes_admin/dbh.inc.php");
include_once("includes_admin/navbar.inc.php");
if (isset($_SESSION['userUid']))
      {
if(isset($_GET['success'])){
  echo "<div class='alert alert-success alert-dismissible fade show col-md-7 offset-md-2' role='alert'>
          <strong>".$languages[$x]["success"]."!</strong>
          <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
            <span aria-hidden='true'>&times;</span>
          </button>
        </div>";
        }        
$sql = "SELECT * FROM dog
LEFT JOIN adaption ON dog.dog_id = adaption.fk_dog_id
		WHERE adaption.fk_dog_id IS NOT NULL";
$result = mysqli_query($conn, $sql);
$rows = $result->fetch_all(MYSQLI_ASSOC);
 ?>
<link rel="stylesheet" type="text/css" href="../../css/shelter.css">
<div class="break">
</div>
<div class="container">
  <div class="row">
    <div class="col-md-10 offset-md-2">
      <h1><?php echo $languages[$x]["edit_dog_title"] ?></h1>
      <hr>
    </div>
    <div class="col-md-10 offset-md-2">
      <div class="row">
        <div class="col-md-12">
          <form action="delete_dog_img.php" method="get" accept-charset="utf-8">
            <div class="form-group">
              <label for="exampleFormControlSelect1"><?php echo $languages[$x]["select_dog"] ?></label>
              <select class="form-control" name="id">
                <?php foreach($rows as $row){ ?>
                <option value="<?php echo $row["dog_id"]; ?>"><?php echo $row["dog_name"]; ?></option>
              <?php } ?>
              </select>
            </div>
            <input class="btn btn-warning" type="submit" value="<?php echo $languages[$x]["select"] ?>" name="select_dog" />
          </form>
        </div>
		</div>
	</div>
</div>
</div>


<?php
require_once("includes_admin/footer.inc.php");
}; 
?>