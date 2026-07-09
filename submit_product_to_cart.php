<?php
include_once('adm/connect.php');
// extract($_POST);
// $total=$price*$qua;
if(isset($_POST['pro_id']))
{
$pro_id=$_POST['pro_id'];
$price=$_POST['price'];
$qua=$_POST['qua'];
$cookie_value=$_COOKIE['user']; 

$check=mysqli_num_rows(mysqli_query($con,"select * from tbl_cart where product_id='$pro_id' and product_cookie='$cookie_value' and status=1"));
if($check>0)
{
   mysqli_query($con,"update  tbl_cart set product_qty=product_qty+$qua where product_id='$pro_id' and product_cookie='$cookie_value' and status=1"); 
   echo 2;
}
else
{
$get_pro=mysqli_fetch_array(mysqli_query($con, "select * from tbl_product where product_id='$pro_id'"));
$gst=round($total*$get_pro['gst']/100);
$shipping=$get_pro['shipping_price']*$qua;
if(!isset($_COOKIE['user'])) 
{
$a=rand(1000,100000);
$cookie_name="user";
$cookie_value=$a;
setcookie($cookie_name, $cookie_value, time() + (86400 * 30), '/'); 


$query=mysqli_query($con,"insert into tbl_cart(product_qty, product_id,cart_price,product_cookie,gst_amount,shipping_charge)values('$qua','$pro_id','$price','$cookie_value','$gst','$shipping')");

}
else
{

$query=mysqli_query($con,"insert into tbl_cart(product_qty, product_id,cart_price,product_cookie,gst_amount,shipping_charge)values('$qua','$pro_id','$price','$cookie_value','$gst','$shipping')");

    
}
if($query)
{
    echo 1;
}
else
{
    echo 0;
}
}
}
?>