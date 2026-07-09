<?php include '../adm/connect.php'; ?>


<?php 
//////////////////////////////////// add product page item
if(isset($_POST['product_id']))
{
 
  $product_id=$_POST['product_id'];

  
  $result=mysqli_fetch_array(mysqli_query($con,"select * from tbl_product where product_id='$product_id' and status=1"));
  
  ?>
  <div style="text-align:center;">
  <img src="adm/uploads/<?=$result['size_chart'];?>">
  </div>
  <?php 
 
  
 
}
 




?>