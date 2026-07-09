<?php
session_start();
error_reporting(0);
include_once('adm/connect.php');


if(isset($_COOKIE['user']))
{
   
 $user=$_COOKIE['user'];
 
 $fetch_product=mysqli_fetch_array(mysqli_query($con,"select sum(cart_price*product_qty) as total_amt from tbl_cart where product_cookie='$user' and status=1"));
 $product_check=mysqli_num_rows(mysqli_query($con,"select * from tbl_cart where product_cookie='$user' and status=1"));
 
}


if(isset($_SESSION['customer_id']))
{
   
 $customer_id=$_SESSION['customer_id'];
 
 $total_wishlist=mysqli_num_rows(mysqli_query($con,"select * from tbl_wishlist where user_id='$customer_id' and status=1"));
 
 
}

?>


<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <base href="https://rnvsports.co.in/">
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>E-commerce</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
 
        <link rel="shortcut icon" href="favicon-32x32.png" type="image/x-icon">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <!-- All css here -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/all.min.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/meanmenu.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/slick.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/font-futuraPT.css">
        <link rel="stylesheet" href="css/default.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
        
          
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
     
<style>
/*--------------------------------
            Preloader
-----------------------------------*/
#preloader {
  background-color: #fff;
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 9999999999999999;
}

#status {
  width: 100%;
  display: flex;
  align-items: center;
  height: 100%;
  justify-content: center;
}      
</style>
</head>
<body>
    
<!-- <div id="preloader">-->
<!--    <div id="status">-->
<!--        <img src="images/loader_img.gif" style="width:400px;" alt="img" />-->
<!--    </div>-->
<!--</div>-->
    
<div class="topbar extra-padding-55 d-lg-block d-none">
    <div class="container-fluid ">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-8">
                <div class="helpdesk">
                    <ul>
                        <li><i class="fa fa-mobile-phone" aria-hidden="true"></i> Customer Care Toll Free Number : +91-9911820202</li>
                        <li><i class="fa fa-clock-o" aria-hidden="true"></i> 6 Days a week from 11:00 am to 7:00 pm</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <ul class="shipping-sec">
                    <li><i class="fa fa-send" aria-hidden="true"></i>FREE SHIPPING ALL OVER INDIA</li>
                </ul>
            </div>
        </div>
    </div>
</div>    
    
<div class="bottom_header extra-padding-55">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2">
                <div class="logo white-bg z-index1 position-relative d-lg-block d-none">
                    <a href="index.php" class="d-block" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="stepmeds">
                        <img src="rnv_logo-removebg-preview.png" alt="stepmeds">
                    </a>
                </div>
            </div>
            <div class="col-md-10">
                <div class="top_search">
                    <form action="search.php" method="POST">
                        <div class="header-search position-relative mr-1 d-lg-inline-block" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Search">
                            <div class="search-form">
                            
                              <div class="d-none  d-lg-inline-block width100">
                                    <input type="text" placeholder="Search Anything You Want" id="search_product" name="search_data" class="border-0 width100 gray-bg4">
                                
                              </div>
                             
                            </div>
                        </div>
                        <div class="float-right d-none d-lg-inline-block">
                            <button type="submit" name="search" class="web-btn header-btn theme-border1 d-inline-block text-capitalize white theme-bg position-relative over-hidden pl-35 pr-35 ptb-12"><i class="fal fa-search"></i></button>
                        </div>
                    </form>
                    <div class="header-right d-flex align-items-center">
                        <ul class="header-account d-none d-md-block mr-10">
                            <li class="d-none d-md-inline-block">
                                <?php 
                                if(isset($_SESSION['customer_id']))
                                { ?>
                                <a href="dashboard.php" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="My Account" class="dark-black-color"><span><i class="fal fa-user-circle"></i></span>
                                </a>
                                <?php }
                                else
                                { ?>
                                 <a href="login.php" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Login" class="dark-black-color"><span><i class="fal fa-user-circle"></i></span>
                                </a>   
                                <?php } ?>
                            </li>
                        </ul>
                        
                        <ul class="header-wishlist d-none d-md-block mr-10 pl-10 position-relative">
                               <?php 
                    if(isset($_SESSION['customer_id']))
            { ?> 
                            <li class="position-relative">
                                <a href="wishlist.php" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="View wishlist" class="dark-black-color"><span><i class="fal fa-heart"></i></span>
                                    <?php 
                                    if($total_wishlist>0)
                                    { ?>
                                    <span class="s-count position-absolute theme-bg text-white text-center"><?=$total_wishlist;?></span>
                                    <?php } ?>
                                </a>
                            </li>
                            <?php 
            }
            else
            { ?>
              <li class="position-relative">
                                <a href="login.php" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="View wishlist" class="dark-black-color"><span><i class="fal fa-heart"></i></span>
                                    <?php 
                                    if(isset($_SESSION['customer_id']))
                                    { ?>
                                    <span class="s-count position-absolute theme-bg text-white text-center"><?=$total_wishlist;?></span>
                                    <?php 
                                        }
                                        else
                                        { ?>
                                         <span style="display: none;" class="tp-header-action-badge" ><div id="wishlist_count">0</div></span>    
                                        <?php } ?>
                                </a>
                            </li>   
            <?php } ?>
                        </ul>
                        <ul class="h-shop position-relative pl-10 d-none d-md-block">
                            <li class="position-relative">
                                <ul class="header-cart-wrapper d-flex align-items-center">
                                    <li class="header-shopping-cart position-relative mr-15">
                                        <span class="" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Add to cart"><a href="shopping-cart.php"><i class="fal fa-shopping-bag"></i></a></span>
                                        <?php 
                        if(isset($_SESSION['customer_id']))
                        { ?>
                        <span class="s-count position-absolute theme-bg text-white text-center"><?php echo $product_check;?></span>
                        <?php } ?>
                                    </li>
                                    <li class="cart-content">
                                        <div class="my-cart">
                                            <span class="d-block">My cart</span>
                                        </div>
                                        <div class="cart-item cursor-pinter d-flex align-items-center">
                                            <a href="shopping-cart.php">
                                            <?php 
                                            if(isset($_SESSION['customer_id']))
                                            {
                                                ?>
                                            
                                            <span class="font600"><?php echo $product_check;?> item - <?php echo $fetch_product['total_amt'];?> </span></a>
                                             <?php
                                            }
                                            ?>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    
                </div>
                <div class="bottom_header">
                    <div class="main-menu main-menu-1">
                        <nav id="mobile-menu">
                            <ul class="d-block">
                                <?php
                                $result = explode('.',basename($_SERVER['PHP_SELF']));
  $page= $result[0];
                                ?>
                                <li <?php if($page=='index'){ ?> class="current-menu-item"<?php }else{ }  ?>><a href="index.php">Home</a></li>
                                <li <?php if($page=='shop'){ ?> class="current-menu-item"<?php } ?>><a href="shop.php">Products</a></li>
                                <li <?php if($page=='contact-us'){ ?> class="current-menu-item"<?php } ?>><a class="mr-0" href="contact-us.php">Contact Us</a></li>
                                <li <?php if($page=='about-us'){ ?> class="current-menu-item"<?php } ?>><a class="mr-0" href="about-us.php">About Us</a></li>
                                 <li <?php if($page=='dashboard' || $page=='login'){ ?> class="current-menu-item"<?php } ?>>
                                     <?php 
                                if(isset($_SESSION['customer_id']))
                                { ?>
                                    <a class="mr-0" href="dashboard.php">Dashboard</a>
                                    <?php 
                                }
                                else
                                { ?>
                                  <a class="mr-0" href="login.php">Login</a>   
                                <?php } ?>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

        <div class="mobile-menu-area pt-30 pb-30 d-lg-none">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-6">
                        <a href="index.php">
                            <div class="logo">
                                <img src="rnv_logo-removebg-preview.png" alt="">
                            </div>
                        </a>
                    </div>
                    <div class="col-6 ">
                        <button class="mobile-menubar bar-style">
                            <i class="fal fa-bars"></i>
                        </button>
                        <ul class="h-shop position-relative pl-25 d-md-block float-end pr-10">
                            <li class="position-relative">
                                <ul class="header-cart-wrapper d-flex align-items-center">
                                    <li class="header-shopping-cart cart-item position-relative">
                                        <span class="" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Add to cart"><i class="fal fa-shopping-bag"></i></span>
                                        <span class="s-count position-absolute h2-theme-bg text-white text-center">0</span>
                                    </li>
                                </ul><!-- /header-cart-wrapper -->
                                
                              
                            </li>
                        </ul><!-- /h-shop -->
                    </div>
                </div>
            </div>
        </div>
        <!--  ====== header extra info start================================== -->
        <!-- side-mobile-menu start -->
        <div class="side-mobile-menu bg-white pt-20 pb-30 pl-40 pr-40 pb-100 d-lg-none">
            <div class="close-icon d-flex justify-content-end mt-0">
                <a class="close-menu d-block" href="javascript:void(0);"><span class="icon-clear"></span></a>
            </div>

            <div class="header-search-content position-relative d-block d-xl-none mt-20">
                <form action="search.php" method="POST" class="position-relative" style="display: flex;">
                    <input class="form-control rounded-0 h5-theme-color px-0" id="search_product_new" name="search_data" type="text" placeholder="Enter Keyword...">
                    <button type="submit" name="search" style="border: #ff6d2e;
    background: #ff7a33;"><span class="icon-search"></span></button>
                </form>
            </div>
            <div class="mobile-menu mt-10"></div>
            <div class="menu-login pt-10 d-block d-md-none">
                <ul class="header-login d-flex justify-content-between mobile-border-b ">
                     <?php 
                     if(isset($_SESSION['customer_id']))
                     { ?>
                    <li><a href="dashboard.php">My Account</a></li>
                    <?php 
                     }else
                     { ?>
                     <li><a href="login.php">My Account</a></li>    
                     <?php } ?>
                     <?php 
                     if(isset($_SESSION['customer_id']))
                     { ?>
                    <li><a href="dashboard.php"><i class="fal fa-user-circle"></i></a></li>
                    <?php } 
                    else
                    { ?>
                     <li><a href="login.php"><i class="fal fa-user-circle"></i></a></li>   
                    <?php } ?>
                </ul>
                <ul class="header-heart d-flex justify-content-between mobile-border-b">
                    <li><a href="wishlist.php">Wishlist</a></li>
                    <li><a href="wishlist.php"><span class="icon-heart"></span></a></li>
                </ul>
            </div><!-- /header-right -->
            
        <h6 class="light-black-color2 font600 mt-30 pb-1 border-primary-b d-inline-block">Contact us</h6>
        <ul class="contact-add mt-20">
            <li class="mb-15 primary-color">
                <span class="pr-1"><i class="fas fa-map-marker-alt"></i></span> 
                C 3/14, BASEMENT FLOOR, NEAR ADITYA MEDICAL CENTRE, RANA PRATAP BAGH, DELHI-110007, INDIA
            </li>
            <li class="mb-20 primary-color">
                <span class="pr-1"><i class="far fa-envelope"></i></span> 
                <a href="mailto:hiralalsurgicals@gmail.com" class="__cf_email__" data-cfemail="c4a7abaab0a5a7b084a1bca5a9b4a8a1eaa7aba9"> hiralalsurgicals@gmail.com</a>
            </li>
            <li class="mb-15">
                <a class=" primary-color" href="tel:+919911820202"><span class="pr-1"><i class="fas fa-phone"></i></span> +919911820202</a>
            </li>
        </ul>
        <ul class="social-link pt-2 mb-150">
            <li class="d-inline-block">
                <a class="active  primary-color-center pr-0 d-inline-block transition-3" href="#"><i class="fab fa-facebook-f"></i></a>
            </li>
            <li class="d-inline-block">
                <a class=" primary-color text-center pr-0 d-inline-block transition-3" href="#"><i class="fab fa-twitter"></i></a>
            </li>
            <li class="d-inline-block">
                <a class=" primary-color text-center pr-0 d-inline-block transition-3" href="#"><i class="fab fa-instagram"></i></a>
            </li>
            <li class="d-inline-block">
                <a class=" primary-color text-center pr-0 d-inline-block transition-3" href="#"><i class="fab fa-behance"></i></a>
            </li>
            <li class="d-inline-block">
                <a class=" primary-color text-center pr-0 d-inline-block transition-3" href="#"><i class="fab fa-youtube"></i></a>
            </li>
        </ul><!-- social-link -->
        </div><!-- /side-mobile-menu -->
        <div class="body-overlay"></div>
        <!-- header extra info end  -->

        <!-- header search details start -->
      
        <!-- header extra info end  -->
       
      