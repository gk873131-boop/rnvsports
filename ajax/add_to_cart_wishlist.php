<?php include '../adm/connect.php'; ?>
<?php session_start(); ?>

<?php 
//////////////////////////////////// add product page item
if(isset($_POST['product_id']))
{
  $cookie_value=$_COOKIE['user'];
  $product_id=$_POST['product_id'];
  $qty=1;
  $price=$_POST['price'];
  $userid=$_SESSION['customer_id'];
  
  $product_check=mysqli_num_rows(mysqli_query($con,"SELECT * FROM tbl_cart where product_id='$product_id' and status=1 and product_cookie='$cookie_value'"));

  if($product_check>0)
  {
    
  
  $result=mysqli_query($con,"UPDATE tbl_cart SET product_qty=product_qty+$qty WHERE product_id='$product_id' and status=1 and product_cookie='$cookie_value'");  
  mysqli_query($con,"UPDATE tbl_wishlist SET status=0 where user_id='$userid' and product_id='$product_id'");
   echo 2;
  }
  else
  {
  

      
if(!isset($_COOKIE['user'])) 
{
$a=rand(1000,100000);
$cookie_name="user";
$cookie_value=$a;
setcookie($cookie_name, $cookie_value, time() + (86400 * 30), '/'); 

$result=mysqli_query($con,"INSERT into tbl_cart(product_id,product_qty,product_cookie,cart_price)values('$product_id','$qty','$cookie_value','$price')");
 mysqli_query($con,"UPDATE tbl_wishlist SET status=0 where user_id='$userid' and product_id='$product_id'");
 echo 1;
}
else
{

$cookie_value=$_COOKIE['user']; 
$result=mysqli_query($con, "INSERT into tbl_cart(product_id,product_qty,product_cookie,cart_price)values('$product_id','$qty','$cookie_value','$price')");
 mysqli_query($con,"UPDATE tbl_wishlist SET status=0 where user_id='$userid' and product_id='$product_id'");
 echo 1;
}

}
} 




?>