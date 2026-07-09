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
                        <h1 class="mt-4">Add Location</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Location</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Location <a href="location_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Location List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post">
                                  <?php 
if(isset($_GET['add_location'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Added Location.. 
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
                                <label for="exampleInputEmail1">Location Name<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Location Name" value="<?=@$res_loc['location_name'];?>" required="" name="location">
                               
                              </div>
                            </div>

                            <div class="col-md-3">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Latitude</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Latitude" value="<?=@$res_loc['latitude'];?>"  name="latitude">
                               
                              </div>
                            </div>

                            <div class="col-md-3">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Longitude </label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Longitude" value="<?=@$res_loc['longitude'];?>"  name="longitude">
                               
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
  <button type="submit" class="btn btn-primary" name="btn_add_location">Submit</button>
  <?php

}
                             ?>
                              
                            </form>
                            </div>
                        </div>
                    </div>
                </main>
              <?php 
include_once('footer.php');
              ?>