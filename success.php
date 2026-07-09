
<?php
session_start();
unset($_SESSION['promo_id']);
    unset($_SESSION['total_discount']);
    unset($_SESSION['after_grand_total']);
    unset($_SESSION['promo_code_c']);
include_once('adm/connect.php');
 if(isset($_COOKIE['user']))
 {
    $cookie=$_COOKIE['user'];
    $cart=mysqli_query($con,"update tbl_cart set status=0 where product_cookie='$cookie'");
    
}
?>
      <html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link href='https://fonts.googleapis.com/css?family=Lato:300,400|Montserrat:700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
@font-face {
    font-family: "Akkurat-Regular";
    src:url("../font/akkurat/lineto-akkurat-regular.eot");
    src:url("../font/akkurat/lineto-akkurat-regular.eot?#iefix") format("embedded-opentype"),
        url("../font/akkurat/lineto-akkurat-regular.woff") format("woff");
    font-weight: normal;
    font-style: normal;
}

.cf:before,
.cf:after {
    content: " ";
    display: table;
}
.cf:after {
    clear: both;
}

* {
	box-sizing: border-box;
}

html {
	font-size: 16px;
	background-color: #fffffe;
}
body {
	padding: 0 20px;
	min-width: 300px;
	font-family: 'Akkurat-Regular', sans-serif;
	background-color: #fffffe;
	color: #1a1a1a;
	text-align: center;
	word-wrap: break-word;
	-webkit-font-smoothing: antialiased
}
a:link,
a:visited {
	color: #fff;
}
a:hover,
a:active {
	color: #fff;
}

.site-header {
	margin: 0 auto;
	padding: 0;
	max-width: 820px;
}
.site-header__title {
	margin: 0;
	font-family: Montserrat, sans-serif;
	font-size: 2.5rem;
	font-weight: 700;
	line-height: 1.1;
	text-transform: uppercase;
	-webkit-hyphens: auto;
	-moz-hyphens: auto;
	-ms-hyphens: auto;
	hyphens: auto;
}

.main-content {
	margin: 0 auto;
	max-width: 820px;
}
.main-content__checkmark {
	font-size: 4.0625rem;
	line-height: 1;
	color: #fbb200;
}
.main-content__body {
	margin: 20px 0 0;
	font-size: 1rem;
	line-height: 1.4;
}

@media only screen and (min-width: 40em) {

	.site-header__title {
		font-size: 6.25rem;
	}
	.main-content__checkmark {
		font-size: 9.75rem;
	}
	.main-content__body {
		font-size: 1.25rem;
	}
	.site-footer {
		padding: 145px 0 25px;
	}
	.site-footer__fineprint {
		font-size: 1.125rem;
	}
}
    .btn-ct {
    font-weight: 600;
    border: 2px solid #fbb200;
    border-radius: 50px;
    font-size: 20px;
    padding: 12px 30px;
    background: #fbb200;
    color: #ffffff;
    display: -webkit-inline-box;
    display: -ms-inline-flexbox;
    display: inline-flex;
    -webkit-box-align: center;
    -ms-flex-align: center;    text-decoration: none;
    margin-top: 20px;
    align-items: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    text-transform: uppercase;
}
.kiss_emoji {
    width: 200px;
}
@media (max-width:767px) {
    .kiss_emoji {
        width: 100%;
    }
}
</style>

</head>
<body>
	<header class="site-header" id="header">
	    <img src="images/kiss-emoj.gif" class="kiss_emoji">
		<h1 class="site-header__title" data-lead-id="site-header-title">THANK YOU!</h1>
	</header>

	<div class="main-content">
		<i class="fa fa-check main-content__checkmark" id="checkmark"></i>
		<p class="main-content__body" data-lead-id="main-content-body"><b>Great news!</b><br> Your order has been successfully placed.</p>
	</div>
    <center>
        <a href="index.php" class="btn-ct">Back to Home</a>
    </center>

</body>
</html>
