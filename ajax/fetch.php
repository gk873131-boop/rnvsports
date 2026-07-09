<?php include '../adm/connect.php'; ?>
<?php 
if(isset($_POST["minimum_range"]) AND isset($_POST["maximum_range"]))
{

   $query="SELECT * FROM tbl_product WHERE status=1 ORDER BY sale_price ASC";



$statement = mysqli_query($con,$query);


$total_row = mysqli_num_rows($statement);

$output = '
<h4 align="center">Total Item - '.$total_row.'</h4>';

$get = mysqli_query($con,"select * from tbl_category where status=1");
while($res = mysqli_fetch_array($get)){
$output = '
<h1>'.$res['category_name'].'</h1>
<div class="row essential_pro">';
$statements = mysqli_query($con, "SELECT * FROM tbl_product WHERE status=1 AND  category_id='".$res['category_id']."'  AND sale_price BETWEEN '".$_POST["minimum_range"]."' AND '".$_POST["maximum_range"]."' ORDER BY product_name ASC");

if(mysqli_num_rows($statements) > 0)
{
	while($res_product=mysqli_fetch_array($statements))
	{
	    $name=substr($res_product['product_name'],0,50).'...';
         $regular_price=$res_product['regular_price'];
                                    $sale_price=$res_product['sale_price'];
                                    $per_rate=$regular_price-$sale_price;
                                    $discount_price=($per_rate*100)/$regular_price;
	
		 $output .= '<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12 plr-14"">
                                                        <div class="single-product mb-30">
                                                            <div class="single-product-img position-relative over-hidden">
                                                                <div class="single-product-label position-absolute theme-bg text-center  transition-3 z-index1">	
                                                                    <span class="white text-uppercase d-block font500">'.round($discount_price).'%</span>	
                                                                </div><!-- /product-label -->
                                                                <a class="position-relative d-block" href="product/'.$res_product['product_slug'].'">
                                                                    <img class="" src="adm/uploads/'.$res_product['featured_image'].'" alt="product">
                                                                </a>
                                                                <div class="single-product-info">
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
                                                                    <h6 class="light-black-color2 page_slug_2"><a href="product/'.$res_product['product_slug'].'">'.$name.'</a></h6>
                                                                    <ul class="single-product-price d-flex mt-2 transition-3 justify-content-center">
                                                                        <li>
                                                                            <span class="pr-2 d-inline-block"><del>₹ '.$regular_price.'</del></span>
                                                                            <span class="theme-color d-inline-block font600">₹ '.$sale_price.'</span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                    
                                                     
                                                     
                                                    </div>
                                             
                                                    </div>';
	}
}
else
{
	$output .= '
		<h3 align="center">No Product Found</h3>
	';
}
$output .= '
</div><hr>
';
echo $output;
}

}
else
{
 
$query="SELECT * FROM tbl_product WHERE status='1' AND sale_price BETWEEN '".$_POST["minimum_range"]."' AND '".$_POST["maximum_range"]."' ORDER BY sale_price ASC
";
$statement = mysqli_query($con,$query);


$total_row = mysqli_num_rows($statement);

$output = '
<h4 align="center">Total Item - '.$total_row.'</h4>
<div class="row essential_pro">
';

if($total_row > 0)
{
	while($res_product=mysqli_fetch_array($statement))
	{
	    $name=substr($res_product['product_name'],0,50).'...';
         $regular_price=$res_product['regular_price'];
                                    $sale_price=$res_product['sale_price'];
                                    $per_rate=$regular_price-$sale_price;
                                    $discount_price=($per_rate*100)/$regular_price;
	
		 $output .= '<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12 plr-14"">
                                                        <div class="single-product mb-30">
                                                            <div class="single-product-img position-relative over-hidden">
                                                                <div class="single-product-label position-absolute theme-bg text-center  transition-3 z-index1">	
                                                                    <span class="white text-uppercase d-block font500">'.round($discount_price).'%</span>	
                                                                </div><!-- /product-label -->
                                                                <a class="position-relative d-block" href="product/'.$res_product['product_slug'].'">
                                                                    <img class="" src="adm/uploads/'.$res_product['featured_image'].'" alt="product">
                                                                </a>
                                                                <div class="single-product-info">
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
                                                                    <h6 class="light-black-color2 page_slug_2"><a href="product/'.$res_product['product_slug'].'">'.$name.'</a></h6>
                                                                    <ul class="single-product-price d-flex mt-2 transition-3 justify-content-center">
                                                                        <li>
                                                                            <span class="pr-2 d-inline-block"><del>₹ '.$regular_price.'</del></span>
                                                                            <span class="theme-color d-inline-block font600">₹ '.$sale_price.'</span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                    
                                                     
                                                     
                                                    </div>
                                             
                                                    </div>';
	}
}
else
{
	$output .= '
		<h3 align="center">No Product Found</h3>
	';
}
$output .= '
</div>
';

echo $output;


}












?>

