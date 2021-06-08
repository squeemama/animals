<?php 
include_once "dbh.inc.php";
if(isset($_POST['edit_adopt'])) {
    $adopt_id = $_POST['edit_adopt'];
    $title_sk =  mysqli_real_escape_string($conn,$_POST['title_sk']);
    $text_sk =  mysqli_real_escape_string($conn,$_POST['text_sk']);
    $title_en =  mysqli_real_escape_string($conn,$_POST['title_en']);
    $text_en =  mysqli_real_escape_string($conn,$_POST['text_en']);
    $title_de =  mysqli_real_escape_string($conn,$_POST['title_de']);
    $text_de =  mysqli_real_escape_string($conn,$_POST['text_de']);

    if (mysqli_query($conn, "UPDATE `how_adopt` SET 
    `adopt_title_sk` = '$title_sk', `adopt_text_sk` = '$text_sk',
    `adopt_title_en` = '$title_en', `adopt_text_en` = '$text_en',
    `adopt_title_de` = '$title_de', `adopt_text_de` = '$text_de'
    WHERE how_adopt_id=$adopt_id")) {
    header('location: ../edit_adopt.php?success');
    } else {
        echo "Edit error for: " . $sql . "\n" . mysqli_error($conn);
    }
}
?>
