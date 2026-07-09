<?php 
include_once('header.php');
if(isset($_GET['location_edit']))
{
  $location_edit=base64_decode($_GET['location_edit']);
  if(is_numeric($location_edit))
  {
      $fetch_location=mysqli_query($con,"select * from tbl_location where location_id=$location_edit and status=1");
      $res_loc=mysqli_fetch_array($fetch_location);
  }

}
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Pin</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Pin</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Pin <a href="location_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Pin List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post">
                                  <?php 
if(isset($_GET['action'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Added Pin Code.. 
</div>
  <?php
}


if(isset($_GET['wrongadd_location'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
        <input type="hidden" name="update_locaion_id" value="<?=$res_loc['location_id'];?>">
        <div class="row">
                          <div class="col-md-3">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Pin Code<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Pin Code" value="<?=@$res_loc['location_name'];?>" required="" name="pin_code">
                               
                              </div>
                            </div>
                            
                             <div class="col-md-3">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Shipping Charge<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Shipping Charge" value="<?=@$res_loc['location_name'];?>" required="" name="shipping_charge">
                               
                              </div>
                            </div>

                          

                            
                          </div>
                             <?php
if(isset($_GET['location_edit']))
{
  ?>
  <button type="submit" class="btn btn-primary" name="btn_update_location">Update</button>
  <?php
}
else
{
  ?>
  <button type="submit" class="btn btn-primary" name="btn_add_pin">Submit</button>
  <?php

}
                             ?>
                              
                            </form>
                            
                                                            <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Sr No</th>
                                                <th>Pin Code</th>
                                                <th>Shipping Charge</th>
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
$fetch_location=mysqli_query($con,"select * from tbl_pin where status=1");
while($res_location=mysqli_fetch_array($fetch_location))
{
                                            ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_location['pin_code'];?></td>
                                                <td><?=$res_location['shipping_charge'];?></td>

                                                 
                                                <td><a href="javascript:void(0)" onclick="warning('add_pin.php?location_edit=<?=base64_encode($res_location['pin_id']);?>','Do You Want to update location ?')" class="btn btn-sm btn-success">Edit</a> 

                                                  <a href="javascript:void(0)" onclick="warning('controller.php?pin_del=<?=base64_encode($res_location['pin_id']);?>','Do You Want to delete location ?')" class="btn btn-sm btn-danger">Remove</a>
                                                </td>
                                               
                                            </tr>
  <?php $count++; } ?>                                      
                                           
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </main>
              <?php 
include_once('footer.php');
              ?>