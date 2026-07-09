<?php 
include_once('header.php');
if(isset($_GET['employee_edit']))
{
  $employee_edit=base64_decode($_GET['employee_edit']);
  if(is_numeric($employee_edit))
  {
      $fetch_emp=mysqli_query($con,"select * from tbl_employee where employee_id=$employee_edit and status=1");
      $res_emp=mysqli_fetch_array($fetch_emp);
  }

}
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Employee</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Employee</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Employee <a href="employee_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Employee List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post">
                                <?php 
if(isset($_GET['add_employee'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Added Employee.. 
</div>
  <?php
}


if(isset($_GET['wrongemployee'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
        <input type="hidden" name="update_employee_id" value="<?=$res_emp['employee_id'];?>">
        <div class="row">
          <div class="col-md-3">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Employee Name<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Employee Name"  value="<?=@$res_emp['employee_name'];?>" required="" name="employee_name">
                               
                              </div>
                            </div>
                              <div class="col-md-3">

                               <div class="form-group">
                                <label for="exampleInputEmail1">Employee Mobile No<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Mobile No" required="" value="<?=@$res_emp['employee_contact'];?>" name="employee_contact">
                               
                              </div>
                            </div>

                              <div class="col-md-3">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Employee Email</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email"  value="<?=@$res_emp['employee_email'];?>" name="employee_main">
                               
                              </div>
                            </div>

                              <div class="col-md-3">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Employee Type<span style="color: red;">*</span></label>
                               <select class="form-control" name="emp_type">
                                <?php 
if(isset($_GET['employee_edit']))
{
  ?>
  <option value="<?=$res_emp['employee_type'];?>" selected=""><?=$res_emp['employee_type'];?></option>
  <?php
}
                                ?>
                                <option value="">Select Employee Type</option>
                                <option value="Manager">Manager</option>
                                <option value="Rider">Rider</option>
                                <option value="Pickup">Pickup</option>
                               </select>
                               
                              </div>
                            </div>


                              <div class="col-md-3">

                               <div class="form-group">
                                <label for="exampleInputEmail1">User Id<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter User Id" value="<?=@$res_emp['user_id'];?>" required="" name="user_id">
                               
                              </div>
                            </div>
                              <div class="col-md-3">

                               <div class="form-group">
                                <label for="exampleInputEmail1">Password<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Password" value="<?=@$res_emp['password'];?>" required="" name="password">
                               
                              </div>
                            </div>
                              <div class="col-md-6">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Employee Address</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Address"  value="<?=@$res_emp['employee_address'];?>" name="employee_address">
                               
                              </div>
                            </div>
                          </div>
                             <?php 
if(isset($_GET['employee_edit']))
{
  ?>
   <button type="submit" class="btn btn-primary" name="btn_update_employee">Update</button>
  <?php

}
else
{
  ?>
 <button type="submit" class="btn btn-primary" name="btn_add_employee">Submit</button>
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