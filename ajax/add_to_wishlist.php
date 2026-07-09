<?php include '../adm/connect.php'; ?>
<?php 
session_start();

?>
<?php 


if(isset($_POST['product_id']))
{
 
   if(isset($_SESSION['customer_id']))
   {
    $userid=$_SESSION['customer_id'];
    $wishlist_product_id=$_POST['product_id'];
    $wishlist_qty=1;
    $wishlist_price=$_POST['sale_price'];  
    // $color=$_POST['color'];
     

  $num=mysqli_num_rows(mysqli_query($con,"SELECT * FROM tbl_wishlist WHERE product_id='$wishlist_product_id' and  status=1 and user_id='$userid'"));
  
  if($num>0)
  {
   echo 0;
  }
  else
  {
    $sql_wishlist=mysqli_query($con,"INSERT into tbl_wishlist(user_id,product_id,wishlist_qty,whislist_price)Values('$userid','$wishlist_product_id','$wishlist_qty','$wishlist_price')");

     echo 1;

 }
}

else
{
     $_SESSION['ADD_ERROR']="Please Login Account..!";
     echo 2;
}
}