<?php 
include_once('header.php');
if(isset($_GET['edit_mapping']))
{
  $edit_mapping=base64_decode($_GET['edit_mapping']);
  if(is_numeric($edit_mapping))
  {
      $fetch_map=mysqli_query($con,"select * from tbl_location_map where mapping_id=$edit_mapping and status=1");
      $res_map=mysqli_fetch_array($fetch_map);
  }

}
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Create Mapping</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Create Mapping</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Create Mapping <a href="mapping_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Create Mapping List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post"  enctype="multipart/form-data">
                                <?php 
if(isset($_GET['add_mapping'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Location Mapping.. 
</div>
  <?php
}


if(isset($_GET['wrongadd_mapping'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
        <input type="hidden" name="update_mapping" value="<?=$res_map['mapping_id'];?>">
                    <div class="row">
                              <div class="col-md-4">
                              <div class="form-group">
                                <input type="hidden" name="update_id" value="<?=$res_cat['category_id'];?>">
                                <label for="exampleInputEmail1">User Name<span style="color: red;">*</span></label>
                               <select class="form-control" name="user_id" required="">
                                <option value="">Select User</option>
                                <?php
                                if(isset($_GET['edit_mapping']))
                                {
                                  $fetch_emp=mysqli_fetch_array(mysqli_query($con,"select * from tbl_employee where employee_id='".$res_map['emp_id']."'"));
                                  ?>
                                  <option value="<?=$fetch_emp['employee_id'];?>" selected><?=$fetch_emp['employee_name'];?></option>
                                  <?php
                                }
                                ?>
                                <?php 
$fetch_usr=mysqli_query($con,"select * from tbl_employee where status=1");
while($res_usr=mysqli_fetch_array($fetch_usr))
{
  ?>
  <option value="<?=$res_usr['employee_id'];?>"><?=$res_usr['employee_name'];?></option>
  <?php
}
                                ?>
                               </select>
                               
                              </div>
                            </div>
                             <div class="col-md-4">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Location</label>
                              <select class="form-control" name="location_id[]" multiple="" required="">
                                <option value="">Select Location</option>
                                   <?php
                                if(isset($_GET['edit_mapping']))
                                {
                                  $fetch_loc=mysqli_fetch_array(mysqli_query($con,"select * from tbl_location where location_id='".$res_map['location_id']."'"));
                                  ?>
                                  <option value="<?=$fetch_loc['location_id'];?>" selected><?=$fetch_loc['location_name'];?></option>
                                  <?php
                                }
                                ?>

                                <?php 
$fetch_loc=mysqli_query($con,"select * from tbl_location where status=1");
while($res_loc=mysqli_fetch_array($fetch_loc))
{
  ?>
  <option value="<?=$res_loc['location_id'];?>"><?=$res_loc['location_name'];?></option>
  <?php
}
                                ?>
                               </select>
                               
                              </div>
                            </div>
                          </div>
                             <?php  if(isset($_GET['edit_mapping']))
                                {
                                ?>
                              <button type="submit" class="btn btn-primary" name="btn_update_mapping">Update</button>
                            <?php } 
                            else
                            {
                              ?>
                               <button type="submit" class="btn btn-primary" name="btn_add_mapping">Submit</button>
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