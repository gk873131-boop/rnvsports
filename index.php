<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include('adm/connect.php');
?>
<style>
    .slider-area {
        position:relative;
    }
    .slider-area img {
        height: 650px;
        width: 100%;
    }
    .slider-area .slider-content {
            position: absolute;
    top: 34%;
    width: 35%;
    }
    @media screen and (max-width: 767px) {
       .slider-area [data-overlay="6"]::before {
            opacity: 0 !important;
        }
        .slider-area img {
            height: 250px !important;
        }
        .slider-area .slider-content {
            position: absolute !important;
            top: 30%;
            left: 6%;
        }
        .slider-content h2 {
            font-size: 25px !important;
        }
        .slider-content .web-btn {
            font-size: 10px !important;
            padding: 12px 15px !important;
        }
    }
    .slider-area .slick-prev {
            left: 25px;
    z-index: 1;
    }
    .slider-area .slick-next {
    right: 25px;
}
</style>

<main>

       
<!--<div class="slider-area over-hidden slider1">
    <div class="slider-active">
    <?php 
    $fetch_banner=mysqli_query($con,"select * from tbl_home_banner where status=1");
    while($res_banner=mysqli_fetch_array($fetch_banner)){
    ?>
    
        <div class="single-slider" data-overlay="6">
        <img src="adm/uploads/<?=$res_banner['image'];?>" alt="">
        
        <div class="container">
            <div class="row">
                <div class="col-xl-12  col-lg-12  col-md-12  col-sm-10 col-12 d-flex align-items-center">
                        <div class="slider-content">
                            <img src="images/rnv_logo.png" style="width: 130px;
height: auto;
margin-left: 0;">
                            <h2 data-animation="fadeInLeft" data-delay="1s" style="color: aliceblue;" class="light-black-color2 mb-1 text-capitalize pb-25 font500 font-pt"><?=$res_banner['name'];?></h2>
                     
                            <a data-animation="fadeInUp" data-delay="1.7s" href="shop.php" class="web-btn  d-inline-block text-uppercase white theme-bg position-relative over-hidden pl-30 pr-30 ptb-17">Shop Collection</a>
                        </div>
                </div>
            </div>
        </div>
    </div>
    
        <?php } ?>
    </div>
</div>-->


<div class="banner_main">
    <img src="https://cdn01.buxtonco.com/news/112/blog-babyboomers__large.jpg">
</div>

<section class="find-body-part">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-6 col-lg-6 ">
                <div class="section-title text-left mb-30">
                    <h3 class="font-pt light-black-color2 pb-1">Find Your Product</h3>
                </div>
                <ul class="find-product">
                    <li><a href="#hotselling"> Hot Selling  </a></li>
                    <li><a href="#featured"> Featured  </a></li>
                    <li><a href="#mostpurchased"> Most Purchased </a></li>
                    <li><a href="#HandPicked"> Hand Picked </a></li>
                    
                </ul>
            </div>
            <div class="col-xs-12 col-md-6 col-lg-6 find-product-main">
                <div class="find-product-img"><img width="450" height="622" src="images/AA.png" alt="body-part"></div>
            </div>
        </div>
    </div>
</section>

<div class="youtube_link">
    <div class="container">
        <div class="row">
            <?php
$res_video=mysqli_fetch_array(mysqli_query($con, "select * from tbl_video"));
            ?>
            <div class="col-md-6">
                <iframe src="https://www.youtube.com/embed/<?=$res_video['video1']?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
            <div class="col-md-6">
                <iframe src="https://www.youtube.com/embed/<?=$res_video['video2']?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
        </div>
    </div>
</div>

<!--<div class="banner-area mb-60">
    <div class="container">
        <div class="row">
            <?php 
            $fetch_left_banner=mysqli_query($con,"select * from tbl_left_banner where status=1");
            while($res_left_banner=mysqli_fetch_array($fetch_left_banner)){
            ?>
            <div class="col-xl-6 col-lg-6  col-md-12  col-sm-12 col-12 ">
                <div class="banner mb-30 transition-3 position-relative over-hidden ">
                    <a href="shop.php" class="d-block">
                        <img class="img-zoom transition-3 width100 h-100" src="adm/uploads/<?=$res_left_banner['image'];?>" style="
border: 1px solid grey;
" alt="">
                    </a>
                    <div class="banner-content mt--3 position-absolute transfY transfY50 pl-50">
                     
                        <a href="shop.php" class="web-btn border-white01 d-inline-block text-capitalize white-bg light-black-color position-relative over-hidden pl-35 pr-35 ptb-12">Shop Now</a>
                    </div>
                </div>
            </div>
            
            <?php } ?>
        </div>
    </div>
</div>-->
            

<div class="hot_selling essential_pro" id="hotselling">
    <div class="container">
        <div class="row">
            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 pb-15">
                <div class="section-title text-center">
                    <h3 class="font-pt light-black-color2 pb-1">Hot Selling <br> <img src="images/under.png" alt="img"> </h3>
                </div>
            </div>
        </div>
     
        <div class="row">
            
          <?php 
                                $get_product=mysqli_query($con,"select * from tbl_product where status=1 and special='1' GROUP BY product_name limit 10");
                                while($res_product=mysqli_fetch_array($get_product))
                                {
                                    $name=substr($res_product['product_name'],0,50).'..';
                                    $regular_price=$res_product['regular_price'];
                                    $sale_price=$res_product['sale_price'];
                                    $per_rate=$regular_price-$sale_price;
                                    $discount_price=($per_rate*100)/$regular_price;
                                ?>
            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12 plr-14">
                <div class="single-product mb-30">
                    <div class="single-product-img position-relative over-hidden">
                        <div class="single-product-label position-absolute theme-bg text-center  transition-3 z-index1">	
                            <span class="white text-uppercase d-block font500"><?=round($discount_price)?>%</span>	
                        </div>
                        <a class="position-relative d-block" href="product/<?=$res_product['product_slug'];?>">
                            <img class="" src="adm/uploads/<?=$res_product['featured_image'];?>" alt="product">
                        </a>
                        <div class="single-product-info">
                            <div class="rating rating-shop d-flex justify-content-center mt-25">
                                <ul class="d-flex mr-2">
                                    <li><span><i class="fas fa-star"></i></span></li>
                                    <li><span><i class="fas fa-star"></i></span></li>
                                    <li><span><i class="fas fa-star"></i></span></li>
                                    <li><span><i class="far fa-star"></i></span></li>
                                    <li><span><i class="far fa-star"></i></span></li>
                                </ul>
                            </div>
                            <h6 class="light-black-color2 page_slug_2"><a href="product/<?=$res_product['product_slug'];?>"><?=$res_product['product_name'];?></a></h6>
                            <ul class="single-product-price d-flex mt-2 transition-3 justify-content-center">
                                <li>
                                    <span class="pr-2 d-inline-block"><del>₹ <?=$res_product['regular_price'];?></del></span>
                                    <span class="theme-color d-inline-block font600">₹ <?=$res_product['sale_price'];?></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <?php } ?>
            
            
        </div>
        
    </div>
</div>




            <!-- ====== product-area-start================================ -->
            <div class="product-area essential_pro" id="featured">
                <div class="container">
                    <div class="product-content single-product-tab-content">
                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 pb-15">
                                <div class="section-title text-center">
                                    <h3 class="font-pt light-black-color2 pb-1">Featured <br> <img src="images/under.png" alt="img"> </h3>
                                    
                                </div><!-- /section-title -->
                            </div><!-- /col -->
                        </div><!-- /row -->
                        <div class="product-wrapper mt-1">
                            <div class="row">
                                <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                  
                                    <div class="popular-product">
                                        <div class="row product-active">
                                             <?php 
                                $get_product=mysqli_query($con,"select * from tbl_product where status=1 and featured_product='1' GROUP BY product_name limit 10");
                                while($res_product=mysqli_fetch_array($get_product))
                                {
                                    $name=substr($res_product['product_name'],0,50).'..';
                                    $regular_price=$res_product['regular_price'];
                                    $sale_price=$res_product['sale_price'];
                                    $per_rate=$regular_price-$sale_price;
                                    $discount_price=($per_rate*100)/$regular_price;
                                ?>
                                            <div class="col-xl-4 col-lg-3  col-md-6 col-sm-6 col-12 plr-14">
                                                <div class="single-product mb-30">
                                                    <div class="single-product-img position-relative over-hidden">
                                                        <div class="single-product-label position-absolute theme-bg text-center  transition-3 z-index1">	
                                                            <span class="white text-uppercase d-block font500"><?=round($discount_price)?>%</span>	
                                                        </div><!-- /product-label -->
                                                        <a class="position-relative d-block" href="product/<?=$res_product['product_slug']?>">
                                                            <img src="adm/uploads/<?=$res_product['featured_image'];?>" class="" alt="product">
                                                        </a>
                                                        <div class="single-product-info">
                                                            <!--<div class="countdown-time d-flex  justify-content-center">-->
                                                            <!--    <div class="timer">-->
                                                            <!--        <div class="d-flex" data-countdown="2020/4/11"></div>-->
                                                            <!--    </div>-->
                                                            <!--</div>-->
                                                            <!-- /countdown-time -->
                                                            <div class="rating rating-shop d-flex justify-content-center mt-25">
                                                                <ul class="d-flex mr-2">
                                                                    <?php 
                                                                    $val=rand("1","5");
                                                                     for($i=1;$val>=$i;$i++)
                                                                     { ?>
                                                                     
                                                                    <li>
                                                                        <span ><i class="fas fa-star"></i></span>
                                                                    </li>
                                                                    <?php }?>
                                                                   
                                                                </ul>
                                                            </div><!-- /rating -->
                                                            <h6 class="light-black-color2"><a href="product/<?=$res_product['product_slug']?>"><?=$name;?>..</a></h6>
                                                            <ul class="single-product-price d-flex mt-2 transition-3 justify-content-center">
                                                                <li>
                                                                    <span class="pr-2 d-inline-block"><del>₹ <?=$regular_price;?></del></span>
                                                                    <span class="theme-color d-inline-block font600">₹ <?=$sale_price;?></span>
                                                                </li>
                                                            </ul><!-- /single-product-price -->
                                                        </div>
                                                    </div><!-- /single-product-img -->
                                                </div><!-- /single-product -->
                                            </div><!-- /col -->
                                           <?php } ?>
                                        </div><!-- /row -->
                                    </div>
                                </div>
                                <!--<div class="col-xl-3  col-lg-4  d-none d-lg-block">
                                    <div class="product-banner-area position-relative wow">
                                        <div class="product-banner-content banner-content-2 position-absolutes top0 left0 right0"  data-background="images/banner/pro-banner-bg.jpg">
                                           <div class="pro-banner-text">
                                               
                                                <h5 class="title cursor-pinter has-border-left d-inline-block position-relative text-white text-uppercase mb-25 font-pt-demi">Essential Products</h5>
                                                <ul class="product-cat-items">
                                                     <?php 
                                $fetch_cat=mysqli_query($con,"select * from tbl_category where status=1 limit 4");
                                while($res_cat=mysqli_fetch_array($fetch_cat)){
                                ?>
                                                    <li class="mb-14">
                                                        <a class="text-white d-block"  href="category/<?=$res_cat['category_slug'];?>">
                                                            <span class="icon-chevron-right"></span>
                                                            <?=$res_cat['category_name'];?>
                                                        </a>
                                                    </li>

                                                    <?php } ?>
                                                </ul>
                                           </div>
                                             <?php 
                                $fetch_single_product=mysqli_fetch_array(mysqli_query($con,"select * from tbl_product where status=1"));
                                 $regular_price_single=$fetch_single_product['regular_price'];
                                    $sale_price_single=$fetch_single_product['sale_price'];
                                    $per_rate_single=$regular_price_single-$sale_price_single;
                                    $discount_price_single=($per_rate_single*100)/$regular_price_single;
                                ?>
                                          
                                            <div class="banner-title text-center">
                                                <h4 class="font-pt text-white"><?=substr($fetch_single_product['product_name'],0,50);?>..</h4>
                                                <a href="product/<?=$fetch_single_product['product_slug']?>" class="border-b-white01 line-height-1 text-white d-inline-block text-capitalize position-relative">Purchase Now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>-->
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            


<!--<div class="hot_selling essential_pro">
    <div class="container">
        <div class="row">
            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 pb-15">
                <div class="section-title text-center">
                    <h3 class="font-pt light-black-color2 pb-1">Essential Products </h3>
                </div>
            </div>
        </div>
        <div class="row">
            
          <?php 
                                $get_product=mysqli_query($con,"select * from tbl_product where status=1 and special='1' GROUP BY product_name limit 10");
                                while($res_product=mysqli_fetch_array($get_product))
                                {
                                    $name=substr($res_product['product_name'],0,50).'..';
                                    $regular_price=$res_product['regular_price'];
                                    $sale_price=$res_product['sale_price'];
                                    $per_rate=$regular_price-$sale_price;
                                    $discount_price=($per_rate*100)/$regular_price;
                                ?>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-12 col-12 plr-14">
                <div class="single-product mb-30">
                    <div class="single-product-img position-relative over-hidden">
                        <div class="single-product-label position-absolute theme-bg text-center  transition-3 z-index1">	
                            <span class="white text-uppercase d-block font500"><?=round($discount_price)?>%</span>	
                        </div>
                        <a class="position-relative d-block" href="product/<?=$res_product['product_slug'];?>">
                            <img class="" src="adm/uploads/<?=$res_product['featured_image'];?>" alt="product">
                        </a>
                        <div class="single-product-info">
                            <div class="rating rating-shop d-flex justify-content-center mt-25">
                                <ul class="d-flex mr-2">
                                    <li><span><i class="fas fa-star"></i></span></li>
                                    <li><span><i class="fas fa-star"></i></span></li>
                                    <li><span><i class="fas fa-star"></i></span></li>
                                    <li><span><i class="far fa-star"></i></span></li>
                                    <li><span><i class="far fa-star"></i></span></li>
                                </ul>
                            </div>
                            <h6 class="light-black-color2 page_slug_2"><a href="product/<?=$res_product['product_slug'];?>"><?=$res_product['product_name'];?></a></h6>
                            <ul class="single-product-price d-flex mt-2 transition-3 justify-content-center">
                                <li>
                                    <span class="pr-2 d-inline-block"><del>₹ <?=$res_product['regular_price'];?></del></span>
                                    <span class="theme-color d-inline-block font600">₹ <?=$res_product['sale_price'];?></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <?php } ?>
            
            
        </div>
        
    </div>
</div>-->

            <!-- ====== product-off-banner-area-start ========================================= -->
            <!--<div class="handpick-items-area pt-60 wow fadeInUp animated" data-wow-duration="1s" >
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 pb-15">
                            <div class="section-title text-center">
                                <h3 class="font-pt light-black-color2 pb-1">Handpicked Items</h3>
                                <p class="light-black-color7 font300">Sed ut perspiciatis undeous omniiste natusing error</p>
                            </div>
                        </div>
                    </div>
                    <div class="row handpick-items-active theme-border2 pt-30 pl-20 mlr-1">
                        <?php
                                $get_product=mysqli_query($con,"SELECT * FROM tbl_product WHERE status=1 and featured_product=1 GROUP BY product_name limit 10");
                                while($res_product=mysqli_fetch_array($get_product)){
                                    $name=substr($res_product['product_name'],0,50).'...';
                                    $regular_price=$res_product['regular_price'];
                                    $sale_price=$res_product['sale_price'];
                                    $per_rate=$regular_price-$sale_price;
                                    $discount_price=($per_rate*100)/$regular_price;
                                ?>
                        <div class="col-xl-4  col-lg-4  col-md-  col-sm- col-">
                            <div class="single-handpick-item d-flex align-items-center mb-35">
                                <div class="single-handpick-item-img position-relative">
                                    <a href="product/<?=$res_product['product_slug']?>" class="d-block">
                                        <img src="adm/uploads/<?=$res_product['featured_image'];?>" alt="">
                                    </a>
                                </div>
                            
                                <div class="single-handpick-item-content">
                                    <div class="single-product-info mt-25 transition-3">
                                        <div class="rating rating-shop d-flex mt-25">
                                            <ul class="d-flex mr-2">
                                                 <?php 
                                                                    $val=rand("1","5");
                                                                     for($i=1;$val>=$i;$i++)
                                                                     { ?>
                                                                     
                                                <li>
                                                    <span ><i class="fas fa-star"></i></span>
                                                </li>
                                                <?php } ?>
                                               
                                            </ul>
                                        </div>
                                        <h6 class="light-black-color2"><a href="product/<?=$res_product['product_slug']?>"><?=$name;?></a></h6>
                                        <ul class="single-product-price d-flex pt-6 transition-3 mb-15">
                                            <li>
                                                <span class="pr-2 d-inline-block"><del>₹ <?=$regular_price;?></del></span>
                                                <span class="theme-color d-inline-block font600">₹ <?=$sale_price;?></span>
                                            </li>
                                        </ul>
                                       
                                            <input type="hidden" name="product_id" value="<?=$res_product['product_id']?>">
                                            <input type="hidden" name="price" value="<?=$sale_price?>">
                                            <input type="hidden" name="qty" value="1">
                                            
                                            <?php 
                                            $check_size=mysqli_num_rows(mysqli_query($con,"select * from tbl_color where product_id='".$res_product['product_id']."' and status=1"));
                                            $check_color=mysqli_num_rows(mysqli_query($con,"select * from tbl_color where product_id='".$res_product['product_id']."' and status=1"));
                                            
                                            if($check_size>0 OR $check_color>0)
                                            {
                                            ?>
                                            <a href="product/<?=$res_product['product_slug']?>" class="web-btn web-btn2 border-white01 d-inline-block font700 text-capitalize light-black-color9 position-relative over-hidden pl-35 pr-35 ptb-12" style="cursor:pointer;background: #ff5b30;color: white;">Add To Cart</a>
                                            <?php 
                                            }
                                            else
                                            {
                                            ?>
                                            
                                        <a onclick="add_to_cart(<?=$res_product['product_id']?>,<?=$sale_price?>,1);" class="web-btn web-btn2 border-white01 d-inline-block font700 text-capitalize light-black-color9 position-relative over-hidden pl-35 pr-35 ptb-12" style="cursor:pointer;background: #ff5b30;color: white;">Add To Cart</a>
                                        <?php } ?>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="row free-shopping-area light-theme-bg  mlr-1">
                        <div class="col-xl-12 col-lg-12  col-md-  col-sm- col-">
                            <div class="free-shopping pt-15 pb-15 text-center">
                                <p class="theme-color mb-0 font600">ONLY IN THIS WEEK. FREE SHIPPING FOR ALL ORDERS OVER $400</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->
            <!-- product-off-banner-area-end  -->
            
            <!-- ====== most-purchased-item-area-start================================ -->
            <div class="most-purchased-item-area most-purched-2 most-purchased-item-bg  pb-50" style="" id="mostpurchased">
                <div class="container">
                    <div class="row">
                        <!--<div class="col-md-3">
                            <video class="video_gym" controls>
                              <source src="images/gymvideo.mp4" type="video/mp4">
                            </video>
                        </div>-->
                        <div class="col-md-12 ">
                            <div class="most-purchased-item-wrapper purchased-item-2  wow" data-wow-duration="1.5s" >
                                <h3 class="font-pt light-black-color2 pb-1 " style="text-align: center;">Most Purchased<br> <img src="images/under.png" alt="img"> </h3>

                               
                            </div><!-- /most-purchased-item-wrapper -->
                        </div>
                    </div><!-- /row -->
                    <div class="pl-15 pr-15 essential_pro">
                                <div class="row most-purchased-item-active mt-25">
                                    <?php
                                $get_product=mysqli_query($con, "SELECT * FROM tbl_product WHERE status=1 and new_arraival=1 GROUP BY product_name LIMIT 10");
                                while($res_product=mysqli_fetch_array($get_product)){
                                    
                                    $name=$res_product['product_name'];
                                     $regular_price=$res_product['regular_price'];
                                    $sale_price=$res_product['sale_price'];
                                    $per_rate=$regular_price-$sale_price;
                                    $discount_price=($per_rate*100)/$regular_price;
                                    
                                ?>
                                    <div class="col-xl-4 col-lg-4  col-md-6  col-sm-6 col-12 plr-14">
                                        <div class="single-product mb-10">
                                            <div class="single-product-img position-relative over-hidden">
                                                <div class="single-product-label position-absolute theme-bg text-center  transition-3 z-index1">	
                                                    <span class="white text-uppercase d-block font500"><?=round($discount_price);?>%</span>	
                                                </div><!-- /product-label -->
                                               <div class="most-purchased-item-img  position-relative text-center">
                                                    <a class="position-relative d-block" href="product/<?=$res_product['product_slug']?>">
                                                        <img src="adm/uploads/<?=$res_product['featured_image'];?>" alt="product">
                                                    </a>
                                                    <!--<div class="countdown-time d-flex  justify-content-center position-absolute width100">-->
                                                    <!--    <div class="timer">-->
                                                    <!--        <div class="d-flex" data-countdown="2021/4/11"></div>-->
                                                    <!--    </div>-->
                                                    <!--</div>-->
                                                    <!-- /countdown-time -->
                                               </div>
                                                <div class="single-product-info text-center transition-3">
                                                    <div class="rating rating-shop d-flex justify-content-center">
                                                        <ul class="d-flex mr-2">
                                                             <?php 
                                                                    $val=rand("1","5");
                                                                     for($i=1;$val>=$i;$i++)
                                                                     { ?>
                                                                     
                                                            <li>
                                                                <span ><i class="fas fa-star"></i></span>
                                                            </li>
                                                            <?php } ?>
                                                            
                                                        </ul>
                                                    </div><!-- /rating -->
                                                    <h6 class="light-black-color2"><a href="product/<?=$res_product['product_slug']?>"><?=substr($name,0,50);?>...</a></h6>
                                                    <ul class="single-product-price d-flex mt-2 transition-3 justify-content-center">
                                                        <li>
                                                            <span class="pr-2 d-inline-block"><del>₹ <?=$regular_price;?></del></span>
                                                            <span class="theme-color d-inline-block font600">₹<?=$sale_price;?></span>
                                                        </li>
                                                    </ul><!-- /single-product-price -->
                                                </div>
                                            </div><!-- /single-product-img -->
                                        </div><!-- /single-product -->
                                    </div><!-- /col -->
                                    <?php } ?>
                                </div><!-- /row -->
                               </div>
                </div><!-- /container -->
            </div>
            <!-- most-purchased-item-area-end  -->
            
            
            
<section id="HandPicked">
    <div class="hot_selling essential_pro" >
    <div class="container">
        <div class="row">
            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 pb-15">
                <div class="section-title text-center">
                    <h3 class="font-pt light-black-color2 pb-1">Hand Picked<br> <img src="images/under.png" alt="img"> </h3>
                </div>
            </div>
        </div>
     
        <div class="row">
            
                      <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12 plr-14">
                <div class="single-product mb-30">
                    <div class="single-product-img position-relative over-hidden">
                        <div class="single-product-label position-absolute theme-bg text-center  transition-3 z-index1">	
                            <span class="white text-uppercase d-block font500">10%</span>	
                        </div>
                        <a class="position-relative d-block" href="">
                            <img class="" src="images/ha1.jpg" alt="product">
                        </a>
                        <div class="single-product-info">
                            <div class="rating rating-shop d-flex justify-content-center mt-25">
                                <ul class="d-flex mr-2">
                                    <li><span><i class="fas fa-star"></i></span></li>
                                    <li><span><i class="fas fa-star"></i></span></li>
                                    <li><span><i class="fas fa-star"></i></span></li>
                                    <li><span><i class="far fa-star"></i></span></li>
                                    <li><span><i class="far fa-star"></i></span></li>
                                </ul>
                            </div>
                            <h6 class="light-black-color2 page_slug_2"><a href="">Loop Band</a></h6>
                            <ul class="single-product-price d-flex mt-2 transition-3 justify-content-center">
                                <li>
                                    <span class="pr-2 d-inline-block"><del>₹ 450</del></span>
                                    <span class="theme-color d-inline-block font600">₹ 405</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
                      
            
        </div>
        
    </div>
</div>
</section>            
            
            
            

<!--<div class="testimonials_se">
    <div class="container">
        <div class="section-title text-center">
            <h3 class="font-pt light-black-color2 pb-5">India’s # 1 Doctor’s</h3>
        </div>
        <div class="testimonial-area testimonial-active wow mb-60 mb-lg-0">
            <?php 
            $fetch_review=mysqli_query($con,"select * from tbl_adm_review where status=1");
            while($res_review=mysqli_fetch_array($fetch_review)){
            ?>
            
            
            <div class="item">
                <div class="testimonial-avater position-relative">
                    <img src="adm/uploads/review/<?=$res_review['image'];?>" alt="">
                    <div class="quote position-absolute">
                        <span class="theme-bg white d-block text-center"><i class="fas fa-quote-left"></i></span>
                    </div>
                    <div class="rating testi-review d-flex align-items-center justify-content-center mt-15">
                        <ul class="d-flex mr-2">
                             <?php 
                                        $val=rand("1","5");
                                         for($i=1;$val>=$i;$i++)
                                         { ?>    
                            <li>
                                <span ><i class="fas fa-star"></i></span>
                            </li>
                            <?php }?>
                        </ul>
                        <span class="light-black-color5 d-inline-block pl-1"> (3.5)</span>
                    </div>
                </div>
                <div class="testimonial-comment">
                    <p class="light-black-color7"><?=$res_review['description'];?></p>
                    <div class="testimonial-info d-sm-flex testimonial-padding align-items-center pt-20">
                        <h5 class="font600 light-black-color2 pr-10"><?=$res_review['name'];?></h5>
                    </div>
                </div>
            </div>
            
            
            <?php } ?>
        </div>
    </div>
</div>-->


            <!-- ====== brand-logo-area-start ========================================= -->
            <div class="brand-logo-area over-hidden">
                <div class="container pt-55 pb-55">
                    <img src="images/Untitled-1.png">
                    <!--<div class="section-title text-center">
                        <h3 class="font-pt light-black-color2 pb-5">Our Brands</h3>
                    </div>
                    <div class="mlr--55">
                        <div class="row brand-active d-flex align-items-center ">
                            <?php
                            $fetch_brand=mysqli_query($con,"select * from tbl_brand where status=1");
                            while($res_brand=mysqli_fetch_array($fetch_brand)){
                            ?>
                            <div class="col-xl-12  col-lg-2  col-md-2  col-sm-2 col-2">
                                <div class="text-center">
                                    <a href="brand/<?=$res_brand['slug'];?>" class="d-block">
                                        <img class="d-inline-block" src="adm/uploads/<?=$res_brand['image'];?>" alt="">
                                    </a>
                                </div>
                            </div>
                          
                            <?php } ?>
                        </div>
                    </div>-->
                </div>
            </div>
            <!-- brand-logo-area-end  -->

            <!-- ====== blog-area-start=============================================== -->
            <div class="blog-area pb-20" style="display:none;">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                            <div class="section-title text-center">
                                <h3 class="font-pt light-black-color2 pb-1">Latest News & Blog</h3>
                                <p class="light-black-color7 font300">Sed ut perspiciatis undeous omniiste natusing error</p>
                            </div><!-- /section-title -->
                        </div><!-- /col -->
                    </div><!-- /row -->
                    <div class="row news-post-active">
                        <?php 
                        $fetch_blog=mysqli_query($con,"select * from tbl_blog where status=1");
                        while($res_blog=mysqli_fetch_array($fetch_blog)){
                        ?>
                        <div class="col-xl-4  col-lg-4  col-md-4  col-sm-12 col-12 plr-20">
                            <div class="single-blog mb-30">
                                <div class="blog-img position-relative transition-3 mt-25">
                                    <div class=" over-hidden">
                                        <a href="blog/<?=$res_blog['slug'];?>"><img class="img-zoom" src="adm/uploads/<?=$res_blog['blog_image'];?>" alt=""></a>
                                        <div class="blog-shadow position-absolute transition-5 light-theme-bg"></div>
                                        <div class="date position-absolute left-0 bottom-0 d-flex mb-20 ml-30">
                                            <a href="#" class="web-btn border-white01 d-inline-block text-capitalize white-bg theme-color position-relative over-hidden pl-35 pr-35 ptb-12">
                                                 <span><?=date("d-m-Y", strtotime($res_blog['blog_date']));?></span>
                                                <!--<span> 25</span>-->
                                                <!--<span> Aug</span>-->
                                                <!--<span> 2021</span>-->
                                            </a>
                                        </div>
                                    </div>
                                </div><!-- /blog-img -->
                                <div class="single-blog-content position-relative transition-5 pt-3 pr-25 pb-40">
                                    <h5><a class="pb-15 d-block light-black-color2" href="blog/<?=$res_blog['slug'];?>"><?=$res_blog['blog_name'];?></a></h5>
                                    <p class="pb-1 light-black-color7"><?php if(strlen($res_blog['blog_description'])>200){echo substr($res_blog['blog_description'],0,200)."...";}else{echo $res_blog['blog_description']; }?></p>
                                    <a href="blog/<?=$res_blog['slug'];?>" class="border-b-white01 title primary-color2 font700 d-inline-block text-capitalize position-relative hvr">Read More<span class="pl-2d-inline-block"> 
                                        <span class="icon-chevron-right"></span>
                                    </span></a>
                                </div>
                            </div>
                        </div><!-- /col -->
                        
                        <?php } ?>
                    </div><!-- /row -->
                </div><!-- /container -->
            </div>
            <!-- blog-area-end -->



            <!-- ====== subscribe-area-start ========================================= -->
            <div class="subscribe-area subscribe-1" >
                <div class="container">
                    <div class="border-t-gray1 border-b-gray1">
                        <!--<div class="row align-items-center">-->
                            <!--<div class="col-xxl-12 col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">-->
                                <div class="row">
                                    <div class="col-4">
                                        <div class="boxxx">
                                            <img src="images/certifi.png">
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="boxxx">
                                            <img src="images/certifi1.png">
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="boxxx">
                                            <img src="images/c2.jpg">
                                        </div>
                                    </div>
                                   
                                   
                                </div>
                            </div><!-- /col -->
                        <!--</div>-->
                    <!--</div>-->
                </div>
            </div>
            <!-- subscribe-area-end  -->

        </main>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script>
    function add_to_cart(product_id,price,qty)
    {
       
       $.ajax({
        type:'POST',
        url:'ajax/cart.php',
        data:{product_id:product_id,price:price,qty:qty},
        success:function(response) {
          if(response==1)
          {
              
              swal("Added Cart", "Successfully Added Cart", "success");
 setTimeout(function() {
        location.reload();
    }, 3000);
          }
          else if(response==2)
          {
            
            swal("Updated Cart", "Successfully Updated Cart", "success");
             setTimeout(function() {
        location.reload();
    }, 3000);
          }
          else
          {
              swal("Wrong", "Something Went Wrong", "error");
               setTimeout(function() {
        location.reload();
    }, 3000);
          }
        }
      }); 
    }
</script>
 <?php include('footer.php');?>

