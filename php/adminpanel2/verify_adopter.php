<?php 
include("includes_admin/dbh.inc.php");
include("includes_admin/output_verify_adopter.inc.php");
include("includes_admin/upload_verify_adopter.inc.php");
include("includes_admin/navbar.inc.php"); 
if (isset($_SESSION['userUid']))
            { 
?>
<body id="page-top">
	<div class="container">
		<div class="row">
			<div class="col-md-10 offset-md-2">
      <h1><?php echo $languages[$x]["adopt2"] ?></h1>
				<?php         if (isset($_GET['success'])) {
  echo "<div class='alert alert-success alert-dismissible fade show' role='alert'>
  <strong>Uploaded successfully!</strong>
  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
    <span aria-hidden='true'>&times;</span>
  </button>
</div>";
      } ?>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#ID</th>
							<th scope="col"><?php echo $languages[$x]["req_date"] ?></th>
							<th scope="col"><?php echo $languages[$x]["up_name"] ?></th>
							<th scope="col">Telephone</th>
							<th scope="col">E-mail address</th>
							<th scope="col"><?php echo $languages[$x]["address"] ?></th>
							<th scope="col"><?php echo $languages[$x]["other_pets"] ?></th>
							<th scope="col"><?php echo $languages[$x]["supcat"] ?></th>
							<th scope="col"><?php echo $languages[$x]["supdog"] ?></th>
							<th scope="col"><?php echo $languages[$x]["verify"] ?></th>
							<th scope="col"><?php echo $languages[$x]["up_del_btn"] ?></th>
						</tr>
						</thead><?php foreach($rows as $row) { ?>
							<tbody>
								<tr>
									<th scope="row"><?php echo $row["adoption_id"];?></th>
									<td><?php echo $row['req_date'] ?></td>
									<td><?php echo $row['name'] ?></td>
									<td><?php echo $row['telephone_number1'].", ".$row['telephone_number2'] ?></td>
									<td><?php echo $row['email'] ?></td>
									<td><?php echo $row['address'] ?></td>
									<td><?php echo $row['other_pets'].", ".$row['kind_of_pets'] ?></td>
									<td><?php echo $row['cat_name'] ?></td>
									<td><?php echo $row['dog_name'] ?></td>
									<td>
									<form method="POST">
										<div class="form-group">
											<input  type="hidden" class="form-control" name="sup_id" value="<?php echo $row["adoption_id"];?>">
										</div>
										<input class="btn btn-success" type="submit" value="<?php echo $languages[$x]["allow"] ?>" name="verify"/>
									</form>
								</td>
								<?php echo 
								'<td>
									<a href="verify_adopter.php?del='.$row['adoption_id'].'" class="btn btn-danger mt-3">'.$languages[$x]["up_del_btn"].'</a>
								</td>' 
								?>
							</tr>
						</tbody>
					<?php } ?>
				</table>
			</div>
			<div class="col-md-10 offset-md-2">
				<br><br>
	<h1><?php echo $languages[$x]["add_dog_adopter"] ?></h1>
                        <form  method="post"  class="needs-validation" novalidate>
                          <div class="form-group">
                            <label  for="error2"><?php echo $languages[$x]["dog_id"] ?></label>
                            <input type="text" class="form-control" name="dog_id" id="error0">
                            <div class="invalid-feedback">
                            <?php echo $languages[$x]["provide_value"] ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="error1"><?php echo $languages[$x]["adopters_full_name"] ?></label>
                            <input type="text" class="form-control" name="adopt_name" id="error1" required>
                            <div class="invalid-feedback">
                            <?php echo $languages[$x]["provide_value"] ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label ><?php echo $languages[$x]["kind_of_keeping"] ?></label>
                            <select name="kind" class="form-control">
                              <option value="inside"><?php echo $languages[$x]["inside"] ?></option>
                              <option value="inside & outside"><?php echo $languages[$x]["in_out"] ?></option>
                              <option value="outside"><?php echo $languages[$x]["outside"] ?></option>
                            </select>
                          </div>
                          <div class="form-group">
                            <label ><?php echo $languages[$x]["other_pets"] ?></label>
                            <select  name="other1" class="form-control">
                              <option value="yes"><?php echo $languages[$x]["yes"] ?></option>
                              <option value="no"><?php echo $languages[$x]["no"] ?></option>
                            </select>
                          </div>
                          <div class="form-group">
                            <label  for="error2"><?php echo $languages[$x]["other_pets2"] ?></label>
                            <input type="text" class="form-control" name="other2" id="error2">
                            <div class="invalid-feedback">
                            <?php echo $languages[$x]["provide_value"] ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label  for="error3">Email</label>
                            <input type="email" class="form-control" name="adopt_email" id="error3" required>
                            <div class="invalid-feedback">
                            <?php echo $languages[$x]["provide_value"] ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label  for="error4"><?php echo $languages[$x]["address"] ?></label>
                            <input type="text" class="form-control" name="adopt_address" id="error4" required>
                            <div class="invalid-feedback">
                            <?php echo $languages[$x]["provide_value"] ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label  for="error5">Telephone 1</label>
                            <input type="text" class="form-control" name="adopt_tel1" id="error5" required>
                            <div class="invalid-feedback">
                            <?php echo $languages[$x]["provide_value"] ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label >Telephone 2 (<?php echo $languages[$x]["optional"] ?>)</label>
                            <input type="text" class="form-control" name="adopt_tel2" >
                          </div>
                          <input class="btn btn-success" type="submit" value="<?php echo $languages[$x]["adopt_btn"] ?>" name="adopt_dog" />
                        </form>
                      </div>
			<div class="col-md-10 offset-md-2">
	<h1><?php echo $languages[$x]["add_cat_adopter"] ?></h1>
                        <form  method="post"  class="needs-validation" novalidate>
                          <div class="form-group">
                            <label  for="error2"><?php echo $languages[$x]["cat_id"] ?></label>
                            <input type="text" class="form-control" name="cat_id" id="error0">
                            <div class="invalid-feedback">
                            <?php echo $languages[$x]["provide_value"] ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="error1"><?php echo $languages[$x]["adopters_full_name"] ?></label>
                            <input type="text" class="form-control" name="adopt_name" id="error1" required>
                            <div class="invalid-feedback">
                            <?php echo $languages[$x]["provide_value"] ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label ><?php echo $languages[$x]["kind_of_keeping"] ?></label>
                            <select name="kind" class="form-control">
                              <option value="inside"><?php echo $languages[$x]["inside"] ?></option>
                              <option value="inside & outside"><?php echo $languages[$x]["in_out"] ?></option>
                              <option value="outside"><?php echo $languages[$x]["outside"] ?></option>
                            </select>
                          </div>
                          <div class="form-group">
                            <label ><?php echo $languages[$x]["other_pets"] ?></label>
                            <select  name="other1" class="form-control">
                              <option value="yes"><?php echo $languages[$x]["yes"] ?></option>
                              <option value="no"><?php echo $languages[$x]["no"] ?></option>
                            </select>
                          </div>
                          <div class="form-group">
                            <label  for="error2"><?php echo $languages[$x]["other_pets2"] ?></label>
                            <input type="text" class="form-control" name="other2" id="error2">
                            <div class="invalid-feedback">
                            <?php echo $languages[$x]["provide_value"] ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label  for="error3">Email</label>
                            <input type="email" class="form-control" name="adopt_email" id="error3" required>
                            <div class="invalid-feedback">
                            <?php echo $languages[$x]["provide_value"] ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label  for="error4"><?php echo $languages[$x]["address"] ?></label>
                            <input type="text" class="form-control" name="adopt_address" id="error4" required>
                            <div class="invalid-feedback">
                            <?php echo $languages[$x]["provide_value"] ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label  for="error5">Telephone 1</label>
                            <input type="text" class="form-control" name="adopt_tel1" id="error5" required>
                            <div class="invalid-feedback">
                            <?php echo $languages[$x]["provide_value"] ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label >Telephone 2 (<?php echo $languages[$x]["optional"] ?>)</label>
                            <input type="text" class="form-control" name="adopt_tel2" >
                          </div>
                          <input class="btn btn-success" type="submit" value="<?php echo $languages[$x]["adopt_btn"] ?>" name="adopt_cat" />
                        </form>
                      </div>
		</div>
	</div>
<?php } include "includes_admin/footer.inc.php"; ?>