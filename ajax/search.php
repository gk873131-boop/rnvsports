<?php include '../adm/connect.php'; ?>
<?php 
$search = $_GET['term'];
// Fetch matched data from the database 

$query=mysqli_query($con,"SELECT * FROM tbl_product WHERE product_name LIKE '%".$search."%' AND status=1  ORDER BY product_name ASC LIMIT 15");

// Generate array with skills data 
$list = array();
if(mysqli_num_rows($query) > 0)
{
 
    while($row=mysqli_fetch_array($query))
    { 
           
            $data['id'] =$row['product_id'];
            $data['value']=$row['product_name'];
           
			array_push($list, $data);
    }
        
    }
    echo json_encode($list);

?>

 

