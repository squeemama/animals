<?php include("includes/navbar.inc.php"); ?>
<link rel="stylesheet" type="text/css" href="../css/contact.css">
<div class="break">

</div>

<div class="container">
	<div class="jumbotron backg4 p-3 p-md-5 text-white rounded">
        <div class="col-md-6 px-0">
          <h1 class="display-4 font-weight-bold"><?php echo $languages[$x]["tax_title"] ?></h1>
        </div>
      </div>
	<div class="row">
		<div class="col-md-12 mt-4" id="tax-text">
			<div class='col-md-12'><h4 class='text-center'><a class='text-success' target="_blank" href="../downloads/Vyhlasenie_2perc_dani_2020.pdf">1) Vyhlásenie o poukázaní podielu zaplatenej dane z príjmov fyz. osoby</a></h4></div>
			<div class='col-md-12'><h4 class='text-center'><a class='text-success' target="_blank" href="../downloads/potvrdenie_2perc_2020.pdf">2) Potvrdenie od zamestnávateľa od zaplatení dane</a></h4></div>
			<div class='col-md-12'><h4 class='text-center'><a class='text-success' target="_blank" href="../downloads/ako_poukazat_2_perc.pdf">3) Ako poukázať 2%?</a></h4></div>
			<br>
			<br>
			<p><?php echo $languages[$x]["tax_text"] ?></p>
		</div>
	</div>
</div>
<div class="break">
	
</div>
<?php include("includes/footer.inc.php"); ?>
