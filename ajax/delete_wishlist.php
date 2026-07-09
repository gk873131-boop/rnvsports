<?php include '../adm/connect.php'; ?>


<?php 

if(isset($_POST['wishlist_id']))
   {
 
  $wishlist_id=$_POST['wishlist_id'];
  $result=mysqli_query($con,"UPDATE tbl_wishlist SET status=0 WHERE wishlist_id='$wishlist_id'");  
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