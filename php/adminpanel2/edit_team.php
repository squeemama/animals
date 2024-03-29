<?php
require_once "includes_admin/navbar.inc.php";
require_once "includes_admin/dbh.inc.php";
require_once "includes_admin/edit_team.inc.php";

	if (isset($_SESSION['userUid']))
	                      {
	if (isset($_GET['edit'])) {
		$id = $_GET['edit'];
		$record = mysqli_query($conn, "SELECT * FROM team WHERE team_id=$id");
		if (mysqli_num_rows($record) == 1 ) {
			$n = mysqli_fetch_array($record);
			$name = $n['name'];
			$position_sk = $n['position_sk'];
			$description_sk = $n['description_sk'];
			$position_en = $n['position_en'];
			$description_en = $n['description_en'];
			$position_de = $n['position_de'];
			$description_de = $n['description_de'];
		}
	}
$results = mysqli_query($conn, "SELECT * FROM team");
?>
<link rel="stylesheet" type="text/css" href="../../css/users.css">
<div class="contentainer-fluid">
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
			<th><?php echo $languages[$x]["up_name"] ?></th>
			<th><?php echo $languages[$x]["team_pos"] ?></th>
			<th><?php echo $languages[$x]["team_desc"] ?></th>
		</tr>
	</thead>
	
	<?php while ($row = mysqli_fetch_array($results)) { ?>
		<tr>
			<td><?php echo $row['name']; ?></td>
			<td><?php echo $row['position_sk']; ?></td>
			<td><?php echo $row['description_sk']; ?></td>
			<td>
				<a href="edit_team.php?edit=<?php echo $row['team_id'] ?>" class="btn btn-info"><?php echo $languages[$x]["up_edit_btn"] ?></a>
			</td>
			<td>
				<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal<?php echo $row['team_id'] ?>">
        <?php echo $languages[$x]["up_del_btn"] ?>
      </button>
            </td>
            <!-- Modal -->
      <div class="modal fade" id="deleteModal<?php echo $row['team_id'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
              <p><?php echo $languages[$x]["up_name"] ?>: <?php echo $row['name'] ?></p>
              <p>Position SK: <?php echo $row['position_sk'] ?></p>
            </div>
            <div class="modal-footer">
              <a href="edit_team.php?del=<?php echo $row['team_id'] ?>" class="btn btn-danger"><?php echo $languages[$x]["up_del_btn"] ?></a>
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
	
		<div class="inputform">
			<form method="post" action="includes_admin/edit_team.inc.php" >
				<input type="hidden" name="id" value="<?php echo $id; ?>">
				<div class="input-group form-group">
					<label class="col"><?php echo $languages[$x]["up_name"] ?>: </label>
					<input class="form-control" type="text" name="name" value="<?php echo htmlspecialchars($name); ?>">
				</div>
				<div class="input-group form-group">
					<label class="col"><?php echo $languages[$x]["team_pos"] ?> SK: </label>
					<input class="form-control" type="text" name="position_sk" value="<?php echo htmlspecialchars($position_sk); ?>">
				</div>
				<div class="input-group form-group">
					<label class="col"><?php echo $languages[$x]["team_desc"] ?> SK: </label>
					<textarea id="textarea_users" class="form-control" type="text" name="description_sk"><?php echo htmlspecialchars($description_sk); ?></textarea>
				</div>
				<div class="input-group form-group">
					<label class="col"><?php echo $languages[$x]["team_pos"] ?> EN: </label>
					<input class="form-control" type="text" name="position_en" value="<?php echo htmlspecialchars($position_en); ?>">
				</div>
				<div class="input-group form-group">
					<label class="col"><?php echo $languages[$x]["team_desc"] ?> EN: </label>
					<textarea id="textarea_users" class="form-control" type="text" name="description_en"><?php echo htmlspecialchars($description_en); ?></textarea>
				</div>
				<div class="input-group form-group">
					<label class="col"><?php echo $languages[$x]["team_pos"] ?> DE: </label>
					<input class="form-control" type="text" name="position_de" value="<?php echo htmlspecialchars($position_de); ?>">
				</div>
				<div class="input-group form-group">
					<label class="col"><?php echo $languages[$x]["team_desc"] ?> DE: </label>
					<textarea id="textarea_users" class="form-control" type="text" name="description_de"><?php echo htmlspecialchars($description_de); ?></textarea>
				</div>
				<button class="btn btn-center" type="submit" name="update"><?php echo $languages[$x]["up_edit_btn"] ?></button>
			</form>
		</div>
</div>
	</div>

<?php
require_once("includes_admin/footer.inc.php");
 }; ?>