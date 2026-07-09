<?php include('header.php');?>
<?php 
if(isset($_GET['category']))
{
    $slug=$_GET['category'];
    $fetch_cat=mysqli_query($con,"select * from tbl_category where status=1 AND category_slug='$slug'");
    $fetch_cat_two=mysqli_fetch_array(mysqli_query($con,"select * from tbl_category where status=1 AND category_slug='$slug'"));
   
}
else
{
    ?>
    <script>
       window.location.href = 'index.php';
    </script>
<?php }
?>
        <main>

            <!-- ======slider-area-start=========================================== -->
            <div class="slider-area over-hidden">
                <div class="single-slider page-height3 d-flex align-items-center" data-background="images/bg/purchased-item-bg.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 d-flex align-items-center justify-content-center">
                                <div class="page-title mt-10 text-center">
                                    <h2 class="text-capitalize font600 mb-10"><?=$fetch_cat_two['category_name'];?></h2>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb justify-content-center bg-transparent">
                                        <li class=""><a class="primary-color" href="index.php">Home</a></li>/
                                        <li class="active text-capitalize" aria-current="page"><?=$fetch_cat_two['category_name'];?></li>
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
            <div class="product-area shop-product mt-20 mb-100">
                <div class="container">
                    <div class="product-content single-product-tab-content">
                        </div><!-- /row -->
                        <div class="product-wrapper mt-1">
                            <div class="row">
                                <div class="col-xl-3  col-lg-4  col-md-12  col-sm-12 col-12">
                                    <div class="shop-sidebar-area pt-80">
                                        <div class="row">
                                            <div class="col-xl-12  col-lg-12  col-md-6  col-sm-12 col-12">
                                                <div class="row">
                                                    <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                                        <div class="sidebar-widget mb-20">
                                                            <h6 class="mb-15 title font600 sidebar-title d-inline-block position-relative pb-1">Product Categories</h6>
                                                            <ul>
                                                                <?php
                                                               $fetch_all=mysqli_query($con,"select * from tbl_category where status=1");
                                                                while($res_category=mysqli_fetch_array($fetch_all)){
                                                                ?>
                                                                <li class="pb-15 d-block"><a href="category/<?=$res_category['category_slug'];?>"><?=$res_category['category_name'];?></a>
                                                                  
                                                                <?php } ?>
                                                            </ul>
                                                        </div><!-- /sidebar-widget -->
                                                    </div><!-- /col -->
                                                    <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                                        <div class="sidebar-widget mb-35">
                                                            <h6 class="mb-25 title font600 sidebar-title d-inline-block position-relative pb-1">Filter By Price</h6>
                                                            <div id="slider-range"></div>
                                                            <div class="price-slider mt-20">
                                                                <div>
                                                                    <form action="#">
                                                                        <div class="prc-slider-content mb-15">
                                                                            <div class="prc-amount d-sm-flex">
                                                                                <label for="amount" class="mb-0 mr-1">Price :</label>
                                                                                <input type="text" id="amount" readonly class="border-0 shop-theme-color bg-transparent">
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div><!-- /price-slider -->
                                                        </div>
                                                    </div><!-- /col -->
                                                </div><!-- /row -->
                                            </div><!-- /col -->
                                            
                                            
                                           
                                          
                                            <!-- /col -->
                                        </div><!-- /row -->
                                    </div><!-- /shop-sidebar-area -->
                                </div><!-- /col -->
                                <div class="col-xl-9  col-lg-8  col-md-12  col-sm-12 col-12">

                                    <!-- shop-header start -->
                                    <div class="row">
                                        <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                            <div class="shop-header pt-70 mb-20">
                                                <div class="row align-items-center position-relative s-top-nv">
                                                    <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 pb-15 position-static pl-xl-0">
                                                        <div class="shop-header-right d-flex align-items-center justify-content-between">
                                                            <ul class="d-flex  align-items-center s-fil-vm clear-both">
                                                                <li>
                                                                    <div class="view-mode d-flex align-items-center">
                                                                        <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
                                                                            <li class="nav-item border-0" role="presentation">
                                                                                <button class="nav-link active border-0" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">
                                                                                <span><i class="fas fa-th"></i></span>
                                                                                </button>
                                                                            </li>
                                                                            <li class="nav-item" role="presentation">
                                                                                <button class="nav-link border-0" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile-tab" aria-selected="false">
                                                                                <span><i class="fas fa-bars"></i></span>
                                                                                </button>
                                                                            </li>
                                                                        </ul><!-- /view-mode-tab nav -->
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                            <ul class="shop-right d-flex align-items-center">
                                                                <li>
                                                                    <div class="shop-h-title border-r-gray1 pr-20">
                                                                        <h6 class="primary-color2 mb-0 font13">Showing 1–12 of 38 results</h6>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="product-selection position-relative pl-25">
                                                                        <select class="border-0 py-0 pl-0" onchange="getData(this.value, <?=$get['category_id']?>)"> name="select" id="select" style="display: none;">
                                                                            <!--<option value="">Sort By New</option>-->
                                                                            <!--<option value="">Sort by popularity</option>-->
                                                                            <!--<option value="">Sort by average rating</option>-->
                                                                            <!--<option value="">Sort by latest</option>-->
                                                                            <!--<option value="">Sort by price: low to high</option>-->
                                                                            <!--<option value="">Sort by price: high to low</option>-->
                                <option value="rel">Relevance</option>
                                <option value="asc">Name (A - Z)</option>
                                <option value="desc">Name (Z - A)</option>
                                <option value="price">Price (Low &gt; High)</option>
                                                                        </select>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div><!-- /col -->
                                                </div><!-- /row -->
                                            </div>
                                        </div><!-- /col -->
                                    </div><!-- /row -->
                                    <!-- shop-header end -->

                                    <!-- shop-content start -->

                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                            <div class="popular-product">
                                                <div class="row shop-page-product-active" id="hidedata">
                                                    <?php
                                                  
                    $fetch_product=mysqli_query($con,"select * from tbl_product where status=1 and category_id='".$fetch_cat_two['category_id']."' order by product_name asc");
                    $check=mysqli_num_rows($fetch_product);
                    if($check>0)
                    {
                                                    while($res_product=mysqli_fetch_array($fetch_product))
                                    {
                                    $name=$res_product['product_name'];
                                    $regular_price=$res_product['regular_price'];
                                    $sale_price=$res_product['sale_price'];
                                    $p=$regular_price-$sale_price;
	                                $pp=($p*100)/$regular_price;
                                                    ?>
                                                    <div class="col-xl-12 col-lg-12  col-md-12  col-sm-12 col-12 plr-14">
                                                        <div class="single-product mb-30">
                                                            <div class="single-product-img position-relative over-hidden">
                                                                <div class="single-product-label position-absolute theme-bg text-center  transition-3 z-index1">	
                                                                    <span class="white text-uppercase d-block font500"><?=round($pp);?>%</span>	
                                                                </div><!-- /product-label -->
                                                                <a class="position-relative d-block" href="product/<?=$res_product['product_slug']?>">
                                                                    <img class="" src="adm/uploads/<?=$res_product['featured_image'];?>" alt="product">
                                                                </a>
                                                                <div class="single-product-info position-absolute mt-25 text-center transition-3">
                                                                    <div class="countdown-time d-flex border-gray justify-content-center">
                                                                        <!--<div class="timer">-->
                                                                        <!--    <div class="d-flex" data-countdown="2021/4/11"></div>-->
                                                                        <!--</div>-->
                                                                    </div><!-- /countdown-time -->
                                                                    <div class="rating rating-shop d-flex justify-content-center mt-25">
                                                                        <ul class="d-flex mr-2">
                                                                            <li>
                                                                                <span ><i class="fas fa-star"></i></span>
                                                                            </li>
                                                                            <li>
                                                                                <span ><i class="fas fa-star"></i></span>
                                                                            </li>
                                                                            <li>
                                                                                <span ><i class="fas fa-star"></i></span>
                                                                            </li>
                                                                            <li>
                                                                                <span ><i class="far fa-star"></i></span>
                                                                            </li>
                                                                            <li>
                                                                                <span ><i class="far fa-star"></i></span>
                                                                            </li>
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
                                      <div class="row shop-page-product-active" id="showdata">
                                          </div>

                                    <!-- ====== pagination-area-start================================ -->
                                    <div class="pagination-area mt-50 over-hidden position-relative">
                                        <div class="row">
                                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                                <nav class="pagination-page" aria-label="Page navigation example">
                                                  
                                                </nav>
                                            </div><!-- /col -->
                                        </div><!-- /row -->
                                    </div>
                                    <!-- ====== pagination-area-start================================ -->
                                </div><!-- /col -->
                            </div><!-- /row -->
                        </div><!-- /product-wrapper -->
                    </div><!-- /product-content -->
                </div><!-- /container -->
            <!-- product-area-end  -->

        </main>
        <script>
             function getData(val, id){
        if(val=='rel'){
            location.reload();
        }
        if(val=='price'){
             $.ajax({
            url:'ajax-price-1.php',
            method:'POST',
            data:{price:val, id:id},
            success:function(data){
                $('#showdata').html(data);
                // alert(data);
                document.getElementById("hidedata").style.display="none";
            }
        }) 
        
        }else{
        $.ajax({
            url:'ajax1.php',
            method:'POST',
            data:{order:val, id:id},
            success:function(data){
                $('#showdata').html(data);
                // alert(data);
                document.getElementById("hidedata").style.display="none";
            }
        }) 
        }
    }
        </script>
        
 <?php include('footer.php');?>