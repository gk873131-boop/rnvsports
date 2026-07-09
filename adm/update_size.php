<?php 
include_once('header.php');
   $product_id=$_GET['product_id'];
 $edit=$_GET['edit'];
 
$sql_edit_data=mysqli_fetch_array(mysqli_query($con,"SELECT * from tbl_price  where price_status=1 and product_id='$product_id' and price_id='$edit'"));

 
 

  ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Size</h1>
                        
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Add Size</li>
                        </ol>

                        <div class="card mb-4">
                            <!--<div class="card-header"><i class="fas fa-table mr-1"></i>Add Bundle<a href="update_size.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Bundle List</a></div>-->
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Size</a></div>
                            <div class="card-body">

                                           <?php 
if(isset($_GET['update_price'])=='update_price')
{
  ?>
  <div class="alert alert-success alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Success!</strong> Successfully Added update_Size..
</div>

  <?php
}


if(isset($_GET['message'])=='message')
{

  ?>
   <div class="alert alert-success alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Success!</strong> Detete Data.
</div>
  <?php
}
      
       
?>
                    <form action="controller.php" method="post">
                          <input type="hidden" name="product_id" value="<?=$product_id?>">
                          <input type="hidden" name="price_id" value="<?=$edit?>">
                 <div class="row">
                  <div class="col-md-3">
                   <div class="form-group">
                          <label for="exampleInputEmail1">Size<span style="color: red;">*</span></label>
                              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Size" value="<?=@$sql_edit_data['age'];?>" required="" name="age">
                               
                 </div>
              </div>
                            <div class="col-md-3">

                               <div class="form-group">
                                <label for="exampleInputEmail1">Regular Price<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Regular Price" required="" name="regular_price" value="<?=@$sql_edit_data['regular_price'];?>">
                               
                              </div>
                            </div>
                            <div class="col-md-3">

                               <div class="form-group">
                                <label for="exampleInputEmail1">Price<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Price" required="" name="price" value="<?=@$sql_edit_data['price'];?>">
                               
                              </div>
                            </div>
                            <!--<div class="col-md-3">-->

                            <!--   <div class="form-group">-->
                            <!--    <label for="exampleInputEmail1">Shipping Charges<span style="color: red;">*</span></label>-->
                            <!--    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Shipping Charges" required="" name="shipping" value="<?=@$sql_edit_data['shipping'];?>">-->
                               
                            <!--  </div>-->
                            <!--</div>-->
                         
                           
                          </div>
                             <?php 
if(isset($_GET['edit']))
{
  ?>
<button type="submit" class="btn btn-primary" name="btn_update_price">Update</button>
  <?php
}
else
{
  ?>
<button type="submit" class="btn btn-primary" name="enter_age">Submit</button>
  <?php
}
       ?>                       
                            </form>
                            </div>
                        </div>

                        <table class="table table-bordered">
                          <thead>
                            <tr>
                            <th>S.No</th>
                            <th>Product Name</th>
                            <th>Size</th>
                            <th>Regular Price</th>
                            <th>Product Price</th>
                            <!--<th>Shipping Charges</th>-->
                            <th>Date</th>
                            <th>Action</th>
                           </tr>
                          </thead>
                          <tbody>
                            <?php 
                            $count=1;
                            // echo "SELECT * from tbl_product inner join tbl_price on tbl_product.product_id=tbl_price.product_id where tbl_price.price_status=1 and tbl_product.product_id='$product_id'";
                            $sql_fetch_data=mysqli_query($con,"SELECT * from tbl_price  where price_status=1 and product_id='$product_id'");
                            while($result=mysqli_fetch_array($sql_fetch_data))
                            {
                                $pro=mysqli_fetch_array(mysqli_query($con, "select * from tbl_product where product_id='".$result['product_id']."'"));
                              // print_r($result);
                              ?>  
                             
                            <tr>
                              <td><?=$count++?></td>
                              <td><?=$pro['product_name']?></td>
                              <td><?=$result['age']?></td>
                              <td><?=$result['regular_price']?></td>
                              <td><?=$result['price']?></td>
                              <!--<td><?=$result['shipping']?></td>-->
                              <td><?=$result['update_date']?></td>
                              <td><a href="controller.php?delete=<?=$result['price_id']?>&product_id=<?=$result['product_id'];?>"><i class="fa fa-trash"></i>
                            <a href="update_size.php?edit=<?=$result['price_id']?>&product_id=<?=$result['product_id'];?>"><i class="fa fa-edit"></i></td>

                            </tr>
                          <?php }?>
                          </tbody>
                      </table>
                    </div>
                </main>
              <?php 
include_once('footer.php');
              ?>