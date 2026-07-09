<?php 
include_once('header.php');
  $product_id=$_GET['product_id'];

  ?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Color</h1>
                        
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Add Color</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Color
                            <!--<a href="update_size.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> color List</a>-->
                            </div>
                            <div class="card-body">

                                           <?php 
if(isset($_GET['update_price'])=='update_price')
{
  ?>
  <div class="alert alert-success alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Success!</strong> Successfully Added color..
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
                    <form action="controller.php" method="post" enctype="multipart/form-data">
                          <input type="hidden" name="product_id" value="<?=$product_id?>">
                 <div class="row">
                       <div class="col-md-3">
                   <div class="form-group">
                          <label for="exampleInputEmail1">Color<span style="color: red;">*</span></label>
                               <input type="text" class="form-control" placeholder="Enter Color..!" name="color_name">
                               
                 </div>
              </div>
                  <div class="col-md-3">
                   <div class="form-group">
                          <label for="exampleInputEmail1">File<span style="color: red;">*</span></label>
                               <input type="file" class="form-control" name="color" accept="image/*">
                               
                 </div>
              </div>
            </div>
                   <button type="submit" class="btn btn-primary" name="add_color">Submit</button>
                       
                            </form>
                            </div>
                        </div>

                        <table class="table table-bordered">
                          <thead>
                            <tr>
                            <th>S.No</th>
                            <th>Color Name</th>
                            <th>Color</th>
                            <th>Action</th>
                           </tr>
                          </thead>
                          <tbody>
                            <?php 
                            $count=1;
                            $sql_fetch_data=mysqli_query($con,"SELECT * from tbl_color where status=1 and product_id='$product_id'");
                              while($result=mysqli_fetch_array($sql_fetch_data))
                            {?>  
                             
                            <tr>
                              <td><?=$count++?></td>
                              <td><?=$result['color_name'];?></td>
                              <td><img src="uploads/size/<?=$result['color'];?>" style="width:60px;"></td>
                              <td><a href="controller.php?delete_color=<?=$result['color_id']?>&product_id=<?=$result['product_id'];?>"><i class="fa fa-trash"></i></td>
                            </tr>
                          <?php }?>
                          </tbody>
                      </table>
                    </div>
                </main>
              <?php 
include_once('footer.php');
              ?>