<?php include('header.php');?>
<?php
if(isset($_SESSION['customer_id']))
{
 $fetch_customer=mysqli_fetch_array(mysqli_query($con,"select * from tbl_customer where customer_status=1 and user_id='".$_SESSION['customer_id']."'"));  
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
    unset($_SESSION['promo_id']);
    unset($_SESSION['total_discount']);
    unset($_SESSION['after_grand_total']);
    unset($_SESSION['promo_code_c']);
    
    $great_grand_total=$_POST['grand_total'];
    ?>
    <script>
         alert("Coupon is expired..!");
     </script> 
        
   <?php  }
    }
    
    else
    {
       unset($_SESSION['promo_id']);
    unset($_SESSION['total_discount']);
    unset($_SESSION['after_grand_total']);
    unset($_SESSION['promo_code_c']);
    $great_grand_total=$_POST['grand_total'];
    ?>
     <script>
         alert("Invalid Coupon code..!");
     </script>   
    <?php } 
    
    
}

else if(isset($_COOKIE['user']))
 {
    
    $cookie=$_COOKIE['user'];
    $cart=mysqli_query($con,"select * from tbl_cart where product_cookie='$cookie' and status=1");
    while($result_cart=mysqli_fetch_array($cart))
    {
      $cart_price=$result_cart['cart_price'];
      $product_qty=$result_cart['product_qty'];
      $total=$cart_price*$product_qty;
    
      $great_grand_total+=$total;
      
    }
}


?>
<style>
    td
    {
        width: 100% !important;
}
    }
</style>
        <main>

            <!-- ======slider-area-start=========================================== -->
            <div class="slider-area over-hidden">
                <div class="single-slider page-height3 d-flex align-items-center" data-background="images/checkout.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 d-flex align-items-center justify-content-center">
                                <div class="page-title mt-10 text-center">
                                    <h2 style="color:white;" class="text-capitalize font600 mb-10">Checkout</h2>
                                    <nav aria-label="breadcrumb" >
                                        <ol class="breadcrumb justify-content-center bg-transparent">
                                        <li class=""><a class="primary-color" href="index.php" style="color:white;">Home</a></li>/
                                        <li class="active text-capitalize" aria-current="page" style="color:white;">Checkout</li>
                                        </ol>
                                    </nav>
                                </div><!-- /page title -->
                            </div><!-- /col -->
                        </div><!-- /row -->
                    </div><!-- /container -->
                </div><!-- /single-slider -->
            </div>
            <!-- slider-area-end  -->

            <!-- ====== coupon-area-start=============================================== --> 
            <div class="coupon-area mt-80">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6  col-lg-6  col-md-6  col-sm-12 col-12">
                            <div class="coupon-accordion">
                                <!-- accordion start -->
                                <h6 class="pt-15 pl-40 pb-15 mb-25 position-relative">Returning customer? <span id="login" class="light-black-color2 font600 transition-3">Click here to login</span></h6>
                                <div id="checkout-login" class="coupon-content border-gray pt-20 pb-35 pl-30 pr-30 mb-25">
                                    <?php 
                                    if(isset($_SESSION['login_error']))
                                    { ?>
                                    <div class="alert alert-danger alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <p><?php echo $_SESSION['login_error'];?></p>
</div>
<?php } unset($_SESSION['login_error']);
                                    ?>
                                    <div class="coupon-info">
                                        
                                        <p class="coupon-text mb-15">Quisque gravida turpis sit amet nulla posuere lacinia. Cras sed est
                                            sit amet ipsum luctus.</p>
                                        <form action="controller.php" method="POST">
                                            <p class="log-mail mb-0">
                                                <label>Username or email <span class="required"><span class="theme-color">*</span></span></label>
                                                <input type="text" name="email" placeholder="Enter Email..!" class="form-control primary-bg2 border-gray" required>
                                            </p>
                                            <p class="log-pass mb-0">
                                                <label>Password <span class="required"><span class="theme-color">*</span></span></label>
                                                <input type="password" name="password" placeholder="Enter Password..!" class="form-control primary-bg2 border-gray" required>
                                            </p>
                                            <div class="log-btn mb-0">
                                                <button type="submit" name="btn_login_checkout" class="web-btn h2-theme-border1 d-inline-block text-capitalize white mt-15 mb-30 rounded-0 h2-theme-color h2-theme-bg position-relative over-hidden pl-60 pr-60 ptb-17 mr-20">Login</button>
                                                <!--<div class="save-info d-inline-block mb-30 mt-2">-->
                                                <!--    <input class="p-0 pr-1" type="checkbox" aria-label="Checkbox for following text input">-->
                                                <!--    <p class="mb-0 d-inline-block">Remember me</p>-->
                                                <!--</div>-->
                                            </div>
                                            <!--<p class="lost-password mb-0">-->
                                            <!--    <a href="#" class="light-black-color2 font600">Lost your password?</a>-->
                                            <!--</p>-->
                                        </form>
                                    </div>
                                </div>
                                <!-- accordion start -->
                            </div>
                        </div><!-- /col -->
                        <div class="col-xl-6  col-lg-6  col-md-6  col-sm-12 col-12">
                            <div class="coupon-accordion">
                                <!-- accordion start -->
                                <h6 class="pt-15 pl-40 pb-15 mb-25 position-relative">Have a coupon? <span  id="couponshow" class="light-black-color2 font600 transition-3">Click here to enter your code</span></h6>
                                <div id="checkout-coupon" class="checkout-content">
                                    <div class="coupon-info">
                        <form action="checkout.php" method="POST">
                            <input type="hidden" name="grand_total" value="<?=$_SESSION['org_amount'];?>">
                                            <p class="checkout-coupon">
                            <input type="text" value="<?=$_SESSION['promo_code_c'];?>" name="code" class="form-control primary-bg2 border-gray" placeholder="Coupon Code">
                                                <button type="submit" name="promo_code" class="web-btn h2-theme-border1 d-inline-block text-capitalize white mt-15 mb-30 rounded-0 h2-theme-color h2-theme-bg position-relative over-hidden pl-60 pr-60 ptb-17 mr-20">Apply coupon</button>
                                            </p>
                                        </form>
                                    </div>
                                </div>
                                <!-- accordion start -->
                            </div>
                        </div><!-- /col -->
                    </div><!-- /row -->
                </div><!-- /container -->
            </div>
            <!-- cart-area-end -->

            <!-- ====== checkout-area-start ============================================= -->
            <div class="checkout-area mb-60">
               
                <form action="controller.php" method="POST">
                   <?php
                   if($_SESSION['after_grand_total']!='')
                   {
                  
                   ?>
                     <input type="hidden" name="total_amount" value="<?=$_SESSION['after_grand_total'];?>">   
                  <?php
                   }
                   else
                   { 
                 
                   ?>
                      <input type="hidden" name="total_amount" value="<?=$great_grand_total;?>"> 
                   <?php } ?>
                    <input type="hidden" name="total_discount" value="<?=$_SESSION['total_discount'];?>">
                    <input type="hidden" name="promo_id" value="<?=$_SESSION['promo_id'];?>">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6  col-lg-6  col-md-12  col-sm-12 col-12">
                            <div class="checkbox-form">
                                <h4 class="pb-10 mb-20 border-b-light-gray2">Billing Details</h4>
                                <div class="row">
                                    <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                        <div class="country-select mb-30">
                                            <label>Country <span class="theme-color">*</span></label>
                                            <select class="w-100 primary-bg2 mb-20" name="country" required>
                                                <option value="bangladesh">bangladesh</option>
                                                <option value="Algeria">Algeria</option>
                                                <option value="India" selected>India</option>
                                                
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12">
                                        <div class="checkout-form-list mb-20">
                                            <label>First Name <span class="theme-color">*</span></label>
                                            <input type="text" placeholder="First Name " name="fname" value="<?=$fetch_customer['customer_fname'];?>" class="form-control primary-bg2 border-gray" required>
                                        </div>
                                    </div>
                                    <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12">
                                        <div class="checkout-form-list mb-20">
                                            <label>Last Name <span class="theme-color">*</span></label>
                                            <input type="text" placeholder="Last Name" name="lname" value="<?=$fetch_customer['customer_lname'];?>" class="form-control primary-bg2 border-gray" required>
                                        </div>
                                    </div>
                                    <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                        <div class="checkout-form-list mb-20">
                                            <label>Company Name</label>
                                            <input type="text" placeholder="Company Name" value="<?=$fetch_customer['customer_company'];?>" name="company_name" class="form-control primary-bg2 border-gray">
                                        </div>
                                    </div>
                                    <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                        <div class="checkout-form-list mb-20">
                                            <label>Address <span class="theme-color">*</span></label>
                                            <input type="text" placeholder="Street address" value="<?=$fetch_customer['customer_address1'];?>" name="address" class="form-control primary-bg2 border-gray" required>
                                        </div>
                                    </div>
                                    <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                        <div class="checkout-form-list mb-20">
                                            <input type="text" placeholder="Apartment, suite, unit etc. (optional)" name="apartment" value="<?=$fetch_customer['apartment'];?>" class="form-control primary-bg2 border-gray">
                                        </div>
                                    </div>
                                    <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                        <div class="checkout-form-list mb-20">
                                            <label>Town / City <span class="theme-color">*</span></label>
                                            <input type="text" placeholder="Town / City" name="city" value="<?=$fetch_customer['customer_city'];?>" class="form-control primary-bg2 border-gray" required>
                                        </div>
                                    </div>
                                    <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12">
                                        <div class="checkout-form-list mb-20">
                                            <label>State / County <span class="theme-color">*</span></label>
                                            <input type="text" value="<?=$fetch_customer['customer_state'];?>" name="state" class="form-control primary-bg2 border-gray" required>
                                        </div>
                                    </div>
                                    <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12">
                                        <div class="checkout-form-list mb-20">
                                            <label>Postcode / Zip <span class="theme-color">*</span></label>
                                            <input type="text" placeholder="Postcode / Zip" value="<?=$fetch_customer['customer_pincode'];?>" name="zip_code" class="form-control primary-bg2 border-gray" required>
                                        </div>
                                    </div>
                                    <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12">
                                        <div class="checkout-form-list mb-20">
                                            <label>Email Address <span class="theme-color">*</span></label>
                                            <input type="email" placeholder="Email" name="email" value="<?=$fetch_customer['customer_email'];?>" class="form-control primary-bg2 border-gray" required>
                                        </div>
                                    </div>
                                    <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12">
                                        <div class="checkout-form-list mb-20">
                                            <label>Phone <span class="theme-color">*</span></label>
                                            <input type="text" placeholder="Phone" name="mobile_no" value="<?=$fetch_customer['customer_mobile'];?>" class="form-control primary-bg2 border-gray" required>
                                        </div>
                                    </div>
                                    <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                        <div class="checkout-form-list create-acc mr-1">
                                            <div class="save-info d-inline-block">
                                                <input id="cbox-account" class="p-0 pr-2" value="1" type="checkbox" name="account" aria-label="Checkbox for following text input">
                                                <p class="mb-0 d-inline-block">Create an account?</p>
                                            </div>
                                            <div id="cbox-account-info" class="checkout-form-list create-account">
                                                <p>Create an account by entering the information below. If you are a returning
                                                    customer please login at the top of the page.</p>
                                                <label>Account password <span class="theme-color">*</span></label>
                                                <input type="password" placeholder="password" name="password" class="form-control primary-bg2 border-gray">
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /row -->
                                <div class="different-address">
                                    <div class="ship-different-title pb-15 pt-1">
                                        <div class="save-info pb-10 border-b-light-gray">
                                            <p class="mb-0 d-inline-block text-uppercase pr-15">Ship to a different address?</p>
                                            <input id="ship-box" class="p-0" value="1" type="checkbox" aria-label="Checkbox for following text input">
                                        </div>
                                    </div>
                                    <div id="ship-box-info">
                                        <div class="row">
                                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                                <div class="country-select mb-30">
                                                    <label>Country <span class="required primary-bg2">*</span></label>
                                                    <select class="form-control " name="ship_country">
                                                        <option value="bangladesh">bangladesh</option>
                                                        <option value="Algeria">Algeria</option>
                                                        <option value="India" selected>India</option>
                                                        
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12">
                                                <div class="checkout-form-list mb-30">
                                                    <label>First Name <span class="required">*</span></label>
                                                    <input type="text" placeholder="First Name" name="ship_fname" class="form-control primary-bg2 border-gray">
                                                </div>
                                            </div>
                                            <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12">
                                                <div class="checkout-form-list mb-30">
                                                    <label>Last Name <span class="required">*</span></label>
                                                    <input type="text" placeholder="Last Name" name="ship_lname" class="form-control primary-bg2 border-gray">
                                                </div>
                                            </div>
                                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                                <div class="checkout-form-list mb-30">
                                                    <label>Company Name</label>
                                                    <input type="text" placeholder="Company Name" name="ship_company" class="form-control primary-bg2 border-gray">
                                                </div>
                                            </div>
                                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                                <div class="checkout-form-list mb-30">
                                                    <label>Address <span class="required">*</span></label>
                                                    <input type="text" placeholder="Street address" name="ship_Address" class="form-control primary-bg2 border-gray">
                                                </div>
                                            </div>
                                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                                <div class="checkout-form-list mb-30">
                                                    <input type="text" placeholder="Apartment, suite, unit etc. (optional)" name="ship_apartment" class="form-control primary-bg2 border-gray">
                                                </div>
                                            </div>
                                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                                <div class="checkout-form-list mb-30">
                                                    <label>Town / City <span class="required">*</span></label>
                                                    <input type="text" placeholder="Town / City" name="ship_city" class="form-control primary-bg2 border-gray">
                                                </div>
                                            </div>
                                            <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12">
                                                <div class="checkout-form-list mb-30">
                                                    <label>State / County <span class="required">*</span></label>
                                                    <input type="text" class="form-control primary-bg2 border-gray" name="ship_state">
                                                </div>
                                            </div>
                                            <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12">
                                                <div class="checkout-form-list mb-30">
                                                    <label>Postcode / Zip <span class="required">*</span></label>
                                                    <input type="text" placeholder="Postcode / Zip" name="ship_zipcode" class="form-control primary-bg2 border-gray">
                                                </div>
                                            </div>
                                            <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12">
                                                <div class="checkout-form-list mb-30">
                                                    <label>Email Address <span class="required">*</span></label>
                                                    <input type="email" placeholder="Email Address" name="ship_email" class="form-control primary-bg2 border-gray">
                                                </div>
                                            </div>
                                            <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12">
                                                <div class="checkout-form-list mb-30">
                                                    <label>Phone <span class="required">*</span></label>
                                                    <input type="text" placeholder="Phone" name="ship_mobile" class="form-control primary-bg2 border-gray">
                                                </div>
                                            </div>
                                        </div><!-- /row -->
                                    </div>
                                    <div class="order-notes">
                                        <div class="checkout-form-list mb-40">
                                            <label>Order Notes</label>
                                            <textarea id="checkout-mess" name="order_note" placeholder="Notes about your order, e.g. special notes for delivery." class="form-control pt-20 pl-20 primary-bg2 border-gray"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /col -->
                        <div class="col-xl-6  col-lg-6  col-md-12  col-sm-12 col-12">
                            <div class="your-order mb-30 pt-30 pr-40 pb-60 pl-40 mt-15">
                                <h4 class="pb-10 mb-20 border-b-light-gray3">Your order</h4>
                                <div class="your-order-table table-responsive">
                                    <table class="width100">
                                        <thead>
                                            <tr>
                                                <th class="product-name">Product</th>
                                                <th class="product-total">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $grand_total=0;
 if(isset($_COOKIE['user']))
 {
    $cookie=$_COOKIE['user'];
    $cart=mysqli_query($con,"select * from tbl_cart inner join tbl_product on tbl_cart.product_id=tbl_product.product_id where tbl_cart.product_cookie='$cookie' and tbl_cart.status=1");
   while($res_cart=mysqli_fetch_array($cart))
   {
       
    $qty=$res_cart['product_qty'];
    $price=$res_cart['cart_price'];
    $total_amount=$price*$qty;
    $grand_total+=$total_amount;
?> 
                                            <tr class="cart_item">
                                                <td class="product-name">
                                                    <?=$res_cart['product_name'];?><?php 
                                    if($res_cart['size']!='')
                                    { ?>
                                    (Size: <?=$res_cart['size'];?>)
                                    <?php } ?>
                                    <?php 
                                     if($res_cart['product_color']!='')
                                    { ?>
                                     (Color:<?=$res_cart['product_color'];?>)
                                     <?php } ?> <strong class="product-quantity"> × <?=$res_cart['product_qty'];?></strong>
                                                </td>
                                                <td class="product-total">
                                                    <span class="amount"> <?=number_format($total_amount,2);?></span>
                                                </td>
                                            </tr>
                                            <?php } } ?>
                                          
                                        </tbody>
                                        <tfoot>
                                            <tr class="cart-subtotal">
                                                <th>Cart Subtotal</th>
                                                <td><span class="amount"><?=number_format($grand_total,2)?></span></td>
                                            </tr>
                                            <tr class="shipping">
                                                <th>Shipping</th>
                                                <td>0.00
                                                   
                                                </td>
                                            </tr>
                                            
                                            <?php
                                            if($_SESSION['total_discount']!='')
                                            { ?>
                                            <tr class="order-total">
                                                <th>Discount</th>
                                                <td><strong><span class="amount"><b><?=number_format($_SESSION['total_discount'],2)?></b></span></strong>
                                                </td>
                                            </tr>
                                            <tr class="order-total">
                                                <th>Order Total</th>
                                                <td><strong><span class="amount"><b><?=number_format($_SESSION['after_grand_total'],2)?></b></span></strong>
                                                </td>
                                            </tr>
                                            <?php }
                                            else
                                            { ?>
                                            <tr class="order-total">
                                                <th>Order Total</th>
                                                <td><strong><span class="amount"><b><?=number_format($great_grand_total,2)?></b></span></strong>
                                                </td>
                                            </tr>
                                            <?php } ?>
                                        </tfoot>
                                    </table>
                                </div>
                                <div class="payment-method mt-40">
                                    
                                  
                                       
                                </div>
                                <br>
                                 <button type="submit" name="place_order" class="bt-btn theme-btn-2 w-100 pt-3">Place Order</button>
                            </div>
                           
                        </div><!-- /col -->
                    </div><!-- /row -->
                </div><!-- /container -->
                </form>
            </div>
            <!-- checkout-area-end -->

        </main>
        
 <?php include('footer.php');?>