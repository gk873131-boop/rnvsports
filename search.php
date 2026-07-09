<?php include('header.php');?>
<?php 

if(isset($_POST['search']))
{
$search = $_POST['search_data'];
$query=mysqli_query($con,"SELECT * FROM tbl_product WHERE product_name LIKE '%".$search."%' AND status=1  ORDER BY product_name ASC");
}
else if(isset($_GET['q']))
{
$query=mysqli_query($con,"SELECT * FROM tbl_product WHERE product_id='".$_GET['q']."' AND status=1  ORDER BY product_name ASC");    
}
?>
        <main>

            <!-- ======slider-area-start=========================================== -->
            <div class="slider-area over-hidden">
                <div class="single-slider page-height3 d-flex align-items-center" data-background="https://www.netowl.com/wp-content/uploads/2022/09/entity-extraction-for-news-agencies.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 d-flex align-items-center justify-content-center">
                                <div class="page-title mt-10 text-center">
                                    <h2 style="color:white;" class="text-capitalize font600 mb-10">Search</h2>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb justify-content-center bg-transparent">
                                        <li class=""><a style="color:white;" class="primary-color" href="index.php">Home</a></li>/
                                        <li class="active text-capitalize" style="color:white;" aria-current="page">Search</li>
                                        </ol>
                                    </nav>
                                </div><!-- /page title -->
                            </div><!-- /col -->
                        </div><!-- /row -->
                    </div><!-- /container -->
                </div><!-- /single-slider -->
            </div>
            <!-- slider-area-end  -->

       
            <!-- ====== product-area-start================================ -->
            <div class="product-area shop-product mt-50 mb-50">
                <div class="container">
                 
                        <div class="product-wrapper mt-1">
                            
                            
                            <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                            <div class="popular-product essential_pro">
                                                <div class="row" id="hidedata">
                                                    <?php
                                                 
                                                    $num_check=mysqli_num_rows($query);
                                                    if($num_check>0)
                                                    {
                                                    while($res_product=mysqli_fetch_array($query))
                                    {
                                    $name=substr($res_product['product_name'],0,50).'...';
         $regular_price=$res_product['regular_price'];
                                    $sale_price=$res_product['sale_price'];
                                    $per_rate=$regular_price-$sale_price;
                                    $discount_price=($per_rate*100)/$regular_price;
                                                    ?>
                                                    <div class="col-xl-4 col-lg-4  col-md-12  col-sm-12 col-12 plr-14">
                                                        <div class="single-product mb-30">
                                                            <div class="single-product-img position-relative over-hidden">
                                                                <div class="single-product-label position-absolute theme-bg text-center  transition-3 z-index1">	
                                                                    <span class="white text-uppercase d-block font500"><?=round($discount_price);?>%</span>	
                                                                </div><!-- /product-label -->
                                                                <a class="position-relative d-block" href="product/<?=$res_product['product_slug']?>">
                                                                    <img class="" src="adm/uploads/<?=$res_product['featured_image'];?>" alt="product">
                                                                </a>
                                                                <div class="single-product-info">
                                                                    <div class="countdown-time d-flex border-gray justify-content-center">
                                                                        <!--<div class="timer">-->
                                                                        <!--    <div class="d-flex" data-countdown="2021/4/11"></div>-->
                                                                        <!--</div>-->
                                                                    </div><!-- /countdown-time -->
                                                                    <div class="rating rating-shop d-flex justify-content-center mt-25">
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
                                                                    <h6 class="light-black-color2"><a href="product/<?=$res_product['product_slug']?>"><?=$name;?></a></h6>
                                                                    <ul class="single-product-price d-flex mt-2 transition-3 justify-content-center">
                                                                        <li>
                                                                            <span class="pr-2 d-inline-block"><del>₹ <?=$regular_price;?></del></span>
                                                                            <span class="theme-color d-inline-block font600">₹ <?=$sale_price;?></span>
                                                                        </li>
                                                                    </ul><!-- /single-product-price -->
                                                                </div>
                                                            </div><!-- /single-product-img -->
                                                    
                                                     
                                                     
                                                    </div><!-- /col -->
                                             
                                                    </div><!-- /col -->
                                                    <?php }
                                                    
                                                    }
                                                    else
                                                    { ?>
                                                        <h3>Product Not Found..!</h3>
                                                    <?php } 
                                                    ?>
                                                </div><!-- /row -->
                                            </div>
                                        </div>
                                        <!-- product-list-area -->
                                       
                                    
                                    </div>
                            
                            
                        </div><!-- /product-wrapper -->
                    </div><!-- /product-content -->
                </div><!-- /container -->
            <!-- product-area-end  -->

        </main>
      
        
        
        
 <?php include('footer.php');?>