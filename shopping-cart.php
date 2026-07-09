<?php include('header.php');
if(isset($_GET['cart_id']))

{
        mysqli_query($con,"update tbl_cart set product_qty='".$_GET['qty']."' where cart_id='".$_GET['cart_id']."'");
                 ?>
                 
                 <?php 
                }
          
?>
 <?php
 if(isset($_COOKIE['user']))
 {
    $cookie=$_COOKIE['user'];
    $cart=mysqli_query($con,"select * from tbl_cart where product_cookie='$cookie' and status=1");
}
$date=date("Y-m-d");
if(isset($_POST['promo_code']))
{
    unset($_SESSION['promo_id']);
    unset($_SESSION['total_discount']);
    unset($_SESSION['after_grand_total']);
    unset($_SESSION['promo_code_c']);
    $code=$_POST['code'];
    $_SESSION['promo_code_c']=$code;
    $grand_total=$_POST['grand_total'];
    $data=mysqli_query($con,"select * from tbl_promo where promo_code='$code' and status=1");
    if(mysqli_num_rows($data)>0)
    {
        
    $fetch=mysqli_fetch_array($data);
     
    $promo_id=$fetch['promo_id'];
    $_SESSION['promo_id']=$promo_id;
    $discount=$fetch['discount'];

    $expiry_date=$fetch['expiry_date'];
    if($expiry_date>=$date)
    {
      $total_Amt=$discount*$grand_total/100;
      $new_total=$grand_total-$total_Amt;
      $_SESSION['total_discount']=$total_Amt;
      $_SESSION['after_grand_total']=$new_total;
    }
    else
    {
    $not_a_value=1;
    $grand_total=$_POST['grand_total'];
    ?>
    <script>
         alert("Coupon is expired..!");
     </script> 
        
   <?php  }
    }
    
    else
    {
        $not_a_value=1;
    $grand_total=$_POST['grand_total'];
    ?>
     <script>
         alert("Invalid Coupon code..!");
     </script>   
    <?php } 
    
    
}
?> 

        <main>

            <!-- ======slider-area-start=========================================== -->
            <div class="slider-area over-hidden">
                <div class="single-slider page-height3 d-flex align-items-center" data-background="images/cart.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 d-flex align-items-center justify-content-center">
                                <div class="page-title mt-10 text-center">
                                    <h2 style="color:white;" class="text-capitalize font600 mb-10">Shopping Cart</h2>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb justify-content-center bg-transparent">
                                        <li class=""><a class="primary-color" href="index.php" style="color:white;">Home</a></li>/
                                        <li class="active text-capitalize" aria-current="page" style="color:white;">Shopping Cart</li>
                                        </ol>
                                    </nav>
                                </div><!-- /page title -->
                            </div><!-- /col -->
                        </div><!-- /row -->
                    </div><!-- /container -->
                </div><!-- /single-slider -->
            </div>
            <!-- slider-area-end  -->

        <!-- ====== cart-area-start=============================================== --> 
        <div class="cart-area mt-100">
            <div class="container border-b-light-gray pb-100">
              <?php if(isset($_SESSION['success_delete_cart']))
            	{
            		?>
            		<div class="alert alert-success alert-dismissible" style="font-size: 10px;
    color: blanchedalmond;">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <p>
    <?php echo $_SESSION['success_delete_cart'];?></p>
</div>
            	<?php }  unset($_SESSION['success_delete_cart']);?>
                <div class="cart-table text-center table-responsive-sm">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Image</th>
                            <th scope="col">Product name </th>
                            <th scope="col">Unit price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Total</th>
                            <th scope="col">Remove</th>
                        </tr>
                        </thead>
                        <tbody>
                             <?php
                                         $count=1;
                                         $org_total=0;
                                         $grand_total=0;
                                         $total=0;
                                        if(mysqli_num_rows($cart)>0)
                                        {
                                        while($res_cart=mysqli_fetch_array($cart))
                                        {
                                           $cart_price=$res_cart['cart_price'];
                                           $product_qty=$res_cart['product_qty'];
                                          $total=$cart_price*$product_qty;
                                          $grand_total+=$total;
                                          $org_total+=$total;
                                        
                                        $fetch_product=mysqli_fetch_array(mysqli_query($con,"select * from tbl_product where product_id='".$res_cart['product_id']."'"));
                                        ?>
                           
                        <tr>
                            <td>
                                <a href="product/<?=$fetch_product['product_slug']?>" class="cart-img d-block">
                                    <img src="adm/uploads/<?php echo $fetch_product['featured_image'];?>" alt="">
                                </a>
                            </td>
                            <td>
                                <a href="product/<?=$fetch_product['product_slug']?>" class="p-name primary-color">
                                    <?=$fetch_product['product_name'];?>
                                    <?php 
                                    if($res_cart['size']!='')
                                    { ?>
                                    (Size: <?=$res_cart['size'];?>)
                                    <?php } ?>
                                    <?php 
                                     if($res_cart['product_color']!='')
                                    { ?>
                                     (Color:<?=$res_cart['product_color'];?>)
                                     <?php } ?>
                                </a>
                            </td>
                            <td>
                                <div class="cart-price">Rs.<?=number_format($cart_price,2);?></div></td>
                            <td>
                                <div class="all-info product-view-info text-center mt-35">
                                   
                                            <input type="number" onchange="updateCart(<?=$res_cart['cart_id'];?>,this.value)" name="select1" value="<?=$product_qty?>" class="">
                                       
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart-price">Rs.<?=number_format($total,2);?></div>
                            </td>
                            <td>
                <a onclick="delete_cart(<?=$res_cart['cart_id']?>)" class="p-remove theme-color"><span class="icon-clear"></span></a>
                            </td>
                        </tr>
                        
                            <?php }
                                        }
                                        else
                                        { ?>
                                          <tr>
                            <td colspan="6">
                                <p>Empty Cart..!</p>
                            </td>
                            </tr>
                                        <?php }
                            ?>
                        
                        </tbody>
                    </table>
                </div>
                <?php 
                if(mysqli_num_rows($cart))
                { ?>
                <div class="coupon-and-update-area pt-20">
                    <div class="row">
                        <div class="col-xl-6  col-lg-6  col-md-12  col-sm-12 col-12">
                            <div class="coupon-code-area pt-15">
                                <form action="shopping-cart.php" method="POST">
                                    <input type="hidden" name="grand_total" value="<?=$grand_total?>">
                                    <input type="text" value="<?=$_SESSION['promo_code_c'];?>" name="code" placeholder="Coupon code" class="pl-15 mr-10 pt-0 mb-15 d-inline-block width50">
                                    <button type="submit" name="promo_code" class="web-btn h2-theme-border1 d-inline-block text-uppercase white  rounded-0 h2-theme-color cart-c-btn h2-theme-bg position-relative over-hidden pl-40 pr-40 ptb-17 mr-20">Apply coupon</button>
                                </form>
                            </div>
                        </div><!-- /col -->
                        <div class="col-xl-6  col-lg-6  col-md-12  col-sm-12 col-12">
                            <!--<div class="update-area d-flex justify-content-xl-end">-->
                            <!--    <a href="#" class="web-btn h2-theme-border1 d-inline-block text-uppercase white mt-15 rounded-0 h2-theme-color h2-theme-bg position-relative over-hidden pl-60 pr-60 ptb-17 mr-20">UPDATE CART</a>-->
                            <!--</div>-->
                        </div><!-- /col -->
                    </div><!-- /row -->
                </div>
                <?php } ?>
                <?php 
                if(mysqli_num_rows($cart)>0)
                { ?>
                <div class="row">
                    <div class="col-xl-6  col-lg-6  col-md-12  col-sm-12 col-12 offset-xl-6 offset-lg-6">
                        <div class="total-price-area mt-60">
                            <h2 class="font600">Cart totals</h2>
                            <ul class="pt-15 pb-25">
                                <li class="d-flex justify-content-between align-items-center border-gray1 mb-2 pl-25 pr-25 pt-15 pb-15">
                                    <span>Subtotal</span><span>Rs.<?=number_format($grand_total,2);?></span>
                                </li>
                                 <?php
                               if(isset($_SESSION['promo_id']))
                              { 
                                if($not_a_value==1)
                                {
                                    
                                ?>
                                 
                                 <li class="d-flex justify-content-between align-items-center border-gray1 pl-25 pr-25 pt-15 pb-15">
                                    <span>Promo Discount </span><span>Rs.<?=number_format($_SESSION['total_discount'],2);?></span>
                                </li>
                                <li class="d-flex justify-content-between align-items-center border-gray1 pl-25 pr-25 pt-15 pb-15">
                                    <span>Total </span><span>Rs.<?=number_format($grand_total,2);?></span>
                                </li>
                                <?php }
                                else
                                { ?>
                                  <li class="d-flex justify-content-between align-items-center border-gray1 pl-25 pr-25 pt-15 pb-15">
                                    <span>Promo Discount </span><span>Rs.<?=number_format($_SESSION['total_discount'],2);?></span>
                                </li>
                                <li class="d-flex justify-content-between align-items-center border-gray1 pl-25 pr-25 pt-15 pb-15">
                                    <span>Total </span><span>Rs.<?=number_format($_SESSION['after_grand_total'],2);?></span>
                                </li>   
                                <?php }
                                }
                                else
                                { ?>
                                <li class="d-flex justify-content-between align-items-center border-gray1 pl-25 pr-25 pt-15 pb-15">
                                    <span>Total </span><span>Rs.<?=number_format($grand_total,2);?></span>
                                </li>
                                <?php  } ?>
                            </ul>
                            <form action="checkout.php" method="POST">
                               <input type="hidden" name="promo_id" value="<?=$_SESSION['promo_id'];?>">
                              <input type="hidden" name="org_total" value="<?=$org_total;?>">
                               <?php
                               if(isset($_SESSION['promo_id']))
                              {
                                 if($not_a_value==1)
                                 { ?>
                                     
                                  <input type="hidden" name="total_amount" value="<?=$grand_total;?>">
                                 
                                <?php  }
                                else
                                { ?>
                                  <input type="hidden" name="total_amount" value="<?=$_SESSION['after_grand_total'];?>">  
                                   <input type="hidden" name="total_discount" value="<?=$_SESSION['total_discount'];?>">
                                   
                                <?php }
                              }
                              else
                              { ?>
                               <input type="hidden" name="total_amount" value="<?=$grand_total;?>">    
                              <?php } ?>
                                                           <button type="submit" name="checkout" class="web-btn h2-theme-border1 d-inline-block text-uppercase white  rounded-0 h2-theme-color h2-theme-bg position-relative over-hidden pl-40 pr-40 ptb-17 mr-20">Checkout</button>
   
                            </form>
                        </div>
                    </div><!-- /col -->
                </div>
                <?php } ?>
            </div><!-- /container -->
            </div>
            <!-- cart-area-end -->

        </main>
        
        <script>
            function delete_cart(cart_id)
            {
               $.ajax({
        type:'POST',
        url:'ajax/delete_cart.php',
        data:{cart_id:cart_id},
        success:function(response) {
          if(response==1)
          {
              
              swal("Deleted Cart", "Successfully Deleted Cart", "success");
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
function updateCart(cid,qty)
{
   
window.location='shopping-cart.php?cart_id='+cid+'&qty='+qty;
}
</script>
  <?php include('footer.php');?>
  
  