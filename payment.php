 <style>
     @media only screen and (max-width: 600px) {
  .navbar-area {
        position: inherit!important;

  }
}
 </style>
 
  <?php  
 include("header.php"); 
session_start();
include_once('../adm/connect.php');
// require_once('razzor/config.php'); 

if(isset($_GET['order_id'])){
    $order_id=base64_decode($_GET['order_id']);
    $amount=base64_decode($_GET['amt']);
    $cus_id=base64_decode($_GET['cus_id']);
}


?>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<meta name="description" content="uaevisa-online.org – About Us" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>Payment</title>
<link rel="shortcut icon" href="images/favicon.png"/>
<link href="css/stylee42d.css?version=1" type="text/css" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="css/mobile-responsive.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="application/ld+json">


{
  "@context": "http://schema.org/",
  "@type": "Product",
  "name": "uaevisa-online.org – About Us",
  "image": "https://uaevisa-online.org/images/uaevisa-logo.png",
  "description": "uaevisa-online.org – About Us",
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.51",
    "ratingCount": "3784"
  }
}
</script>

<!-- End rich snippets -->

<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/scrolltopcontrol.js"></script>
<script src="js/slideshow.js"></script>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<head>
<meta charset="UTF-8">
<meta name="description" content="uaevisa-online.org – About Us" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="shortcut icon" href="../images/favicon.png"/>
<link href="../css/stylee42d.css?version=1" type="text/css" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="../css/mobile-responsive.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="application/ld+json">

{
  "@context": "http://schema.org/",
  "@type": "Product",
  "name": "uaevisa-online.org – About Us",
  "image": "https://uaevisa-online.org/images/uaevisa-logo.png",
  "description": "uaevisa-online.org – About Us",
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.51",
    "ratingCount": "3784"
  }
}
</script>
<!-- End rich snippets -->

<script src="../js/jquery-1.9.1.min.js"></script>
<script src="../js/scrolltopcontrol.js"></script>
<script src="../js/slideshow.js"></script>
<!DOCTYPE html>
<html lang="en">
<!-- head -->
<meta charset="utf-8">
<title>Payment Confirmation</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="MobileOptimized" content="320">
<link rel="icon" type="image/icon" href="images\favicon.png">
<!-- theme styles -->
<link href="../css\bootstrap.min.css" rel="stylesheet" type="text/css"> <!-- bootstrap css -->
<!-- google fonts -->
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet"><!--  google fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet"> <!-- google fonts -->
<link rel="stylesheet" type="text/css" href="../vendor\my-icons-collection\font\flaticon.css"> <!--  fontawesome css -->
<link rel="stylesheet" type="text/css" href="../vendor\fontawesome\css\all.css"> <!--  fontawesome css -->
<link rel="stylesheet" type="text/css" href="../vendor\navigation\menumaker.css"> <!-- navigation css -->
<link rel="stylesheet" type="text/css" href="../vendor\owl\css\owl.carousel.min.css"> <!-- owl carousel css -->
<link href="../css\style.css" rel="stylesheet" type="text/css"> <!-- custom css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- top bar end-->
<!-- page-banner start -->

<!-- page-banner end -->
<!-- home slider start-->
<section id="home-slider" class="home-main-block owl-carousel">
 	<div class="item home-slider-block-two" style="background-image: url('../images/bg/breadump-bg.jpg')">
 		<div class="overlay-bg"></div>
 	</div>   
</section> 
<style type="text/css">
	.razorpay-payment-button
	{
	    background: #f55a20;
	    /*background:url('pay-button-removebg-preview.png');*/
	border:none; width:100%; background-size:100% 100%; background-repeat:no-repeat; 
height: 47px;
    width: 113px;
font-weight: bold; padding:2px 20px; border-radius: 5px;cursor: pointer;border: 2px double;
    margin-left: 25px;
    margin-top: 11px;
	    
	}

.razorpay-payment-button:hover{transform:scale(1.1)}
</style>
<!-- home slider end-->
<!-- start about -->
<section id="about-two" class="about-main-block-two about-page" style="margin-left:-2px;margin-top:100px;">
	<div class="container">
		<div class="row" style="text-align: center;">
				<label for="fname" style="font-size: 30px;">&nbsp;Accepted Cards</label><br>
           <p style="    margin-left: -72px;
">
              <i class="fa fa-cc-visa" style="color:navy;font-size:70px;margin-left:53px;"></i>
              <i class="fa fa-cc-amex" style="color:blue;font-size:70px;margin-left:53px;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;font-size:70px;margin-left:53px;"></i>
              <i class="fa fa-cc-discover" style="color:orange;font-size:70px;margin-left:53px;"></i>
              </p>
	<br>		  

	<div class="section" style="background: #343a40;padding: 16px;box-shadow: 0px 0px 2px 0px;
    padding: 8px;
    margin: 8px;
    margin-bottom: 5%;
    background: linear-gradient(to bottom, #ffffff 5%,#a29999 100%);">
                   <form action="" method="POST">
    <!--                   <input type="hidden"  name="order_id" value="<?php echo $order_id ;?>">-->
    <!--                   <input type="hidden"  name="cus_id" value="<?php echo $cus_id ;?>">-->
                       
      	     
    <!--                <div class="row">-->
    <!--    				<div class="col-sm-12 ">-->
    <!--                        <label style="font-size: 30px;-->
    <!--font-weight: bold;margin-bottom:5px;">Amount</label>-->
  
                            <input  style="
    font-size: 22px;"  type="text" name="amount" value=" Rs. <?php  echo  $amount; ?> INR" readonly class="form-control">
    <!--                        <input type="hidden" name="ins" value="<?= $amount;?>">-->
    <!--                    </div>-->
    <!--                </div>-->
    <!--            <script src="https://checkout.razorpay.com/v1/checkout.js"    -->
				<!--		data-key="<?php echo $razor_api_key; ?>"  // Enter the Test API Key ID generated from Dashboard → Settings → API Keys  -->
				<!--		data-amount="<?php echo $amount ; ?>00"  // Amount is in currency subunits. Default currency is INR. Hence, 29935 refers to 29935 paise or INR 299.35.  -->
				<!--		data-currency="INR"  //You can accept international payments by changing the currency code. Contact our Support Team to enable International for your account  -->
    <!--                    data-buttontext=""    -->
				<!--		data-name="rnv"   -->
				<!--		data-description="rnv"    -->
				<!--		data-image="https://salvatoreindia.co.in/rnvsports/stepmeds/RNV_3337_download-removebg-preview.png" -->
				<!--		data-prefill.name="rnv"    -->
				<!--		data-prefill.email="example@example.com"    -->
				<!--		data-theme.color="#ee7203"></script>-->
				<!--		<input type="hidden" custom="Hidden Element" name="hidden">-->
    <button class="razorpay-payment-button" type="submit" name="submit_form">Pay Now</button>
						</form>
				
				<?php
				
				if (isset($_POST['submit_form'])) {
				    $t=rand(011111,1000000000000);

				 $merchantKey = 'd0d5f519-0115-476d-8ee2-6604f93938c8';// Change live key
  $data = array(
      "merchantId" => "M1RDSSZWZBWY",// change live ID
      "merchantTransactionId" => $t,
      "merchantUserId" => "MUID123",
      "amount" => $amount*100,
      "redirectUrl" => "https://rnvsports.co.in/razzor/charge.php?order_id=".$order_id."&cus_id=".$cus_id,//Change This url
      "redirectMode" => "POST",
      "callbackUrl" => "https://rnvsports.co.in/razzor/charge.php?order_id=".$order_id."&cus_id=".$cus_id,//Change This url
      "mobileNumber" => $number,//Change Mobile No
      "paymentInstrument" => array(
          "type" => "PAY_PAGE"
      )
  );
  // Convert the Payload to JSON and encode as Base64
  $payloadMain = base64_encode(json_encode($data));

  $payload = $payloadMain."/pg/v1/pay".$merchantKey;
  $Checksum = hash('sha256', $payload);
  $Checksum = $Checksum.'###1';

//X-VERIFY  -	SHA256(base64 encoded payload + "/pg/v1/pay" + salt key) + ### + salt index

  $curl = curl_init();
  curl_setopt_array($curl, [
   // CURLOPT_URL => "https://api-preprod.phonepe.com/apis/pg-sandbox/pg/v1/pay",
     CURLOPT_URL => "https://api.phonepe.com/apis/hermes/pg/v1/pay",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "POST",
    CURLOPT_POSTFIELDS => json_encode([
      'request' => $payloadMain
    ]),
    CURLOPT_HTTPHEADER => [
      "Content-Type: application/json",
      "X-VERIFY: ".$Checksum,
      "accept: application/json"
    ],
  ]);

  $response = curl_exec($curl);
  $err = curl_error($curl);

  curl_close($curl);

  if ($err) {
      //   echo "cURL Error #:" . $err;
      header('Location: paymentfailed.php?cURLError='.$err);
  } else {
      $responseData = json_decode($response, true);
      $url = $responseData['data']['instrumentResponse']['redirectInfo']['url'];
      echo  "<script>window.location.href='".$url."'</script>";
  }
				}
				?>
						</div>
					<!--<a href="services.html" class="btn btn-primary" title="about">Achievements <i class="flaticon-next"></i></a>-->
				
		</div>
		
	</div>
</section>

<!-- end about -->

<!-- footer start-->
<footer id="footer" class="footer-main-block">
	<div class="container">
			
	
            
		</div>
	</div>
<!-- footer end-->
<!-- jquery -->
<script src="../js\jquery-2.min.js"></script> <!-- jquery library js -->
<script src="../js\jquery-1.11.3.min.js"></script> <!-- jquery library js -->
<script src="../js\bootstrap.bundle.js"></script> <!-- bootstrap js -->
<script src="../vendor\owl\js\owl.carousel.min.js"></script> <!-- owl carousel js -->	
<script src="../vendor\smoothscroll\smooth-scroll.js"></script> <!-- smooth scroll js -->
<script src="../vendor\popup\jquery.magnific-popup.min.js"></script> <!-- popup js-->
<script src="../vendor\navigation\menumaker.js"></script> <!-- navigation js--> 
<script src="../vendor\mailchimp\jquery.ajaxchimp.js"></script> <!-- mail chimp js --> 
<script src="../vendor\counter\waypoints.min.js"></script> <!-- facts count js required for jquery.counterup.js file -->
<script src="../vendor\counter\jquery.counterup.js"></script> <!-- facts count js-->
<script src="../js\theme.js"></script> <!-- custom js -->
<!-- end jquery -->
<script>
jQuery(function($) {
    // Asynchronously Load the map API 
    var script = document.createElement('script');
    script.src = "https://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
    document.body.appendChild(script);
  });
  function initialize(){
    var myLatLng = {lat: 25.3500, lng: 74.6333}; // Insert Your Latitude and Longitude For Footer Wiget Map
    var mapOptions = {
      center: myLatLng, 
      zoom: 15,
      disableDefaultUI: true,
      scrollwheel: false,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      styles: [{"featureType":"landscape","stylers":[{"saturation":-100},{"lightness":65},{"visibility":"on"}]},{"featureType":"poi","stylers":[{"saturation":-100},{"lightness":51},{"visibility":"simplified"}]},{"featureType":"road.highway","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"road.arterial","stylers":[{"saturation":-100},{"lightness":30},{"visibility":"on"}]},{"featureType":"road.local","stylers":[{"saturation":-100},{"lightness":40},{"visibility":"on"}]},{"featureType":"transit","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"administrative.province","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":-25},{"saturation":-100}]},{"featureType":"water","elementType":"geometry","stylers":[{"hue":"#ffff00"},{"lightness":-25},{"saturation":-97}]}]     
    }
    // For Footer Widget Map
    var map = new google.maps.Map(document.getElementById("location"), mapOptions);
    var image = 'images/icons/map.png';
    var beachMarker = new google.maps.Marker({
      position: myLatLng, 
      map: map,   
      icon: image
    });    
  }
</script>
<!--End of Tawk.to Script (0.3.3)-->	<script type="text/javascript">
		var c = document.body.className;
		c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
		document.body.className = c;
	</script>
    <script>
$("#day30").click(function(){
	$(".visa30").show();
  $(".visa14").hide();
  $(".visa30m").hide();
  $(".visa60m").hide();
  $(".visa90m").hide();
  $(".visa60").hide();
  $(".visa90").hide();
  $("#day30").addClass('actib_visa');
 $("#days14").removeClass('actib_visa');
 $("#day30m").removeClass('actib_visa');
 $("#day60m").removeClass('actib_visa');
 $("#day90m").removeClass('actib_visa');
 $("#day60").removeClass('actib_visa');
 $("#day90").removeClass('actib_visa');
});

$("#day14").click(function(){
	$(".visa14").show();
	$(".visa30").hide();
   $(".visa30m").hide();
  $(".visa60m").hide();
  $(".visa90m").hide();
  $(".visa60").hide();
  $(".visa90").hide();
  $("#day14").addClass('actib_visa');
 $("#day30").removeClass('actib_visa');
 $("#day30m").removeClass('actib_visa');
 $("#day60m").removeClass('actib_visa');
 $("#day90m").removeClass('actib_visa');
 $("#day60").removeClass('actib_visa');
 $("#day90").removeClass('actib_visa');
});

$("#day30m").click(function(){
    $(".visa30m").show();
	$(".visa30").hide();
   $(".visa14").hide();
  $(".visa60m").hide();
  $(".visa90m").hide();
  $(".visa60").hide();
  $(".visa90").hide();
  $("#day30m").addClass('actib_visa');
 $("#day30").removeClass('actib_visa');
 $("#day14").removeClass('actib_visa');
 $("#day60m").removeClass('actib_visa');
 $("#day90m").removeClass('actib_visa');
 $("#day60").removeClass('actib_visa');
 $("#day90").removeClass('actib_visa');
});

$("#day60").click(function(){
    $(".visa60").show();
	$(".visa30").hide();
   $(".visa14").hide();
  $(".visa60m").hide();
  $(".visa90m").hide();
  $(".visa30m").hide();
  $(".visa90").hide();
  $("#day60").addClass('actib_visa');
 $("#day30").removeClass('actib_visa');
 $("#day14").removeClass('actib_visa');
 $("#day60m").removeClass('actib_visa');
 $("#day90m").removeClass('actib_visa');
 $("#day30m").removeClass('actib_visa');
 $("#day90").removeClass('actib_visa');
});

$("#day60m").click(function(){
    $(".visa60m").show();
	$(".visa30").hide();
   $(".visa14").hide();
  $(".visa30m").hide();
  $(".visa90m").hide();
  $(".visa60").hide();
  $(".visa90").hide();
  $("#day60m").addClass('actib_visa');
 $("#day30").removeClass('actib_visa');
 $("#day14").removeClass('actib_visa');
 $("#day30m").removeClass('actib_visa');
 $("#day90m").removeClass('actib_visa');
 $("#day60").removeClass('actib_visa');
 $("#day90").removeClass('actib_visa');
});

$("#day90").click(function(){
    $(".visa90").show();
	$(".visa30").hide();
   $(".visa14").hide();
  $(".visa60m").hide();
  $(".visa90m").hide();
  $(".visa60").hide();
  $(".visa30m").hide();
  $("#day90").addClass('actib_visa');
 $("#day30").removeClass('actib_visa');
 $("#day14").removeClass('actib_visa');
 $("#day60m").removeClass('actib_visa');
 $("#day90").removeClass('actib_visa');
 $("#day60").removeClass('actib_visa');
 $("#day30m").removeClass('actib_visa');
});

$("#day90m").click(function(){
    $(".visa90m").show();
	$(".visa30").hide();
   $(".visa14").hide();
  $(".visa60m").hide();
  $(".visa30m").hide();
  $(".visa60").hide();
  $(".visa90").hide();
  $("#day90m").addClass('actib_visa');
 $("#day30").removeClass('actib_visa');
 $("#day14").removeClass('actib_visa');
 $("#day60m").removeClass('actib_visa');
 $("#day30m").removeClass('actib_visa');
 $("#day60").removeClass('actib_visa');
 $("#day90").removeClass('actib_visa');
});
</script>
</body>

<footer class="row footerSection pull_left fixedFooterTrackappPage">
<div class="">
<div class="row marginBottom paddingInBoxExtra">
<?php include("footer.php");?>
<!-- body end -->
</html> 