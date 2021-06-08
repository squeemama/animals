<?php session_start();
if(!isset($_SESSION["lang2"])){
  $_SESSION["lang2"] = "eng";
}
setcookie('taxcookie', 'true', time() + 60*60*24  , "/");?>
<?php setcookie('datenschutz_cookie', 'true', time() + 60*60  , "/");?>
<?php include("includes/front_config.php");?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Útulok Piešťany</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <!-- Custom styles for this template -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <!-- Custom styles for this template -->
  <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
  <link href="../css/header.css" rel="stylesheet">
  <link rel="shortcut icon" href="../img/logo4.png" />
  <style>
  
#logoreplace {  
  position: absolute!important;
}
.space {
  width: 90px;
}
@media (max-width: 992px) {
#logoreplace {  
  width: 60px;
}
}
#element {
  position: fixed;
  bottom: 20px;
  right: 20px;
}  
#element a{
 text-decoration: none;
 color: white;
}
<?php echo "#".$x."-color"?>{
  color: orange;
}
</style>

</head>
<body id="page-top">
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav"> 
    
      <img class="" id="logoreplace" src="../img/logo3.png" width="90" alt="">
          
        <?php 
      $tax = "<a style='margin-right: 0;text-decoration: none;border: none;' type='button' id='element' data-placement='top'  class='btn btn-success' href=\"tax\">".$languages[$x]['tax_pop_title']."
                </a>";
      $onetime = "<a style='margin-right: 0; position: fixed; bottom: 20px; left: 20px; text-decoration: none;border: none;' type='button' id='1time' data-placement='top' class='btn btn-warning' href=\"tax\">".$languages[$x]['one_pop_title']."</a>";
      $popup1time = " <div>
                <button style='margin-right: 0; position: fixed; bottom:20px; left: 20px;' type='button' id='pop1time' data-placement='top'  class='btn btn-warning' rel='popover'
                        data-content='<a href=\"tax\">".$languages[$x]['one_pop_body']."'
                        data-original-title='".$languages[$x]['one_pop_sub_title']."'
                        data-html='true'>".$languages[$x]['one_pop_title']."
                </button>
              </div>
              <script>
                $(function() { 
                   $('#pop1time').popover('show');
                });
              </script>";
      $popuptax = " <div>
                <button style='margin-right: 0;' type='button' id='eelement' data-placement='top'  class='btn btn-success' rel='popover'
                        data-content='<a href=\"tax\">Please donate your 2% of tax to our organisation.</a>'
                        data-original-title='Give your 2%!'
                        data-html='true'>2% TAX
                </button>
              </div>
              <script>
                $(function() { 
                   $('#eelement').popover('show');
                });
              </script>";
      

if(!isset($_COOKIE['taxcookie']) || $_COOKIE['taxcookie'] !== 'true' && isset($_COOKIE['datenschutz_cookie'])) { 
  echo $tax;
  setcookie('taxcookie', 'true', time() + 60*60*24, "/");
 
} else {
  echo $tax;
  "<div>
                <button style='margin-right: 0;' type='button' id='element' data-placement='top'  class='btn btn-success' rel='popover'
                        data-content='<a href=\"tax\">Please donate your 2% of tax to our organisation.</a>'
                        data-original-title='Give your 2%!'
                        data-html='true'><a href='tax'>2% TAX</a>
                </button>
              </div>";
}

if(!isset($_COOKIE['1timecookie']) || $_COOKIE['1timecookie'] !== 'true') { 
  echo $popup1time;
  setcookie('1timecookie', 'true', time() + 60*60*24, "/");
 
} else {
  echo $onetime;}?>
  
    <div class="container">
      <div class="space"></div> <a class="navbar-brand js-scroll-trigger work" href="index"> 
Útulok Piešťany</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle js-scroll-trigger" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             <?php echo $languages[$x]["ABOUT_US"]?>
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="ourmission"><?php echo $languages[$x]["OUR_MISSION"]?></a>
              <a class="dropdown-item" href="teampage"><?php echo $languages[$x]["OUR_TEAM"]?></a>
              <a class="dropdown-item" href="helpus"><?php echo $languages[$x]["HELP"]?></a>            
              <a class="dropdown-item" href="info"><?php echo $languages[$x]["IMPORTANT_INFO"]?></a>
              <a class="dropdown-item" href="sponsors"><?php echo $languages[$x]["SPONSORS"]?></a>
              <a class="dropdown-item" href="gallary"><?php echo $languages[$x]["GALLERY"]?></a>
              
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle js-scroll-trigger" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <?php echo $languages[$x]["DOGS&CATS"]?>
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="dogs"><?php echo $languages[$x]["DOGS"]?></a>
              <a class="dropdown-item" href="cats"><?php echo $languages[$x]["CATS"]?></a>
              <a class="dropdown-item" href="search"><?php echo $languages[$x]["SEARCH"]?></a>
              <a class="dropdown-item" href="support"><?php echo $languages[$x]["SUPPORT"]?></a>                
              <a class="dropdown-item" href="adoption"><?php echo $languages[$x]["ADOPT"]?></a>
              <a class="dropdown-item" href="adopted"><?php echo $languages[$x]["IN_HAPPY_HOME"]?></a>
              <a class="dropdown-item" href="inmemoriam"><?php echo $languages[$x]["IN_MEMORIAM"]?></a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="reports"><?php echo $languages[$x]["REPORTS"]?></a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle js-scroll-trigger" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <?php echo $languages[$x]["OTHER"]?>
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="eshop1"><?php echo $languages[$x]["E-SHOP"]?></a>
              <a class="dropdown-item" href="auction"><?php echo $languages[$x]["AUCTION"]?></a>
              <a class="dropdown-item" href="repairs"><?php echo $languages[$x]["REPAIRS"]?></a>
               <a class="dropdown-item" target="_blank" href="../downloads/<?php echo $languages[$x]['SOS_CARDdoc']?>.doc"><?php echo $languages[$x]["SOS_CARD"]?></a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="contact"><?php echo $languages[$x]["CONTACT"]?></a>
          </li>
          <li >
            <form id="donate" action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">
              <input type="hidden" name="cmd" value="_s-xclick">
              <input type="hidden" name="hosted_button_id" value="9NW8L34KBXKNG">
              <input type="image" id="paypal_img" src="../img/PayPal.png" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
            </form>
          </li>
          <li class="pl-4">
            <a class="social_footer_ul" target="_blank" href="https://www.facebook.com/UtulokPiestany/?__tn__=kC-R&eid=ARDWhgRFE-NwY2LeRbqTMe-kOY5qmdRphrxqbh_R8AdGuYq52nICSjDcogk391G1Yfpj60Jxuu1qp8GD&hc_ref=ARStVqqzpg7amV2ebSI-brM3EKv3LAdyAyG0AAx8nW0gOZIoJSQ3GIKcOr-18UGwkPY&fref=nf&__xts__[0]=68.ARDRZk2Kxcg9hHP-mtRJeg3XAXYtVtXOSkEb68MUWALnCgwcKQ232KUWJ5uaDmthUgJCV580fbbYPiQ6GxPZSyv1g-DKFeP8iLfc5Gzs_COu9qDP09nnXfW8PEE0Q1HnKf5gvtyis5ecccKRkK4WZYqCZ2jWE2jI9EiAUUVk8xyaMhT7cg3jVj6uzaO2cHpJBI0LXxN91vK53mMDd8nAWTbTNtifyIwtwVR7CXx7RassZYOC3p3nSQ2LqxSdZEZ6L-FSxwrlIZWnszLu2dXPPTd4RvMl7a8vPxlAKpMnWA6RrobLp8IUb3JOEyqZdnEvDu6m0L6OC--lOrqjbwT5"><i class="fab fa-facebook fa-2x"></i></a>
          </li>
          <li class="pl-4">
            <a class="social_footer_ul" target="_blank" style="color: red;" href="https://www.youtube.com/channel/UCQFjaAxgsLIrw73fyFRHvBQ?"><i class="fab fa-youtube fa-2x"></i></a>
          </li>
          
        </ul>

       
      </div>

    </div>
       <div class="lang-btn-group">
          <form method="post" novalidate>
            <input class="lang-btn" type="submit" name="sk" value="SK" id='sk-color'>
            <span>|</span>
            <input class="lang-btn" type="submit" name="de" value="DE" id='de-color'>
            <span>|</span>
            <input class="lang-btn" type="submit" name="en" value="EN" id='en-color'>
        </div>
  </nav>

<?php
 $datenschutz = " <div id='dat-sch' class='modal fade' role='dialog'>
                        <div class='modal-dialog modal-lg'>
                          <div class='modal-content'>
                            <div class='modal-header'>
                              
                              <h4 class='modal-title'>".$languages[$x]["privacy_policy"]."</h4>
                            </div>
                            <div class='modal-body text-center' >
                            
                              <p>".$languages[$x]["privacy_policy_text"]."</a>
                            </div>
                            <div class='modal-footer'>
                              <button type='button' class='btn btn-default' data-dismiss='modal'>".$languages[$x]["accept"]."</button>
                            </div>
                          </div>
                        </div>
                      </div>
              <script>
              
                $(window).load(function(){        
                   $('#dat-sch').modal('show');
                }); 

              </script>";

if(!isset($_COOKIE['datenschutz_cookie']) || $_COOKIE['datenschutz_cookie'] !== 'true') { 
  echo $datenschutz;
  setcookie('datenschutz_cookie', 'true', time() + 60*60, "/");
 
}?>