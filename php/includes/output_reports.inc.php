<?php 
if(isset ($_GET['id']) ){
    $singl = $_GET['id'];
}

$sql ="SELECT * FROM reports LEFT JOIN reports_image ON reports.reports_id = reports_image.fk_reports_id";

$reportsRows = mysqli_query($conn, $sql);
$reportsResult = $reportsRows->fetch_all(MYSQLI_ASSOC);

$sql3 = "SELECT * FROM reports
		 LEFT JOIN reports_image ON reports.reports_id = reports_image.fk_reports_id 
		 LEFT JOIN reports_image_more ON reports.reports_id = reports_image_more.fk_reports_id WHERE reports_id = '$singl'";
$imagesRow = mysqli_query($conn, $sql3);
$data = array();
while($row = mysqli_fetch_array($imagesRow)){
	$data[$row['reports_id']]['reports_date'] = $row['reports_date'];
	$data[$row['reports_id']]['description_sk'] = $row['reports_descriptions_sk'];
	$data[$row['reports_id']]['description_en'] = $row['reports_descriptions_en'];
	$data[$row['reports_id']]['description_de'] = $row['reports_descriptions_de'];
	$data[$row['reports_id']]['name_sk'] = $row['name_sk'];
	$data[$row['reports_id']]['name_en'] = $row['name_en'];
	$data[$row['reports_id']]['name_de'] = $row['name_de'];
	$data[$row['reports_id']]['keywords'] = $row['keywords'];
	$data[$row['reports_id']]['main_image'] = $row['reports_image'];
	$data[$row['reports_id']]['images'][$row['reports_image_more']] = $row['reports_image_more'];
}

 ?>