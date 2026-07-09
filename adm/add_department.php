<?php 
include_once('header.php');
if(isset($_GET['department_edit']))
{
  $department_edit=base64_decode($_GET['department_edit']);
  if(is_numeric($department_edit))
  {
      $fetch_department=mysqli_query($con,"select * from tbl_department where department_id=$department_edit and status=1");
      $res_department=mysqli_fetch_array($fetch_department);
  }

}
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Department</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Department</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Department <a href="list_department.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Department List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post">
                                 <?php 
if(isset($_GET['add_department'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Added Department.. 
</div>
  <?php
}


if(isset($_GET['wrongadd_department'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
        <input type="hidden" name="update_id" value="<?=$res_department['department_id'];?>">
                      <div class="row">
                        <div class="col-md-4">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Department Name<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Department Name" value="<?=@$res_department['department_name'];?>" required="" name="department_name">
                               
                              </div>
                            </div>

                             <div class="col-md-4">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Printer Name</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Printer Name" value="<?=@$res_department['printer_name'];?>"  name="printer_name">
                               
                              </div>
                            </div>

          
                          </div>
<?php
if(isset($_GET['department_edit']))
{
 ?>
   <button type="submit" class="btn btn-primary" name="btn_update_department">Update</button>
 <?php
 }
 else
 {
 ?>
   <button type="submit" class="btn btn-primary" name="btn_add_department">Submit</button>
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