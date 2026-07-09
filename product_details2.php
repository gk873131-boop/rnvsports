<?php include('header.php'); 
if(isset($_GET['product']))
{
    $slug=$_GET['product'];
    $res_product=mysqli_fetch_array(mysqli_query($con, "select * from tbl_product where product_slug='$slug' and status=1"));

}
else
{
    ?>
    <script>
       window.location.href = 'index.php';
    </script>
<?php }
?>
 
<div class="page-header">
  <div class="container">
      <div class="breadcrumb_flex">
          <h3 class="page-title float-left"><?=$res_product['product_name'];?></h3>
            <ol class="breadcrumb float-right">
              <li><a href="index.php">Product Details </a></li>
              <li> / </li>
              <li class="active"> <?=$res_product['product_name'];?></li>
            </ol>
      </div>
    
  </div>
</div>

<div class="page_details">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="single_sliderimg">
                    <div class="item">
                        <img src="adm/uploads/<?=$res_product['featured_image'];?>">
                    </div>
                      <?php
$fetch_gallery=mysqli_query($con,"select * from tbl_product_gallery where product_id='".$res_product['product_id']."' and status=1");
while($res_top_gallery=mysqli_fetch_array($fetch_gallery))
                                            { ?>
                    <div class="item">
                        <img src="adm/uploads/<?=$res_top_gallery['image'];?>">
                    </div>
                     <?php } ?>
                   
                </div>
                <div class="slidergallery">
                     <div class="item">
                        <img src="adm/uploads/<?=$res_product['featured_image'];?>">
                    </div>
                   <?php
$fetch_gallery=mysqli_query($con,"select * from tbl_product_gallery where product_id='".$res_product['product_id']."' and status=1");
while($res_top_gallery=mysqli_fetch_array($fetch_gallery))
                                            { ?>
                    <div class="item">
                        <img src="adm/uploads/<?=$res_top_gallery['image'];?>">
                    </div>
                     <?php } ?>
                 
                </div>
            </div>
            <div class="col-md-7">
              <div class="product-right">
                <h3 class="product-title"><?=$res_product['product_name'];?></h3>
                <div class="product-desc"><?=$res_product['short_description'];?></div>
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
                    </div><!-- /rating -->
                <hr>
                
                <?php 
                
                $check_size=mysqli_num_rows(mysqli_query($con,"select * from tbl_price where product_id='".$res_product['product_id']."' and price_status=1"));
                if($check_size>0)
                {
                ?>
                <h5>Size</h5>
                <div class="size_product">
                    <form>
                            <select class="form-select" aria-label="Default select example" id="select_size" onchange="getsize(this.value)">
                                
                            
                               <?php
$fetch_size=mysqli_query($con,"select * from tbl_price where product_id='".$res_product['product_id']."' and price_status=1");
while($res_size=mysqli_fetch_array($fetch_size))
                                            { ?>
<option value="<?=$res_size['price_id'];?>"><?=$res_size['age'];?></option>
                              <?php } ?>
                            </select>
                    </form>
                </div>
                <?php } ?>
                <?php 
                $check_color=mysqli_num_rows(mysqli_query($con,"select * from tbl_color where product_id='".$res_product['product_id']."' and status=1"));
                if($check_color>0)
                {
                ?>
                 <h5>Color</h5>
                <div class="size_product mt-3">
                    <select class="form-select" aria-label="Default select example" id="select_size" onchange="getcolor(this.value)">
                                
                        
                
                        <?php
$fetch_color=mysqli_query($con,"select * from tbl_color where product_id='".$res_product['product_id']."' and status=1");
while($res_color=mysqli_fetch_array($fetch_color))
                                            { ?>
                   <option value="<?=$res_color['color_name'];?>"><?=$res_color['color_name'];?></option>
                   
                    <?php } ?>
                  </select> 
               
                </div>
                <?php } ?>
                <?php 
                $regular_price=$res_product['regular_price'];
                                    $sale_price=$res_product['sale_price'];
                                    $p=$regular_price-$sale_price;
	                                $pp=($p*100)/$regular_price;
                ?>
                <div class="price-box"> <span id="sale_price" class="price-regular-single">₹ <?=$res_product['sale_price'];?> </span> <span id="regular_price" class="price-old">₹ <?=$res_product['regular_price']?></span> <span style="font-size:16px;">MRP</span> <span id="discount_val" class="price-reduction"><?=round($pp);?>%</span> </div>
                <hr>
                <div class="product-button-group">
                  <div class="quantity">
                      <input type="number" min="1" max="9" step="1" onchange="getqua(this.value)" value="1">
                    </div>
                  <div class="btn-group cart">
                     <form class="product-form" method="POST">
                     <input type="hidden" id="quantity" value="1" name="qua">
                     <input type="hidden"  id="sizevalue">
                     <input type="hidden" name="new_price" id="new_price">
                     <input type="hidden" id="size_vales">
                      <input type="hidden"  id="color_value">
                     
                     <a onclick="add_to_cart(<?=$res_product['product_id']?>,<?=$res_product['sale_price'];?>);" class="btn btn-success"> Add to cart </a>
                     </form>
                  </div>
                  <div class="btn-group wishlist">
                   <a onclick="add_to_wishlist(<?=$res_product['product_id']?>,<?=$res_product['sale_price'];?>);" class="btn btn-danger"> Add to wishlist </a>

                    </form>
                  </div>
                  
                  <?php 
                 
                  $ext = pathinfo($res_product['size_chart'], PATHINFO_EXTENSION);
                  if($ext=='jpg' OR $ext=='JPG' OR $ext=='jpeg' OR $ext=='gif' OR $ext=='png' OR $ext=='WEBP' OR $ext=='webp')
                  {
                  ?>
                  <div class="btn-group wishlist">
                   <!--<a onclick="view_model(<?=$res_product['product_id']?>);" data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-primary">Size Chart</a>-->
                    <a onclick="view_model(<?=$res_product['product_id']?>);" data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-primary">Size Chart</a>
                    
                  </div>
                  <?php } ?>
                  
                    
                </div>
                <!--<hr>-->
                <!--<div class="shorty-desc">-->
                <!--  <p> Pergo coctione, aliter atque fructuosa negotium structura. Malo B. Option.  Ille vivere. Ut ad te id est in mensa. Levir meus, priusquam oppugnarent tempus quis, admonere dicitur. Credo quod idem mihi praesidium. img  Suspicio? Bere conatus sum ad te in omni tempore.</p>-->
                <!--</div>-->
                <!--<hr>-->
                <div class="footer-panel">
                  <!--<ul class="tag-cloud unstyled clearfix">-->
                  <!--  <li><a href="#">Creative</a></li>-->
                  <!--  <li><a href="#">Responsive</a></li>-->
                  <!--  <li><a href="#">Portfolio</a></li>-->
                  <!--  <li><a href="#">HTML</a></li>-->
                  <!--  <li><a href="#">CSS</a></li>-->
                  <!--  <li><a href="#">Retina</a></li>-->
                  <!--  <li><a href="#">Clean</a></li>-->
                  <!--</ul>-->
                  <hr>
                  <div class="social-box">
                    <h4>SHARE THIS STORY</h4>
                    <ul class="social-links">
                      <li><a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                      <li class=""><a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter"></i></a></li>
                      <li><a href="https://www.pinterest.com/" target="_blank"><i class="fab fa-pinterest"></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="product-label"> <img src="images/guarante.png" alt="img"> </div>
              </div>
            </div>
            
        </div>
    </div>
</div>

<div class="discription-page">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="product-review-tab-area mt-60">
                    <!-- ====== product-review-area-start============ --> 
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                        <button class="nav-link active bg-transparent pl-0 title position-relative hvr2 font600" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Specification</button>
                        </li>
                        <li class="nav-item" role="presentation">
                        <button class="nav-link bg-transparentt pl-0 title position-relative hvr2 font600" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Material</button>
                        </li>
                        <!--<li class="nav-item" role="presentation">-->
                        <!--<button class="nav-link bg-transparentt pl-0 title position-relative hvr2 font600" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Reviews</button>-->
                        <!--</li>-->
                    </ul>
                    <div class="tab-content mt-30" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                            <div class="describe-area">
                                <p><?=$res_product['description'];?></p>
                                <!--<div class="row">-->
                                <!--    <div class="col-md-6 col-sm-6">-->
                                <!--      <h5><i class="fa fa-flag"></i> One Font, 479 Icons</h5>-->
                                <!--      In a single collection, Font Awesome is a pictographic language of web-related actions.-->
                                <!--      <hr>-->
                                <!--    </div>-->
                                    
                                <!--    <div class="col-md-6 col-sm-6">-->
                                <!--      <h5><i class="fa fa-pencil"></i> CSS Control</h5>-->
                                <!--      Easily style icon color, size, shadow, and anything that's possible with CSS.-->
                                <!--      <hr>-->
                                <!--    </div>-->
                                <!--    <div class="col-md-6 col-sm-6">-->
                                <!--      <h5><i class="fa fa-eye"></i> Perfect on Retina Displays</h5>-->
                                <!--      Font Awesome icons are vectors, which mean they're gorgeous on high-resolution displays.-->
                                      
                                <!--    </div>-->
                                <!--    <div class="col-md-6 col-sm-6">-->
                                <!--      <h5><i class="fa fa-desktop"></i> Desktop Friendly</h5>-->
                                <!--      To use on the desktop or for a complete set of vectors,-->
                                <!--      check out the <a href="./cheatsheet/">cheatsheet</a>. </div>-->
                                    
                                <!--  </div>-->
                            </div>
                        </div>
                       <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <div class="describe-area">
                                <p><?=$res_product['specification'];?></p>
                                <!--<p>Pergo coctione, et ego, et tu oblivisci Pinkman. Obliviscendum hoc unquam factum. Intelligamus hoc in sola SINGULTO multo aliter atque fructuosa negotium structura. Malo B. Option. </p>-->
                                <!--<img src="images/slide1.jpg">-->
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                            <div class="describe-area">
                              <div class="col-xl-11 col-lg-11  col-md-12  col-sm-12 col-12">
                                    <div class="review-comments-area pb-60 mt-20">
                                        <h5 class="primary-color font600">2 reviews for Coating design lighting lamp</h5>
                                       <div class="rew_blk clearfix">
                                            <h5>Excellent </h5>
                                            <div class="top_row clearfix">
                                              <div class="date"><span class="fa fa-calendar"></span>1/3/2020</div>
                                              <a class="user" href="#"><span class="fa fa-user"></span>Sheldon</a>
                                              <div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
                                            </div>
                                            <p>Etiam pretium, arcu id mattis aliquet, est neque sagittis quam, id mollis leo urna non dui. Phasellus lacinia facilisis ipsum, a tempor nibh. Aliquam nec interdum mi. Nunc laoreet molestie massa, at euismod ipsum fringilla id. Vivamus vehicula metus velit, sit amet congue turpis suscipit in. Etiam interdum felis sed consequat varius. Aliquam erat volutpat. </p>
                                          </div>
                                        <div class="product-review mt-80 pb-10">
                                            <h5 class="mb-30 font600">Add a review </h5>
                                            <div class="d-flex">
                                                <span class="pr-15 mb-15">Your Rating:</span>
                                                <div class="rating rating-shop d-flex mb-15">
                                                    <ul class="d-flex mr-2">
                                                        <li>
                                                            <span><i class="fas fa-star"></i></span>
                                                        </li>
                                                        <li>
                                                            <span><i class="fas fa-star"></i></span>
                                                        </li>
                                                        <li>
                                                            <span><i class="fas fa-star"></i></span>
                                                        </li>
                                                        <li>
                                                            <span><i class="far fa-star"></i></span>
                                                        </li>
                                                        <li>
                                                            <span><i class="far fa-star"></i></span>
                                                        </li>
                                                    </ul>
                                                </div><!-- /rating -->
                                            </div>
                                        </div>
                                        <div class="reply-form contact-form-right mb-60">
                                            <form action="#">
                                                <div class="comment mb-10">
                                                    <label>Your Review</label>
                                                    <textarea name="message" class="form-control  primary-bg2 mt-10" id="message"></textarea>
                                                </div>
                                               
                                                <a href="#" class="web-btn h2-theme-border1 d-inline-block rounded-0 text-capitalize white h2-theme-bg position-relative over-hidden pl-40 pr-40 ptb-17">Submit</a>
                                            </form>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
               
            </div>
        </div>
    </div>
</div>

<div class="relatied_product">
    <div class="container">
        <div class="section-title text-center">
            <h3 class="font-pt light-black-color2 pb-1">RELATED PRODUCTS</h3>
        </div>
        <div class="related_poslid essential_pro">
             <?php
                $get_product=mysqli_query($con, "select * from tbl_product where category_id='".$res_product['category_id']."' and status='1'");  
                while($res_product=mysqli_fetch_array($get_product)) {
                        $name=$res_product['product_name'];
                        $sale_price=$res_product['sale_price'];
                ?>
            <div class="item">
               
                <div class="single-product">
                    <div class="single-product-img position-relative over-hidden">
                        <a class="position-relative d-block" href="product/<?=$res_product['product_slug']?>" tabindex="0">
                            <img src="adm/uploads/<?=$res_product['featured_image']?>" class="w-100" alt="product">
                        </a>
                        <div class="single-product-info">
                            <div class="rating rating-shop d-flex justify-content-center mt-25">
                                <!--<ul class="d-flex mr-2">
                                     <?php 
                                                                    $val=rand("1","5");
                                                                     for($i=1;$val>=$i;$i++)
                                                                     { ?>
                                    <li>
                                        <span><i class="fas fa-star"></i></span>
                                    </li>
                                    <?php }?>
                                    
                                </ul>-->
                            </div><!-- /rating -->
                            <h6 class="light-black-color2"><a href="product/<?=$res_product['product_slug']?>" tabindex="0"><?=$name;?></a></h6>
                            <ul class="single-product-price d-flex mt-2 transition-3 justify-content-center">
                                <li>
                                    <span class="theme-color d-inline-block font600">₹ <?=$sale_price;?></span>
                                </li>
                            </ul><!-- /single-product-price -->
                        </div>
                    </div>
                </div>
               
            </div>
 <?php } ?>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Size Chart</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="img_view">
        
      </div>
    
    </div>
  </div>
</div>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
 <script>
     function view_model(product_id)
     {
         
      $.ajax({
        type:'POST',
        dataType: 'html',
        url:'ajax/view_size_chart.php',
        data:{product_id:product_id},
        success:function(response) {
          
         $("#img_view").html(response);
        }
      });    
     }
 </script>
        <script>
    function add_to_cart(product_id,price_org)
    {
        price_val=$("#new_price").val();
        size_vales=$("#size_vales").val();
        color=$("#color_value").val();
        size_id=$("#sizevalue").val();
        if(price_val!='')
        {
         price=price_val;  
        }
        else
        {
         price=price_org;   
        }
        
       var qty=$("#quantity").val();
       $.ajax({
        type:'POST',
        url:'ajax/cart.php',
        data:{product_id:product_id,price:price,qty:qty,size_id:size_id,size_vales:size_vales,color:color},
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

      <script>
function add_to_wishlist(product_id,sale_price)
{
        $.ajax({
            
            url: "ajax/add_to_wishlist.php",
            type: "POST",
            dataType:"json",
            data: {product_id:product_id,sale_price:sale_price}
        }).done(function(data){ 
             if(data==1)
             {
                 swal("Success!", "Successfully Added Product in Wishlist", "success");
                
               setInterval('location.reload()', 4000);
             }
             else if(data==0)
             {
               swal("Info!", "Product Already in Wishlist", "info"); 
               setInterval('location.reload()', 4000); 
              
              window.location.href = "wishlist.php";
             }
             else if(data==2)
             {
                 window.location.href = "login.php";
             }
             else
             {
                 swal("Error!", "Something Went Wrong", "error");
               
             }
        })
        e.preventDefault();
    }
    </script>
    
    <script>
    function getqua(x)
    {
      $("#quantity").val(x);  
    }
</script>
<script>
    function getsize(size_id)
    {
        $("#sizevalue").val(size_id);
         $.ajax({
            
            url: "size.php",
            type: "POST",
            dataType:"json",
            data: {size_id:size_id}
        }).done(function(result){ 
             
                   $("#size_vales").val(result.size);
                  $("#new_price").val(result.rate_price);
                  $("#discount_val").html(result.percent);
                  $("#sale_price").html(result.price);
                 $("#regular_price").html(result.regular_price);
        
             
            
        });
        
    }
</script>

<script>
    function getcolor(x)
    {
     $("#color_value").val(x);   
    }
</script>
<?php include('footer.php'); ?>

 
  