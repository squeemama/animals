<?php
require "includes_admin/navbar.inc.php"; 
require_once "includes_admin/dbh.inc.php";
require_once "includes_admin/edit_report.inc.php";
if (isset($_SESSION['userUid']))
	{
if (isset($_GET['edit'])) {
		$id = $_GET['edit'];
		$record = mysqli_query($conn, "SELECT * FROM reports WHERE reports_id=$id");
		if (mysqli_num_rows($record) == 1 ) {
			$n = mysqli_fetch_array($record);
			$date = $n['reports_date'];
			$description_sk = $n['reports_descriptions_sk'];
			$description_en = $n['reports_descriptions_en'];
			$description_de = $n['reports_descriptions_de'];
			$name_sk = $n['name_sk'];
			$name_en = $n['name_en'];
			$name_de = $n['name_de'];
			$keywords = $n['keywords'];
		}
	}
$results = mysqli_query($conn, "SELECT * FROM reports");
?>
<link rel="stylesheet" type="text/css" href="../../css/users.css">
<div class="container-fluid">
	<div class="row">
	<div class="col-md-10 offset-md-2 users_content">
		<?php 
        if (isset($_GET['success'])) {
  echo "<div class='alert alert-success alert-dismissible fade show' role='alert'>
  <strong>".$languages[$x]["success"]."</strong>
  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
    <span aria-hidden='true'>&times;</span>
  </button>
</div>";
      } ?>
		<div class="card card_adminpanel">
		<div class="card-body">		
		<table class="table bordered">
	<thead>
		<tr>
			<th><?php echo $languages[$x]["rep_date"] ?></th>
			<th><?php echo $languages[$x]["edit_title"] ?></th>
			<th><?php echo $languages[$x]["rep_keywords"] ?></th>
			<th><?php echo $languages[$x]["rep_action"] ?></th>
		</tr>
	</thead>
	
	<?php while ($row = mysqli_fetch_array($results)) { ?>
		<tr>
			<td><?php echo $row['reports_date']; ?></td>
			<td><?php echo $row['name_sk']; ?></td>
			<td><?php echo $row['keywords']; ?></td>
			<td>
				<a href="edit_report.php?edit=<?php echo $row['reports_id'] ?>" class="btn btn-info" ><?php echo $languages[$x]["up_edit_btn"] ?></a>
			</td>
			<td>
				<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal<?php echo $row['reports_id'] ?>">
        <?php echo $languages[$x]["up_del_btn"] ?>
      </button>
            </td>
            <!-- Modal -->
      <div class="modal fade" id="deleteModal<?php echo $row['reports_id'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel"><?php echo $languages[$x]["modal_title"] ?></h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <p><?php echo $languages[$x]["modal_question"] ?></p>
              <p><?php echo $languages[$x]["up_name"] ?>: <?php echo $row['name_sk'] ?></p>
              <p>Position: <?php echo $row['reports_descriptions_'.$x] ?></p>
            </div>
            <div class="modal-footer">
              <a href="edit_report.php?del=<?php echo $row['reports_id'] ?>" class="btn btn-danger"><?php echo $languages[$x]["up_del_btn"] ?></a>
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>
      </tr>
        <?php } ?>
</table>
</div>
</div>
	</div>
	<div class="col-md-10 offset-md-2">
		
	
		<div class="inputform">
			<form method="post" action="includes_admin/edit_report.inc.php" >
				<input type="hidden" name="id" value="<?php echo $id; ?>">
				<div class="input-group form-group">
					<label class="col"><?php echo $languages[$x]["edit_title"] ?> SLO: </label>
					<input class="form-control" type="text" name="report_name_sk" value="<?php echo htmlspecialchars($name_sk); ?>">
				</div>
				<div class="input-group form-group">
					<label class="col"><?php echo $languages[$x]["edit_title"] ?> ENG: </label>
					<input class="form-control" type="text" name="report_name_en" value="<?php echo htmlspecialchars($name_en); ?>">
				</div>
				<div class="input-group form-group">
					<label class="col"><?php echo $languages[$x]["edit_title"] ?> DEU: </label>
					<input class="form-control" type="text" name="report_name_de" value="<?php echo htmlspecialchars($name_de); ?>">
				</div>
				<label class="col">Text SLO: </label><br>
		        <div class="input-group form-group">
		          <textarea id="textarea_users" class="form-control" type="text" rows='18'name="report_description_sk"><?php echo  htmlspecialchars($description_sk); ?></textarea>
		        </div>
				<label class="col">Text ENG: </label><br>
		        <div class="input-group form-group">
		          <textarea id="textarea_users" class="form-control" type="text" rows='18'name="report_description_en"><?php echo  htmlspecialchars($description_en); ?></textarea>
		        </div>
				<label class="col">Text DEU: </label><br>
		        <div class="input-group form-group">
		          <textarea id="textarea_users" class="form-control" type="text" rows='18'name="report_description_de"><?php echo  htmlspecialchars($description_de); ?></textarea>
		        </div>
				<div class="input-group form-group">
					<label class="col"><?php echo $languages[$x]["rep_date"] ?>: </label>
					<input class="form-control" type="date" name="report_date" value="<?php echo htmlspecialchars($date); ?>">
				</div>
				<div class="input-group form-group">
					<label class="col"><?php echo $languages[$x]["rep_keywords"] ?>: </label>
					<input class="form-control" type="text" name="report_keywords" value="<?php echo htmlspecialchars($keywords); ?>">
				</div>
				<button class="btn btn-center" type="submit" name="update"><?php echo $languages[$x]["up_update_btn"] ?></button>
			</form>
		</div>
	</div></div>
	</div>
<?php
require_once "includes_admin/footer.inc.php";
 }; ?>