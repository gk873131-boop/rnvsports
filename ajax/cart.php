<?php include '../adm/connect.php'; ?>


<?php 
//////////////////////////////////// add product page item
if(isset($_POST['product_id']))
{
  $cookie_value=$_COOKIE['user'];
  $product_id=$_POST['product_id'];
  $qty=$_POST['qty'];
  $price=$_POST['price'];
  $size_id=$_POST['size_id'];
  $color=$_POST['color'];
  $size_value=$_POST['size_vales'];
  
//   echo "SELECT * FROM tbl_cart where product_id='$product_id' and status=1 and product_cookie='$cookie_value'";
//   die();

  $product_check=mysqli_num_rows(mysqli_query($con,"SELECT * FROM tbl_cart where product_id='$product_id' and status=1 and product_cookie='$cookie_value' and size_id='$size_id'"));

  if($product_check>0)
  {
    
  
  $result=mysqli_query($con,"UPDATE tbl_cart SET product_qty=product_qty+$qty WHERE product_id='$product_id' and status=1 and product_cookie='$cookie_value' and size_id='$size_id'");  
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

$result=mysqli_query($con,"INSERT into tbl_cart(product_id,product_qty,product_cookie,cart_price,size,size_id,product_color)values('$product_id','$qty','$cookie_value','$price','$size_value','$size_id','$color')");
 echo 1;
}
else
{

$cookie_value=$_COOKIE['user']; 

$result=mysqli_query($con, "INSERT into tbl_cart(product_id,product_qty,product_cookie,cart_price,size,size_id,product_color)values('$product_id','$qty','$cookie_value','$price','$size_value','$size_id','$color')");
 echo 1;
}

}
} 




?>