<?php 
    include_once "dbh.inc.php";
    
    // initialize variables
    $cat_name = "";
    $born_date = "";
    $castration = "";
    $height = "";
    $weight = "";
    $cat_desc_sk = "";
    $cat_desc_de = "";
    $cat_desc_en = "";
    $cat_id_old = "";
    $type_sk = "";
    $type_en = "";
    $type_de = "";
    $gender = "";
    $in_memoriam = "";

if (isset($_POST['update'])) {
    $cat_name = mysqli_real_escape_string($conn, $_POST['cat_name']);
    $born_date = $_POST['born_date'];
    $cat_id_old=$_POST['cat_id_old'];
    $castration = mysqli_real_escape_string($conn, $_POST['castration']);
    $height = mysqli_real_escape_string($conn, $_POST['height']);
    $weight = mysqli_real_escape_string($conn, $_POST['weight']);
    $cat_desc_sk = mysqli_real_escape_string($conn, $_POST['cat_desc_sk']);
    $cat_desc_de = mysqli_real_escape_string($conn, $_POST['cat_desc_de']);
    $cat_desc_en = mysqli_real_escape_string($conn, $_POST['cat_desc_en']);
    $type_sk =  mysqli_real_escape_string($conn, $_POST['type_sk']);
    $type_en =  mysqli_real_escape_string($conn, $_POST['type_en']);
    $type_de =  mysqli_real_escape_string($conn, $_POST['type_de']);
    $gender = mysqli_real_escape_string($conn, $_POST['gender']);
    $in_memoriam = $_POST['in_memoriam'];
    $id = $_POST['id'];
    mysqli_query($conn, "UPDATE cat SET  cat_name='$cat_name', born_date='$born_date', castration='$castration',  height='$height', 
    weight='$weight', cat_desc_sk='$cat_desc_sk',cat_desc_de='$cat_desc_de',cat_desc_en='$cat_desc_en',
    type_sk='$type_sk', type_en='$type_en',type_de='$type_de', 
    gender='$gender', cat_id_old='$cat_id_old', in_memoriam='$in_memoriam' WHERE cat_id='$id'");
    $_SESSION['message'] = "Cat updated!"; 
    header('location: ../edit_cats.php?success');
}
if (isset($_POST['undo'])) {
    $id = $_POST['id'];
   mysqli_query($conn, "DELETE FROM adaption WHERE fk_cat_id=$id");
    $_SESSION['message'] = "cat updated!"; 
    header('location: ../edit_cats.php?success');
}
if (isset($_GET['del'])) {
    $id = $_GET['del'];
     $sql="SELECT cat_id, main_image, image_cat FROM cat LEFT JOIN main_image_cat ON cat.cat_id = main_image_cat.fk_cat_id LEFT JOIN image_cat ON cat.cat_id = image_cat.fk_cat_id WHERE cat.cat_id = $id";
    $result = mysqli_query($conn, $sql);
    $data = array();
    while($row = mysqli_fetch_array($result)){
            $data[$row['cat_id']]['main_image'] = $row['main_image'];
            $data[$row['cat_id']]['image_cat'][$row["image_cat"]] = array();
    };
    foreach ($data as $row) {
        //file_exists should work as well, but it doesn't
        if(is_file("../../image_upload/".$row["main_image"])){
             unlink("../../image_upload/".$row["main_image"]);
        } else {
            echo '<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-danger" role="alert">
                    Main Image not found/ deleted!
                    </div>
                </div>
            </div>  
        </div>';
        };
        foreach ($row["image_cat"] as $key => $value) {
             if(is_file("../../image_upload/".$key)){
                unlink("../../image_upload/".$key);
             } else {
                echo '<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-danger" role="alert">
                    Image not found/deleted!!
                    </div>
                </div>
            </div>  
        </div>';
             }
        }
    }
    mysqli_query($conn, "DELETE FROM cat WHERE cat_id=$id");
    mysqli_query($conn, "DELETE FROM image_cat WHERE fk_cat_id=$id");
    mysqli_query($conn, "DELETE FROM main_image_cat WHERE fk_cat_id=$id");
    $_SESSION['message'] = '<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-danger" role="alert">
                    Record deleted!
                    </div>
                </div>
            </div>  
        </div>';
}
?>