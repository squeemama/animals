<?php 

$sql1 = "SELECT * FROM dog
		 LEFT JOIN main_image_dog ON dog.dog_id = main_image_dog.fk_dog_id 
		LEFT JOIN image_dog ON dog.dog_id = image_dog.fk_dog_id
		 LEFT JOIN adaption ON dog.dog_id = adaption.fk_dog_id
		 WHERE adaption.fk_dog_id = dog.dog_id
		 AND adaption.verify = '1'
         UNION
SELECT * FROM cat
		 LEFT JOIN main_image_cat ON cat.cat_id = main_image_cat.fk_cat_id 
		LEFT JOIN image_cat ON cat.cat_id = image_cat.fk_cat_id 
		 LEFT JOIN adaption ON cat.cat_id = adaption.fk_cat_id
		 WHERE adaption.fk_cat_id = cat.cat_id
		 AND adaption.verify = '1'
		 ORDER BY dog_name";

$result=mysqli_query($conn, $sql1);
$data = array();
while($row = mysqli_fetch_array($result)){
	$data[$row['dog_id']]['name'] = $row['dog_name'];
	$data[$row['dog_id']]['type_sk'] = $row['type_sk'];
	$data[$row['dog_id']]['type_en'] = $row['type_en'];
	$data[$row['dog_id']]['type_de'] = $row['type_de'];
	$data[$row['dog_id']]['post_date'] = $row['post_date'];
	$data[$row['dog_id']]['born_date'] = $row['born_date'];
	$data[$row['dog_id']]['main_image'] = $row['main_image_dog'];
	$data[$row['dog_id']]['castration'] = $row['castration'];
	$data[$row['dog_id']]['height'] = $row['height'];
	$data[$row['dog_id']]['weight'] = $row['weight'];
	$data[$row['dog_id']]['desc_sk'] = $row['dog_desc_sk'];
	$data[$row['dog_id']]['desc_de'] = $row['dog_desc_de'];
	$data[$row['dog_id']]['desc_en'] = $row['dog_desc_en'];
	$data[$row['dog_id']]['gender'] = $row['gender'];
	$data[$row['dog_id']]['id'] = $row['dog_id'];
	$data[$row['dog_id']]['images'][$row["image_dog"]] = $row['image_dog'];
};


if (isset($_GET['char'])) {
    $char = $_GET['char'];
    
$sql1 = "SELECT * FROM dog
		 LEFT JOIN main_image_dog ON dog.dog_id = main_image_dog.fk_dog_id 
		LEFT JOIN image_dog ON dog.dog_id = image_dog.fk_dog_id
		 LEFT JOIN adaption ON dog.dog_id = adaption.fk_dog_id
		 WHERE adaption.fk_dog_id = dog.dog_id
		 AND adaption.verify = '1' AND dog_name LIKE '$char%' 
         UNION
SELECT * FROM cat
		 LEFT JOIN main_image_cat ON cat.cat_id = main_image_cat.fk_cat_id 
		LEFT JOIN image_cat ON cat.cat_id = image_cat.fk_cat_id 
		 LEFT JOIN adaption ON cat.cat_id = adaption.fk_cat_id
		 WHERE adaption.fk_cat_id = cat.cat_id
		 AND adaption.verify = '1' AND cat_name LIKE '$char%' 
		 ORDER BY dog_name";

$result=mysqli_query($conn, $sql1);
$data = array();
while($row = mysqli_fetch_array($result)){
	$data[$row['dog_id']]['name'] = $row['dog_name'];
	$data[$row['dog_id']]['type_sk'] = $row['type_sk'];
	$data[$row['dog_id']]['type_en'] = $row['type_en'];
	$data[$row['dog_id']]['type_de'] = $row['type_de'];
	$data[$row['dog_id']]['post_date'] = $row['post_date'];
	$data[$row['dog_id']]['born_date'] = $row['born_date'];
	$data[$row['dog_id']]['main_image'] = $row['main_image_dog'];
	$data[$row['dog_id']]['castration'] = $row['castration'];
	$data[$row['dog_id']]['height'] = $row['height'];
	$data[$row['dog_id']]['weight'] = $row['weight'];
	$data[$row['dog_id']]['desc_sk'] = $row['dog_desc_sk'];
	$data[$row['dog_id']]['desc_de'] = $row['dog_desc_de'];
	$data[$row['dog_id']]['desc_en'] = $row['dog_desc_en'];
	$data[$row['dog_id']]['gender'] = $row['gender'];
	$data[$row['dog_id']]['id'] = $row['dog_id'];
	$data[$row['dog_id']]['images'][$row["image_dog"]] = $row['image_dog'];
};}


if (isset($_GET['nochar'])) {

$sql1 = "SELECT * FROM dog
		 LEFT JOIN main_image_dog ON dog.dog_id = main_image_dog.fk_dog_id 
		LEFT JOIN image_dog ON dog.dog_id = image_dog.fk_dog_id
		 LEFT JOIN adaption ON dog.dog_id = adaption.fk_dog_id
		 WHERE adaption.fk_dog_id = dog.dog_id
		 AND adaption.verify = '1'
         UNION
SELECT * FROM cat
		 LEFT JOIN main_image_cat ON cat.cat_id = main_image_cat.fk_cat_id 
		LEFT JOIN image_cat ON cat.cat_id = image_cat.fk_cat_id 
		 LEFT JOIN adaption ON cat.cat_id = adaption.fk_cat_id
		 WHERE adaption.fk_cat_id = cat.cat_id
		 AND adaption.verify = '1'
		 ORDER BY dog_name";

$result=mysqli_query($conn, $sql1);
$data = array();
while($row = mysqli_fetch_array($result)){
	$data[$row['dog_id']]['name'] = $row['dog_name'];
	$data[$row['dog_id']]['type_sk'] = $row['type_sk'];
	$data[$row['dog_id']]['type_en'] = $row['type_en'];
	$data[$row['dog_id']]['type_de'] = $row['type_de'];
	$data[$row['dog_id']]['post_date'] = $row['post_date'];
	$data[$row['dog_id']]['born_date'] = $row['born_date'];
	$data[$row['dog_id']]['main_image'] = $row['main_image_dog'];
	$data[$row['dog_id']]['castration'] = $row['castration'];
	$data[$row['dog_id']]['height'] = $row['height'];
	$data[$row['dog_id']]['weight'] = $row['weight'];
	$data[$row['dog_id']]['desc_sk'] = $row['dog_desc_sk'];
	$data[$row['dog_id']]['desc_de'] = $row['dog_desc_de'];
	$data[$row['dog_id']]['desc_en'] = $row['dog_desc_en'];
	$data[$row['dog_id']]['gender'] = $row['gender'];
	$data[$row['dog_id']]['id'] = $row['dog_id'];
	$data[$row['dog_id']]['images'][$row["image_dog"]] = $row['image_dog'];
};

    }

if (isset($_GET['filter_date'])) {
    $fmonth = $_GET['fmonth'];
    $fyear = $_GET['fyear'];
    
$sql1 = "SELECT * FROM dog
		 LEFT JOIN main_image_dog ON dog.dog_id = main_image_dog.fk_dog_id 
		LEFT JOIN image_dog ON dog.dog_id = image_dog.fk_dog_id
		 LEFT JOIN adaption ON dog.dog_id = adaption.fk_dog_id
		 WHERE adaption.fk_dog_id = dog.dog_id
		 AND adaption.verify = '1' AND dog.born_date LIKE '$fyear-$fmonth%'
         UNION
SELECT * FROM cat
		 LEFT JOIN main_image_cat ON cat.cat_id = main_image_cat.fk_cat_id 
		LEFT JOIN image_cat ON cat.cat_id = image_cat.fk_cat_id 
		 LEFT JOIN adaption ON cat.cat_id = adaption.fk_cat_id
		 WHERE adaption.fk_cat_id = cat.cat_id
		 AND adaption.verify = '1' AND cat.born_date LIKE '$fyear-$fmonth%'
		 ORDER BY dog_name";

$result=mysqli_query($conn, $sql1);
$data = array();
while($row = mysqli_fetch_array($result)){
	$data[$row['dog_id']]['name'] = $row['dog_name'];
	$data[$row['dog_id']]['type_sk'] = $row['type_sk'];
	$data[$row['dog_id']]['type_en'] = $row['type_en'];
	$data[$row['dog_id']]['type_de'] = $row['type_de'];
	$data[$row['dog_id']]['post_date'] = $row['post_date'];
	$data[$row['dog_id']]['born_date'] = $row['born_date'];
	$data[$row['dog_id']]['main_image'] = $row['main_image_dog'];
	$data[$row['dog_id']]['castration'] = $row['castration'];
	$data[$row['dog_id']]['height'] = $row['height'];
	$data[$row['dog_id']]['weight'] = $row['weight'];
	$data[$row['dog_id']]['desc_sk'] = $row['dog_desc_sk'];
	$data[$row['dog_id']]['desc_de'] = $row['dog_desc_de'];
	$data[$row['dog_id']]['desc_en'] = $row['dog_desc_en'];
	$data[$row['dog_id']]['gender'] = $row['gender'];
	$data[$row['dog_id']]['id'] = $row['dog_id'];
	$data[$row['dog_id']]['images'][$row["image_dog"]] = $row['image_dog'];
};

    }

?>
