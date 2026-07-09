<?php
include 'adm/connect.php';

if(isset($_POST['size_id']))   
{
    $size_id=$_POST['size_id'];
    $data_list=mysqli_fetch_array(mysqli_query($con,"select * from  tbl_price where price_id ='$size_id' order by price_id desc"));
    
    $price=$data_list['price'];
    $price_two=$data_list['price'];
    $size=$data_list['age'];
    $regular_price=$data_list['regular_price'];
    $p=$price-$price_two;
	$pp=($p*100)/$price_two;
     $all_data=array("price"=>'₹'.$data_list['price'],"percent"=>$pp.'%',"rate_price"=>$data_list['price'],"size"=>$size,"regular_price"=>$regular_price);
         echo (json_encode($all_data)); 
}


?>