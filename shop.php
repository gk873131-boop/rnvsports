<?php include('header.php');
 $max=mysqli_fetch_array(mysqli_query($con,"SELECT MAX(sale_price) as max_price FROM tbl_product WHERE status=1"));
 $min=mysqli_fetch_array(mysqli_query($con,"SELECT MIN(sale_price) as min_price FROM tbl_product WHERE status=1"));
$minimum_range = $min['min_price'];
$maximum_range =20000;
?>
<style>
            @media screen and (min-width: 480px) {
                #price_range
                {
                     margin: inherit;   
                }
            }
            </style>
        <main>
            

            <!-- ======slider-area-start=========================================== -->
            <div class="slider-area over-hidden">
                <div class="single-slider page-height3 d-flex align-items-center" data-background="images/b21.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 d-flex align-items-center justify-content-center">
                                <div class="page-title mt-10 text-center">
                                    <h2 style="color:white;" class="text-capitalize font600 mb-10">Shop</h2>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb justify-content-center bg-transparent">
                                        <li class=""><a class="primary-color" style="color:white;" href="index.php">Home</a></li>/
                                        <li class=" active text-capitalize" style="color:white;" aria-current="page">Shop</li>
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
                        <div class="product-wrapper mt-2">
                            <div class="row">
                                <div class="col-xl-3  col-lg-4  col-md-12  col-sm-12 col-12  pt-26 " >
                                    <div class="shop-sidebar-area productso pt-80">
                                        <div class="row">
                                            <div class="col-xl-12  col-lg-12  col-md-6  col-sm-12 col-12">
                                                <div class="row">
                                                    <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                                        <div class="sidebar-widget mb-20">
                                                            <h4 class="mb-15 title font600 sidebar-title d-inline-block position-relative pb-1">Product Categories</h4>
                                                            <ul>
                                                                <?php
                                                                $fetch_cat=mysqli_query($con,"select * from tbl_category where status=1");
                                                                while($res_category=mysqli_fetch_array($fetch_cat)){
                                                                ?>
                                                                <li class="pb-15 d-block ps"><a href="category/<?=$res_category['category_slug'];?>"><?=$res_category['category_name'];?></a></li>
                                                                   
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
                                            <div class="shop-header pt-20 mb-20">
                                                <div class="row align-items-center  position-relative s-top-nv" >
                                                    <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 pb-15 position-static pl-xl-0">
                                                        <div class="shop-header-right  align-items-center justify-content-between" style="text-align:end">
                                                            <!--<ul class="d-flex  align-items-center s-fil-vm clear-both">-->
                                                            <!--    <li>-->
                                                            <!--        <div class="view-mode d-flex align-items-center">-->
                                                            <!--            <ul class="nav nav-tabs border-0" id="myTab" role="tablist">-->
                                                            <!--                <li class="nav-item border-0" role="presentation">-->
                                                            <!--                    <button class="nav-link active border-0" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">-->
                                                            <!--                    <span><i class="fas fa-th"></i></span>-->
                                                            <!--                    </button>-->
                                                            <!--                </li>-->
                                                                           
                                                            <!--            </ul>-->
                                                            <!--        </div>-->
                                                            <!--    </li>-->
                                                            <!--</ul>-->
                                                            <ul class="shop-right align-items-center">
                                                              
                                                                <li>
                                                                    <div class="product-selection position-relative pl-25">
                                                                        <select class="border-0 py-0 pl-0" onchange="getData(this.value)">
                                                                            <!
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
                                                <div class="row shop-page-product-active shop_mainsec heading" id="load_product">
                                                    
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
             function getData(val){
        
        
             $.ajax({
            url:'ajax/fetch_two.php',
            method:'POST',
            data:{val:val},
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
		values:[<?php echo $minimum_range; ?>, <?php echo $maximum_range; ?>],
		slide:function(event, ui){
			$("#minimum_range").val(ui.values[0]);
			$('#maximum_range').val(ui.values[1]);
			load_product(ui.values[0], ui.values[1]);
		}
	});

	load_product(<?php echo $minimum_range; ?>, <?php echo $maximum_range; ?>)  ;
    
    function load_product(minimum_range, maximum_range)
    {
       
    	$.ajax({
    		url:"ajax/fetch.php",
    		method:"POST",
    		data:{minimum_range:minimum_range, maximum_range:maximum_range},
    		success:function(data)
    		{
    			$('#load_product').html(data);
    		}
    	});
    }
	
	
});  
</script>       
 <?php include('footer.php');?>
 
 