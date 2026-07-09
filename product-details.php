<?php include('header.php');
if(isset($_GET['product'])){
    $slug=$_GET['product'];
    $res_product=mysqli_fetch_array(mysqli_query($con, "select * from tbl_product where product_slug='$slug'"));

}
?>
<li style="display:none"><button id="alert_success_cart" onclick="Alert.success('Success! product added in cart ','Success',{displayDuration: 3000, pos: 'top'})">Success Alert</button></li>

        <main>

            <!-- ======slider-area-start=========================================== -->
            <div class="slider-area over-hidden">
                <div class="single-slider page-height3 d-flex align-items-center" data-background="images/bg/purchased-item-bg.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 d-flex align-items-center justify-content-center">
                                <div class="page-title mt-10 text-center">
                                    <h2 class="text-capitalize font600 mb-10"><?=$res_product['product_name'];?></h2>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb justify-content-center bg-transparent">
                                        <li class=""><a class="primary-color" href="index.php">Home</a></li>/
                                        <li class="active text-capitalize" aria-current="page"><?=$res_product['product_name'];?></li>
                                        </ol>
                                    </nav>
                                </div><!-- /page title -->
                            </div><!-- /col -->
                        </div><!-- /row -->
                    </div><!-- /container -->
                </div><!-- /single-slider -->
            </div>
            <!-- slider-area-end=  -->

       
            <!-- ====== shop page product-details-area-start================================ -->
            <div class="product-details-area pro-top-thamb pro-bottom-thamb pt-80">
                <div class="container">
                    <!-- product-details-tab-area start -->
                    <div class="product-details-content">
                        <div class="single-product-tab-content tab-content" id="myTabContent2">
                            <div class="row">
                                <div class="col-xxl-7 col-xl-7  col-lg-6  col-md-11  col-sm-12 col-12">
                                    <div class="product-left-img-tab mt-20">

                                        <div class="d-flex align-items-start">
                                            <!-- tab-nav -->
                                            <div class="nav flex-column nav-pills me-4" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                                <button class="nav-link active bg-transparent" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">
                                                    <img class="product-thumbnail w-100 border-gray2" src="adm/uploads/<?=$res_product['featured_image'];?>" alt="">
                                                </button>
                                                <button class="nav-link bg-transparent" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">
                                                    <img class="product-thumbnail w-100 border-gray2" src="adm/uploads/<?=$res_product['featured_image'];?>" alt="">
                                                </button>
                                                <button class="nav-link bg-transparent" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">
                                                    <img class="product-thumbnail w-100 border-gray2" src="adm/uploads/<?=$res_product['featured_image'];?>" alt="">
                                                </button>
                                            </div>

                                            <!-- tab-content -->
                                            <div class="tab-content" id="v-pills-tabContent">
                                                <div class="tab-pane fade show active position-relative" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                                    <div class="product-gallery-btn position-absolute z-index1 right0 mt-10 mr-10">
                                                        <a href="adm/uploads/<?=$res_product['featured_image'];?>" class="zoom-gallery dark-black-color bg-white d-inline-block m-2 " data-fancybox="images" ><i class="fas fa-compress"></i><img class="width100 d-none" src="images/product/product-large-img1.jpg" alt=""></a>                            
                                                    </div><!-- /product-gallery-btn -->
                                                    <div class="product-img border-gray2">
                                                        <img src='adm/uploads/<?=$res_product['featured_image'];?>' alt="product" />
                                                    </div><!-- /product-img -->
                                                </div>
                                                <div class="tab-pane fade position-relative" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                                    <div class="product-gallery-btn position-absolute z-index1  right0 mt-15 mr-15">
                                                        <a href="adm/uploads/<?=$res_product['featured_image'];?>" class="zoom-gallery dark-black-color bg-white d-inline-block " data-fancybox="images" ><i class="fas fa-compress"></i><img class="width100 d-none" src="images/product/product-large-img2.jpg" alt=""></a>                            
                                                    </div><!-- /product-gallery-btn -->
                                                    <div class="product-img border-gray2">
                                                        <img src='adm/uploads/<?=$res_product['featured_image'];?>' alt="product" data-zoom-image="images/product/product-large-img2.jpg"/>
                                                    </div><!-- /product-img -->
                                                </div>
                                                <div class="tab-pane fade position-relative" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                                    <div class="product-gallery-btn position-absolute z-index1 right0 mt-10 mr-10">
                                                        <a href="https://devsnews.com/template/stepmeds/stepmeds/images/product-details/product-large-img3.jpg/" class="zoom-gallery dark-black-color bg-white d-inline-block m-2 " data-fancybox="images" ><i class="fas fa-compress"></i><img class="width100 d-none" src="adm/uploads/<?=$res_product['featured_image'];?>" alt=""></a>                            
                                                    </div><!-- /product-gallery-btn -->
                                                    <div class="product-img border-gray2">
                                                        <img src='adm/uploads/<?=$res_product['featured_image'];?>' alt="product" data-zoom-image="images/product/product-large-img3.jpg"/>
                                                    </div><!-- /product-img -->
                                                </div>
                                            </div>
                                        </div>
                                    </div><!-- /product-left-img-tab -->
                                </div><!-- /col -->
                                <div class="col-xxl-5 col-xl-5  col-lg-6  col-md-11  col-sm-12 col-12">
                                    <div class="product-view-info mt-30">
                                        <div class="product-left-img-info">
                                            <h3 class="mb-20"><?=$res_product['product_name'];?></h3>
                                            <div class="rating rating-shop d-flex">
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
                                                <span class="gray-color2">(<?=$val;?> Reviews)</span>
                                            </div><!-- /rating -->
                                            <div class="price pb-18 pt-3">
                                                <span class="rc-price font700">₹ <?=$res_product['sale_price'];?></span>
                                                
                                                <a href="#"><i class="fa fa-chart"></i>Size Chart :</a>
                                            </div>
                                            
                                            <div class="p-info-text pr-55">
                                                <p class="gray-color2"><?=$res_product['short_description'];?></p>
                                                <!--<p class="gray-color2">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>-->
                                            </div>
                                            <div class="all-info d-sm-flex align-items-center mt-35 mb-4" style="    display: flex;">
                                                <div class="quick-add-to-cart d-sm-flex align-items-center mb-15 mr-10">
                                                    <div class="quantity-field position-relative d-inline-block mr-3">
                                                        <!--<input type="text" name="select1" value="0" class="quantity-input-arrow quantity-input text-center border-gray">-->
                                                         <input min="1" type="number" onchange="getqua(this.value)"   value="1">
                                                    </div>
                                                </div>
                                                <div class="pro-list-btn mr-10 mb-15" style="margin: 6px 20px;">
                                                     <ul>
                               <li>
                                   <form class="product-form" method="POST">
                               
                                <input type="hidden" id="quantity" value="1" name="qua">

                                
                                   <a onclick="add_to_cart(<?=$res_product['product_id']?>,<?=$res_product['sale_price'];?>);" class="btn btn-danger">Add to cart</a></li> 

                                </ul>
                                                    <!--<a href="#" class="web-btn h2-theme-border1 d-inline-block rounded-0 text-capitalize white h2-theme-bg position-relative over-hidden pl-35 pr-35 ptb-17">add to cart</a>-->
                                                </div>
                                                <!--<div class="pro-wishlist d-inline-block mb-15">-->
                                                <!--    <a href="#" class="web-btn h2-theme-border1 d-inline-block rounded-0 text-capitalize white h2-theme-bg position-relative over-hidden plr-16 ptb-15"><span class="icon-heart"></span></a>-->
                                                <!--</div>-->
                                            </div>
                                            <ul class="review-cat d-sm-flex align-items-center pt-20 pb-15">
                                                <li class="mb-1 mb-2 mr-6 d-inline-block">
                                                    <span class="cat-title dark-black-color font600">Categories :</span>
                                                </li>
                                                <?php
                                                $fetch_category=mysqli_query($con,"select * from tbl_category where status=1");
                                                while($res_cate=mysqli_fetch_array($fetch_category))
                                                { ?>
                                                <li class="mr-6 mb-2 d-inline-block position-relative">
                                                    <a href="category/<?=$res_cate['category_slug'];?>" class="gray-color2 font600"><?=$res_cate['category_name'];?>,</a>
                                                </li>
                                                <?php } ?>
                                               
                                            </ul><!-- /review-cat -->
                                            <ul class="social-link mt-10">
                                                <li class="d-block d-sm-inline-block mr-12">
                                                    <span class="cat-title dark-black-color font600">Share Now:</span>
                                                </li>
                                                <li class="d-inline-block" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Facebook">
                                                    <a class="d-inline-block font13 text-uppercase transition-3 mb-20" href="#">
                                                        <span class="d-inline-block text-center"><i class="fab fa-facebook-f"></i></span>
                                                    </a>
                                                </li>
                                                <li class="d-inline-block" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Twitter">
                                                    <a class="d-inline-block font13 text-uppercase transition-3 mb-20" href="#">
                                                        <span class="d-inline-block text-center"><i class="fab fa-twitter"></i></span>
                                                    </a>
                                                </li>
                                                <li class="d-inline-block" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Instagram">
                                                    <a class="d-inline-block font13 text-uppercase transition-3 mb-20" href="#">
                                                        <span class="d-inline-block text-center"><i class="fab fa-instagram"></i></span>
                                                    </a>
                                                </li>
                                                <li class="d-inline-block" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Pinterest">
                                                    <a class="d-inline-block font13 text-uppercase transition-3 mb-20" href="#">
                                                        <span class="d-inline-block text-center"><i class="fab fa-pinterest-p"></i></span>
                                                    </a>
                                                </li>
                                                <li class="d-inline-block" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Google plus">
                                                    <a class="d-inline-block font13 text-uppercase transition-3 mb-20" href="#">
                                                        <span class="d-inline-block text-center"><i class="fab fa-google-plus-g"></i></span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div><!-- /col -->
                            </div><!-- /row -->
                        </div><!--  -->

                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                <div class="product-review-tab-area mt-60">
                                    <!-- ====== product-review-area-start============ --> 
                                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                        <li class="nav-item" role="presentation">
                                        <button class="nav-link active bg-transparent pl-0 title position-relative hvr2 font600" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Description</button>
                                        </li>
                                        <!--<li class="nav-item" role="presentation">-->
                                        <!--<button class="nav-link bg-transparentt pl-0 title position-relative hvr2 font600" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Additional information</button>-->
                                        <!--</li>-->
                                        <!--<li class="nav-item" role="presentation">-->
                                        <!--<button class="nav-link bg-transparentt pl-0 title position-relative hvr2 font600" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Reviews (2)</button>-->
                                        <!--</li>-->
                                    </ul>
                                    <div class="tab-content mt-30" id="pills-tabContent">
                                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                            <div class="describe-area">
                                                <div class="product-details-text pr-10 mb-50">
                                                    <p class="gray-color2 dc-text1 pb-6"><?=$res_product['description'];?>
                                                    </p>
                                                    <!--<p class="gray-color2">-->
                                                    <!--    <span class="h2-theme-color pr-10"><i class="far fa-check-circle"></i></span>-->
                                                    <!--    Can Data Visualization Improve The Mobile Web Experience?-->
                                                    <!--</p>-->
                                                    <!--<p class="gray-color2">-->
                                                    <!--    <span class="h2-theme-color pr-10"><i class="far fa-check-circle"></i></span>-->
                                                    <!--    Smashing Podcast Episode 16 With Ben Frain: How Can Optimize Workspace-->
                                                    <!--</p>-->
                                                    <!--<p class="gray-color2">-->
                                                    <!--    <span class="h2-theme-color pr-10"><i class="far fa-check-circle"></i></span>-->
                                                    <!--    How To Make Performance Visible With GitLab CI And Hoodoo Of GitLab-->
                                                    <!--</p>-->
                                                    <!--<p class="gray-color2">-->
                                                    <!--    <span class="h2-theme-color pr-10"><i class="far fa-check-circle"></i></span>-->
                                                    <!--    Learning Resources In Challenging Times: Online Work And Events-->
                                                    <!--</p>-->
                                                    <!--<p class="gray-color2">-->
                                                    <!--    <span class="h2-theme-color pr-10"><i class="far fa-check-circle"></i></span>-->
                                                    <!--    Can Data Visualization Improve The Mobile Web Experience?-->
                                                    <!--</p>-->
                                                    <!--<p class="gray-color2">-->
                                                    <!--    <span class="h2-theme-color pr-10"><i class="far fa-check-circle"></i></span>-->
                                                    <!--    How To Make Performance Visible With GitLab CI And Hoodoo Of GitLab-->
                                                    <!--</p>-->
                                                </div> <!-- /product-details-text -->
                                                <div class="p-review-area pb-90">
                                                    
                                                    
                                                    <div class="row">
                                                         <?php 
                        $fetch_left_banner=mysqli_query($con,"select * from tbl_left_banner where status=1");
                        while($res_left_banner=mysqli_fetch_array($fetch_left_banner)){
                        ?>
                                                        <div class="col-xl-6  col-lg-6  col-md-6  col-sm-12 col-12 mb-20">
                                                            <img src="adm/uploads/<?=$res_left_banner['image'];?>" alt="">
                                                        </div><!-- /col -->
                                                        <!--<div class="col-xl-6  col-lg-6  col-md-6  col-sm-12 col-12 mb-20">-->
                                                        <!--    <img src="images/banner/banner-img2.jpg" alt="">-->
                                                        <!--</div>-->
                                                        <!-- /col -->
                                                        <?php } ?>
                                                    </div><!-- /row --> 
                                                </div><!-- /review-area -->
                                            </div>
                                        </div>
                                       
                                    </div>
                                </div><!-- product-review-area end --> 
                            </div><!-- /col -->
                        </div><!-- /row -->
                    </div><!-- /product-content -->
                </div><!-- /container -->
            </div>
            <!-- product-area-end  --> 

        </main>
        
        

        
        
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script>
    function add_to_cart(product_id,price)
    {
       var qty=$("#quantity").val();
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
$(".product-form").submit(function(e){
        var form_data = $(this).serialize();
       
        var button_content = $(this).find('button[type=submit]');
    
        $.ajax({
            
            url: "submit_product_to_cart.php",
            type: "POST",
            dataType:"json",
            data: form_data
        }).done(function(data){ 
          alert("hiii");
          if (data == 1) {
    swal("Success!", "Successfully Added to Cart..!", "success");
    setTimeout(function() {
        location.reload();
    }, 2000);
} else if (data == 2) {
    swal("Success!", "Successfully Updated Cart..!", "success");
    setTimeout(function() {
        location.reload();
    }, 2000);
} else {
    swal("Error!", "Something Went Wrong..!", "error");
    setTimeout(function() {
        location.reload();
    }, 2000);
}
e.preventDefault();

    //          if(data==1)  
    //          {
               
    //             swal("Success!", "Successfully Added Cart..!", "success");
                
    //           setInterval('location.reload()', 2000);
		  //  }
            
    //          else if(data==2)
    //          {
    //             swal("Success!", "Successfully Updated Cart..!", "success");
                
    //           setInterval('location.reload()', 2000);
		  //  }
    //          else
    //          {
    //          swal("Error!", "Something Went Wrong..!", "error");
                
    //           setInterval('location.reload()', 2000);
		  //  }
    //     })
    //     e.preventDefault();
    });
    </script>
    
    <script>
    function getqua(x)
    {
      $("#quantity").val(x);  
    }
</script>