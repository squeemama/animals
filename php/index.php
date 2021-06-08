<?php
include("includes/navbar.inc.php");
include("includes/dbh.inc.php");
include("includes/counter.inc.php");

$sql = "SELECT * FROM dog 
JOIN main_image_dog ON dog.dog_id = main_image_dog.fk_dog_id 
LEFT JOIN adaption ON dog.dog_id = adaption.fk_dog_id 
WHERE dog.dog_id = main_image_dog.fk_dog_id 
AND adaption.fk_dog_id IS NULL AND dog.in_memoriam = 1 
ORDER BY dog.dog_id DESC LIMIT 2";
$main_dog = mysqli_query($conn, $sql);
$result = $main_dog->fetch_all(MYSQLI_ASSOC);

$sql2 = "SELECT * FROM cat 
JOIN main_image_cat ON cat.cat_id = main_image_cat.fk_cat_id 
LEFT JOIN adaption ON cat.cat_id = adaption.fk_cat_id 
WHERE cat.cat_id = main_image_cat.fk_cat_id 
AND adaption.fk_cat_id IS NULL AND cat.in_memoriam = 1
ORDER BY cat.cat_id DESC LIMIT 2";
$main_cat = mysqli_query($conn, $sql2);
$result2 = $main_cat->fetch_all(MYSQLI_ASSOC)  ;?>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../css/landing.css"><script defer src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>


<div class="break"></div>
<div class="upper_part  justify-content-center align-items-center">
  <div class="conttainer">
    <span class="mytext1"><?php echo $languages[$x]["WELCOME_AT"] ?> </span>
    <span class="mytext2">  </span>
  </div>
</div>

<!-- Header -->
<header class="masthead">
  <div class="container">
    <div class="row">
      <div class="col-md-5 offset-md-1 carouselleft">
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img class="d-block w-100" src="../img/animal2.jpg">
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="../img/dog.jpg">
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="../img/cat.jpg">
            </div>
            <a class="carousel-control-prev arrow" href="#carouselExampleFade" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next arrow" href="#carouselExampleFade" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
      </div>
      <div class="col-md-5 col-sm-10 offset-md-1 offset-sm-1">
        <div class="righttext">
          <h1 class="pb-3"><?php echo $languages[$x]["page_title"]; ?></h1>
            </form> <!-- NEVER REMOVE THIS INVISIBLE CLOSING TAG BECAUSE PAYPAL WONT WORK -->
            <form id="donate" action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">
              <input type="hidden" name="cmd" value="_s-xclick">
              <input type="hidden" name="hosted_button_id" value="9NW8L34KBXKNG">
              <button class="btn btn-success mt-3 donate"><input type="hidden" border="0" name="submit" ><?php echo $languages[$x]["donate"] ?></button>
            </form>
        </div>
      </div>
    </div>
  </div>
</header>

<section class="running-text">
  <div class="container">
    <div class="row">
      <div class="col-10 offset-1">
        <marquee behavior="scroll" direction="left">
          <?php 
          $sql ="SELECT * FROM running_text";
          $runRows = mysqli_query($conn, $sql);
          $runResult = $runRows->fetch_all(MYSQLI_ASSOC);
          echo $runResult[0]['text_content_'.$x]; 
          ?>
        </marquee>
      </div>
    </div>
  </div>
</section>

<section class="part2">
 <div class="container">
   <div class="row">
    <div class="col-10 offset-1">
      <h4 class="textt"><?php echo $languages[$x]["looking_for"] ?></h4>
    </div>
    <div class="col-10 offset-1 ">
      <div class="row justify-content-between">
        <?php foreach ($result as $dog ) { ?>
         <div class="col-lg-3 col-md-6 mb-4 smallbox">
           <img class="smallpic" src="../image_upload/<?php echo $dog["main_image_dog"];  ?>" onerror="this.src = '../img/no-image_dog.jpg';" alt="">
           <div class="top-left"><span class="imgtext landing_link"><?php echo $dog["dog_name"];  ?></span></div>
           <div class="bottomtext">
             <p class="landing_link"><?php echo $languages[$x]["dog_".$dog["gender"]]; ?></p>
           </div>
           
           </div><?php }; ?>
           <?php foreach ($result2 as $cat ) { ?>
             <div class="col-lg-3 col-md-6 mb-4 smallbox">
               <img class="smallpic" src="../image_upload/<?php echo $cat["main_image"];  ?>" onerror="this.src = '../img/no-image_cat.jpg';" alt="">
               <div class="top-left"><span class="imgtext landing_link"><?php echo $cat["cat_name"];  ?></span></div>
               <div class="bottomtext">
                 <p class="landing_link"><?php echo $languages[$x]["cat_".$cat["gender"]];;  ?></p>
               </div>
               
               </div><?php }; ?>
             </div>
           </div>
         </div>
       </div>
     </section> 

     <section class="part3">
       <div class="container">
         <div class="row">
          <div class="col-10 offset-1">
            <h4 class="textt"><?php echo $languages[$x]["our_mission"] ?></h4>
          </div>
          <div class="col-10 offset-1 ">
            <div class="row justify-content-between">
              
             <div class="col-lg-6 col-md-12 mb-4 smallbox" data-link='adoption.php'>
               <img class="smallpic" src="../img/photo-1489777404823-acccdc7d9994.jpg" alt="">
               <a class="nocolor" href="adoption.php" ><div class="top-left"><span class="imgtext landing_link"><?php echo $languages[$x]["how_adopt"] ?></span></div></a>
               <div class="bottomtext">
                 <p class="landing_link"><a href="adoption.php" ><?php echo $languages[$x]["about_adopt"] ?></a></p>
               </div>
             </div>
             
             
             <div class="col-lg-6 col-md-12 mb-4 smallbox" data-link='helpus.php' >
               <img class="smallpic" src="../img/dog-1369362.jpg" alt="">
               <a class="nocolor" href="helpus.php" ><div class="top-left"><span class="imgtext landing_link"><?php echo $languages[$x]["why_support"] ?></span></div></a>
               <div class="bottomtext">
                 <p class="landing_link"><a href="helpus.php" ><?php echo $languages[$x]["about_support"] ?></a></p>
               </div>
             </div> 

           </div>
         </div>
       </div>
     </div>
   </section>
   <div class="break2">
    
   </div>
   <section class="part4">
    <div class="container mb-4">

      <div class="row">
        <div class="col-md-4 mb-4">
          <div class="counter">
            <i class="fas fa-user-alt fa-2x"></i>
            <h2 class="timer count-title count-number" data-to="<?php 
            $resultt = mysqli_query($conn,"SELECT * FROM counter");
            while($row3 = mysqli_fetch_array($resultt))
            { echo $row3['numberr'];}?>" data-speed="3500"></h2>
            <p class="count-text "><?php echo $languages[$x]["visitors"] ?></p>
          </div>
        </div>
        
        <div class="col-md-4 mb-4">
          <div class="counter">
            <i class="fas fa-dog fa-2x"></i>
            <h2 class="timer count-title count-number" data-to="<?php 
            $resultt2 = mysqli_query($conn,"SELECT * FROM dog ORDER BY dog_id DESC LIMIT 1");
            while($row4 = mysqli_fetch_array($resultt2))
            { echo $row4['dog_id']+8973;}?>" data-speed="3500"></h2>
            <p class="count-text "><?php echo $languages[$x]["saved_dogs"] ?></p>
          </div></div>
          <div class="col-md-4 mb-4">
            <div class="counter">
              <i class="fa fa-cat fa-2x"></i>
              <h2 class="timer count-title count-number" data-to="<?php 
              $resultt3 = mysqli_query($conn,"SELECT * FROM cat ORDER BY cat_id DESC LIMIT 1");
              while($row5 = mysqli_fetch_array($resultt3))
              { echo $row5['cat_id']+1082;}?>" data-speed="3500"></h2>
              <p class="count-text "><?php echo $languages[$x]["saved_cats"] ?></p>
            </div>
          </div>
        </div>
      </div>
    </section>  
    <div class="break2">
      
    </div>
<script type="text/javascript">
    $(window).on('load',function(){
        $('#myPopModal').modal('show');
    });
</script>
    <script>(function ($) {
      $.fn.countTo = function (options) {
        options = options || {};
        
        return $(this).each(function () {
      // set options for current element
      var settings = $.extend({}, $.fn.countTo.defaults, {
        from:            $(this).data('from'),
        to:              $(this).data('to'),
        speed:           $(this).data('speed'),
        refreshInterval: $(this).data('refresh-interval'),
        decimals:        $(this).data('decimals')
      }, options);
      
      // how many times to update the value, and how much to increment the value on each update
      var loops = Math.ceil(settings.speed / settings.refreshInterval),
      increment = (settings.to - settings.from) / loops;
      
      // references & variables that will change with each update
      var self = this,
      $self = $(this),
      loopCount = 0,
      value = settings.from,
      data = $self.data('countTo') || {};
      
      $self.data('countTo', data);
      
      // if an existing interval can be found, clear it first
      if (data.interval) {
        clearInterval(data.interval);
      }
      data.interval = setInterval(updateTimer, settings.refreshInterval);
      
      // initialize the element with the starting value
      render(value);
      
      function updateTimer() {
        value += increment;
        loopCount++;
        
        render(value);
        
        if (typeof(settings.onUpdate) == 'function') {
          settings.onUpdate.call(self, value);
        }
        
        if (loopCount >= loops) {
          // remove the interval
          $self.removeData('countTo');
          clearInterval(data.interval);
          value = settings.to;
          
          if (typeof(settings.onComplete) == 'function') {
            settings.onComplete.call(self, value);
          }
        }
      }
      
      function render(value) {
        var formattedValue = settings.formatter.call(self, value, settings);
        $self.html(formattedValue);
      }
    });
      };
      
      $.fn.countTo.defaults = {
    from: 0,               // the number the element should start at
    to: 0,                 // the number the element should end at
    speed: 1000,           // how long it should take to count between the target numbers
    refreshInterval: 100,  // how often the element should be updated
    decimals: 0,           // the number of decimal places to show
    formatter: formatter,  // handler for formatting the value before rendering
    onUpdate: null,        // callback method for every time the element is updated
    onComplete: null       // callback method for when the element finishes updating
  };
  
  function formatter(value, settings) {
    return value.toFixed(settings.decimals);
  }
}(jQuery));

    jQuery(function ($) {
  // custom formatting example
  $('.count-number').data('countToOptions', {
    formatter: function (value, options) {
      return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
    }
  });
  
  // start all the timers
  $('.timer').each(count);  
  
  function count(options) {
    var $this = $(this);
    options = $.extend({}, options || {}, $this.data('countToOptions') || {});
    $this.countTo(options);
  }

$('.smallbox').each(function() {
  var box = $(this);

  var link = box.data('link');

  if (typeof link !== 'undefined') {

    box.css("cursor","pointer");
    box.on('click', function() {
      window.location = link;

    })
  }
});

});</script>

<?php include("includes/footer.inc.php"); ?>

