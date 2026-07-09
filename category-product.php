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

 $min=mysqli_fetch_array(mysqli_query($con,"SELECT MIN(sale_price) as min_price FROM tbl_product WHERE status=1 and category_id='".$fetch_cat_two['category_id']."'"));
$minimum_range = $min['min_price'];
$maximum_range = 20000;
$category_id = $fetch_cat_two['category_id'];
?>

        <main>

            <!-- ======slider-area-start=========================================== -->
            <div class="slider-area over-hidden">
                <div class="single-slider page-height3 d-flex align-items-center" data-background="images/bbb.jpg" >
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 d-flex align-items-center justify-content-center">
                                <div class="page-title mt-10 text-center">
                                    <h2 style="color:white;" class="text-capitalize font600 mb-10"><?=$fetch_cat_two['category_name'];?></h2>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb justify-content-center bg-transparent">
                                        <li class="" ><a style="color:white;" class="primary-color" href="index.php">Home / </a></li>
                                        <li style="color:white;" class="active text-capitalize" aria-current="page"><?=$fetch_cat_two['category_name'];?></li>
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
                            <input type="hidden" id="cate_id" value="<?=$fetch_cat_two['category_id']?>">
                            <div class="row">
                                <div class="col-xl-3  col-lg-4  col-md-12  col-sm-12 col-12">
                                    <div class="shop-sidebar-area pt-80">
                                        <div class="row">
                                            <div class="col-xl-12  col-lg-12  col-md-6  col-sm-12 col-12">
                                                <div class="row">
                                                    <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                                        <div class="sidebar-widget mb-20">
                                                            <h4 class="mb-15 title font600 sidebar-title d-inline-block position-relative pb-1">Product Categories</h4>
                                                            <ul>
                                                                <?php
                                                               $fetch_all=mysqli_query($con,"select * from tbl_category where status=1");
                                                                while($res_category=mysqli_fetch_array($fetch_all)){
                                                                ?>
                                                                <li class="pb-15 d-block ps"><a href="category/<?=$res_category['category_slug'];?>"><?=$res_category['category_name'];?></a>
                                                                    <!--<span class="accordion"></span>-->
                                                                    <!--<ul class="panel bg-transparent over-hidden">-->
                                                                    <!--    <li><a class="pb-15 pt-20 d-block" href="#">Floor</a></li>-->
                                                                    <!--    <li><a class="pb-2 d-block" href="#">Outdoor</a></li>-->
                                                                    <!--</ul>-->
                                                                </li>
                                                                <!--<li class="pb-15 d-block"><a href="shop.html">Clothing <span>(8)</span></a>-->
                                                                <!--    <span class="accordion"></span>-->
                                                                <!--    <ul class="panel bg-transparent over-hidden">-->
                                                                <!--        <li><a class="pb-15 pt-20 d-block" href="#">Man</a></li>-->
                                                                <!--        <li><a class="pb-15 d-block" href="#">Women</a></li>-->
                                                                <!--        <li><a class="pb-2 d-block" href="#">children</a></li>-->
                                                                <!--    </ul>-->
                                                                <!--</li>-->
                                                                <!--<li class="pb-15 d-block"><a href="shop.html">Interior <span>(3)</span></a>-->
                                                                <!--    <span class="accordion"></span>-->
                                                                <!--    <ul class="panel bg-transparent over-hidden">-->
                                                                <!--        <li><a class="pb-15 pt-20 d-block" href="#">Man</a></li>-->
                                                                <!--        <li><a class="pb-15 d-block" href="#">Women</a></li>-->
                                                                <!--        <li><a class="pb-2 d-block" href="#">children</a></li>-->
                                                                <!--    </ul>-->
                                                                <!--</li>-->
                                                                <!--<li class="pb-15 d-block"><a href="shop.html">Lights <span>(4)</span></a>-->
                                                                <!--    <span class="accordion"></span>-->
                                                                <!--    <ul class="panel bg-transparent over-hidden">-->
                                                                <!--        <li><a class="pb-15 pt-20 d-block" href="#">Bathroom Lights</a></li>-->
                                                                <!--        <li><a class="pb-2 d-block" href="#">Ceiling lights</a></li>-->
                                                                <!--        <li><a class="pb-15 pt-2 d-block" href="#">Tables lamp</a></li>-->
                                                                <!--        <li><a class="pb-2 d-block" href="#">Wall lights</a></li>-->
                                                                <!--    </ul>-->
                                                                <!--</li>-->
                                                                <!--<li class="pb-15 d-block"><a href="shop.html">Wheel <span>(9)</span></a>-->
                                                                <!--    <span class="accordion"></span>-->
                                                                <!--    <ul class="panel bg-transparent over-hidden">-->
                                                                <!--        <li><a class="pb-15 pt-20 d-block" href="#">Man</a></li>-->
                                                                <!--        <li><a class="pb-15 d-block" href="#">Women</a></li>-->
                                                                <!--        <li><a class="pb-2 d-block" href="#">children</a></li>-->
                                                                <!--    </ul>-->
                                                                <!--</li>-->
                                                                <!--<li class="pb-15 d-block"><a href="shop.html">Tires <span>(11)</span></a>-->
                                                                <!--    <span class="accordion"></span>-->
                                                                <!--    <ul class="panel bg-transparent over-hidden">-->
                                                                <!--        <li><a class="pb-15 pt-20 d-block" href="#">Bathroom Lights</a></li>-->
                                                                <!--        <li><a class="pb-2 d-block" href="#">Ceiling lights</a></li>-->
                                                                <!--        <li><a class="pb-15 pt-2 d-block" href="#">Tables lamp</a></li>-->
                                                                <!--        <li><a class="pb-2 d-block" href="#">Wall lights</a></li>-->
                                                                <!--    </ul>-->
                                                                <!--</li> -->
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
                                                                      <div class="prc-slider-content mb-15">
                                                                         
                                                                           
                                                                               
					
					<div style="background: #ee7203;" id="price_range"></div>
				 </br>
				 <div style="display:flex;">
				 <input type="text" name="minimum_range" id="minimum_range" style="width: 47%;" class="form-control" value="<?php echo $minimum_range; ?>" disabled/>
				    <p style="    padding: 0px 7px;">To</p>
					<input type="text" name="maximum_range" id="maximum_range" style="width: 47%;" class="form-control" value="<?php echo $maximum_range; ?>" disabled/>
			</div>
		
                                                                            
                                                                        </div>
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
                                                                    <div class="product-selection position-relative pl-25">
                                                                       <select class="border-0 py-0 pl-0" onchange="getData(this.value, <?=$category_id;?>)">
                                                                            <!--<option value="">Sort By New</option>-->
                                                                            <!--<option value="">Sort by popularity</option>-->
                                                                            <!--<option value="">Sort by average rating</option>-->
                                                                            <!--<option value="">Sort by latest</option>-->
                                                                            <!--<option value="">Sort by price: low to high</option>-->
                                                                            <!--<option value="">Sort by price: high to low</option>-->
                                <!--<option value="rel">Relevance</option>-->
                                <option value="product_name_asc">Name (A - Z)</option>
                                <option value="product_name_desc">Name (Z - A)</option>
                                <option value="price_low_to_high">Price (Low &gt; High)</option>
                                <option value="price_high_to_low">Price (High &gt; Low)</option>
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
                                               <div class="row shop-page-product-active shop_mainsec" id="load_product">
                                                    
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
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
             function getData(val,category_id){
        
        
             $.ajax({
            url:'ajax/fetch_two_category.php',
            method:'POST',
            data:{val:val,category_id:category_id},
            success:function(data){
                $('#load_product').html(data);
               
            }
        });
             }
        
       
        </script>
        
        
 
 <script>  
$(document).ready(function(){

	$('#price_range').slider({
		range:true,
		min:1,
		max:20000,
		values:[<?php echo $minimum_range; ?>, <?php echo $maximum_range; ?>, <?php echo $category_id; ?>],
		slide:function(event, ui){
			$("#minimum_range").val(ui.values[0]);
			$('#maximum_range').val(ui.values[1]);
			$('#cate_id').val(ui.values[2]);
			load_product(ui.values[0], ui.values[1], ui.values[2]);
		}
	});

	load_product(<?php echo $minimum_range; ?>, <?php echo $maximum_range; ?>, <?php echo $category_id; ?>)  ;
    
    function load_product(minimum_range, maximum_range, category_id)
    {
      
    	$.ajax({
    		url:"ajax/fetch_category.php",
    		method:"POST",
    		data:{minimum_range:minimum_range, maximum_range:maximum_range,category_id:category_id},
    		success:function(data)
    		{
    			$('#load_product').html(data);
    		}
    	});
    }
	
	
});  
</script>      
 <?php include('footer.php');?>