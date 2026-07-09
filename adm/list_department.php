<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Department List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Department</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Department List<a href="add_department.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Department</a></div>
                             <?php 
if(isset($_GET['del_department'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Department.. 
</div>
  <?php
}


if(isset($_GET['wrongdel_department'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>

        <?php 
if(isset($_GET['update_department'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated Department.. 
</div>
  <?php
}


if(isset($_GET['wrongupdate_department'])=='wrong')
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
                                                <th>Department</th>
                                                <th>Printer name</th>
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
                                           

$fetch_department=mysqli_query($con,"select * from tbl_department where status=1 order by department_id desc");
while($res_department=mysqli_fetch_array($fetch_department))
{

                                            ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_department['department_name'];?></td>
                                                <td><?=$res_department['printer_name'];?></td>
                                                <td><a href="javascript:void(0)" onclick="warning('add_department.php?department_edit=<?=base64_encode($res_department['department_id']);?>','Do You Want to delete Department ?')" class="btn btn-success">Edit</a> <a href="javascript:void(0)" onclick="warning('controller.php?department_del=<?=base64_encode($res_department['department_id']);?>','Do You Want to delete Department ?')" class="btn btn-danger">Remove</a></td>
                                               
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