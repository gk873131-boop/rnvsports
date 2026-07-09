<?php
include_once('adm/connect.php');
// extract($_POST);
// $total=$price*$qua;
if(isset($_POST['pro_id']))
{
$pro_id=$_POST['pro_id'];
// $price=$_POST['price'];
// $qua=$_POST['qua'];
$cookie_value=$_COOKIE['user']; 
$total=$price*$qua;
$check=mysqli_num_rows(mysqli_query($con,"select * from tbl_wishlist where product_id='$pro_id' and product_cookie='$cookie_value' and status=1"));
if($check>0)
{
   mysqli_query($con,"update  tbl_wishlist set product_qty=product_qty+$qua where product_id='$pro_id' and product_cookie='$cookie_value' and status=1"); 
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


$query=mysqli_query($con,"insert into tbl_wishlist(wishlist_qty, product_id,whislist_price)values('$wishlist_qty','$pro_id','$whislist_price')");

}
else
{

$query=mysqli_query($con,"insert into tbl_wishlist(wishlist_qty, product_id,whislist_price)values('$wishlist_qty','$pro_id','$whislist_price')");

    
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