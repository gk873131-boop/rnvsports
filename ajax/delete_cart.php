<?php include '../adm/connect.php'; ?>


<?php 
//////////////////////////////////// add product page item
if(isset($_POST['cart_id']))
{
 
  $cart_id=$_POST['cart_id'];

  
  $result=mysqli_query($con,"UPDATE tbl_cart SET status=0 WHERE cart_id='$cart_id'");  
  if($result)
  {
   echo 1;
  }
  else
  {
      0;
  }
  
 
}
 




?>