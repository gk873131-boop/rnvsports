<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Employee List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Employee</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Employee List<a href="add_employee.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Employee</a></div>
<?php 
if(isset($_GET['del_employee'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Employee.. 
</div>
  <?php
}


if(isset($_GET['wrongdelemployee'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>


        <?php 
if(isset($_GET['status_employee'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Change status Employee.. 
</div>
  <?php
}


if(isset($_GET['wrongstatusemployee'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>


         <?php 
if(isset($_GET['update_employee'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated Employee.. 
</div>
  <?php
}


if(isset($_GET['wrongeupdatemployee'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Sr No</th>
                                                <th>Employee</th>
                                                <th>Contact</th>
                                                <th>Email</th>
                                                <th>Address</th>
                                                <th>User ID</th>
                                                <th>Password</th>
                                                <th>Status</th>
                                              
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
$fetch_employee=mysqli_query($con,"select * from tbl_employee where status=1 order by employee_id DESC");
while($res_emp=mysqli_fetch_array($fetch_employee))
{
   
                                            ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_emp['employee_name'];?></td>
                                                <td><?=$res_emp['employee_contact'];?></td>
                                                <td><?=$res_emp['employee_email'];?></td>
                                                <td><?=$res_emp['employee_address'];?></td>
                                                <td><?=$res_emp['user_id'];?></td>
                                                <td><?=$res_emp['password'];?></td>
                                                <?php 
                                                 if($res_emp['emp_status']=='Active')
                                                    {
                                                            ?>
                                                              <td style="background: green;color: white;"><a href="controller.php?emp_status=<?=$res_emp['employee_id'];?>&status=Deactive" style="color: white;"><u><?=$res_emp['emp_status'];?></u></a></td>
                                                            <?php
                                                    }
                                                    else
                                                    {
                                                            ?>
                                                             <td style="background: red;color: white;"> <a href="controller.php?emp_status=<?=$res_emp['employee_id'];?>&status=Active" style="color: white;"><u><?=$res_emp['emp_status'];?></u></a></td>
                                                            <?php
                                                    }
                                                ?>
                                              
                                                 <td><a href="javascript:void(0)" onclick="warning('add_employee.php?employee_edit=<?=base64_encode($res_emp['employee_id']);?>','Do You Want to update Employee ?')" class="btn btn-sm btn-success">Edit</a> 
                                                  <a href="javascript:void(0)" onclick="warning('controller.php?employee_del=<?=base64_encode($res_emp['employee_id']);?>','Do You Want to delete Employee ?')" class="btn btn-sm btn-danger">Remove</a>
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