<?php 
include_once('header.php');
if(isset($_GET['edit_assign']))
{
  $edit_assign=base64_decode($_GET['edit_assign']);
  if(is_numeric($edit_assign))
  {
      $fetch_assign=mysqli_query($con,"select * from tbl_delivery_assign where delivery_assign_id =$edit_assign and status=1");
      $res_assign=mysqli_fetch_array($fetch_assign);
  }

}
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Assign Order Pickup</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Assign Order Pickup</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Assign Order Pickup<a href="assign_pickup_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Assign Order Pickup List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post"  enctype="multipart/form-data">
                                <?php 
if(isset($_GET['add_pickup'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Assign Pickup.. 
</div>
  <?php
}


if(isset($_GET['wrongadd_pickup'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
        <input type="hidden" name="update_assign_pickup" value="<?=$res_assign['delivery_assign_id '];?>">
                    <div class="row">
                              <div class="col-md-4">
                              <div class="form-group">
                                <input type="hidden" name="update_id" value="<?=$res_cat['category_id'];?>">
                                <label for="exampleInputEmail1">Pickup<span style="color: red;">*</span></label>
                               <select class="form-control" name="pickup_user_id" required="">
                                <option value="">Select Pickup</option>
                                <?php
                                if(isset($_GET['edit_assign']))
                                {
                              
                                  $fetch_emp=mysqli_fetch_array(mysqli_query($con,"select * from tbl_employee where employee_id='".$res_assign['employee_id']."'"));
                                  ?>
                                  <option value="<?=$fetch_emp['employee_id'];?>" selected><?=$fetch_emp['employee_name'];?></option>
                                  <?php
                                }
                                ?>
                                <?php 
$fetch_usr=mysqli_query($con,"select * from tbl_employee where status=1 and employee_type='Pickup'");
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
                                <input type="hidden" name="update_id" value="<?=$res_cat['category_id'];?>">
                                <label for="exampleInputEmail1">Rider<span style="color: red;">*</span></label>
                               <select class="form-control" name="rider_user_id" required="">
                                <option value="">Select Rider</option>
                                <?php
                                if(isset($_GET['edit_assign']))
                                {
                              
                                  $fetch_emp=mysqli_fetch_array(mysqli_query($con,"select * from tbl_employee where employee_id='".$res_assign['employee_id']."'"));
                                  ?>
                                  <option value="<?=$fetch_emp['employee_id'];?>" selected><?=$fetch_emp['employee_name'];?></option>
                                  <?php
                                }
                                ?>
                                <?php 
$fetch_usr=mysqli_query($con,"select * from tbl_employee where status=1 and employee_type='Rider'");
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
                                <label for="exampleInputEmail1">Order</label>
                              <select class="form-control" name="order_id[]" multiple="" required="">
                                <option value="">Select Order</option>
                                   <?php
                                if(isset($_GET['edit_assign']))
                                {
                                  
                                  ?>
<option value="<?=$res_assign['order_id'];?>" selected><?=$res_assign['order_id'];?></option>
                                  <?php
                                }
                                ?>

                                <?php 
$fetch_odr=mysqli_query($con,"select * from tbl_order_management inner join tbl_customer on tbl_order_management.client_id=tbl_customer.customer_id inner join tbl_location on tbl_order_management.delivery_location=tbl_location.location_id where tbl_order_management.status=1 and tbl_order_management.assign_status=0");
while($res_odr=mysqli_fetch_array($fetch_odr))
{
  ?>
  <option value="<?=$res_odr['order_id'];?>"><?=$res_odr['order_no'];?> (<?=$res_odr['customer_name'];?>, <?=$res_odr['location_name'];?>)</option>
  <?php
}
                                ?>
                               </select>
                               
                              </div>
                            </div>
                          </div>
                             <?php  if(isset($_GET['edit_assign']))
                                {
                                ?>
                              <button type="submit" class="btn btn-primary" name="btn_update_assign">Update</button>
                            <?php } 
                            else
                            {
                              ?>
                               <button type="submit" class="btn btn-primary" name="btn_assign_pickup">Assign</button>
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