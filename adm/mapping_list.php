<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Location Mapping List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Location Mapping</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Category List<a href="create_mapping.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Location Mapping</a></div>
                              <?php 
if(isset($_GET['del_mapping'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Mapping.. 
</div>
  <?php
}


if(isset($_GET['wrongdel_mapping'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>

          <?php 
if(isset($_GET['update_mapping'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated mapping.. 
</div>
  <?php
}
?>  

 <?php 
if(isset($_GET['wrongupdate_mapping'])=='success')
{
  ?>
  <div class="alert alert-danger">
  <strong>Failed!</strong>Failed Update Category.. 
</div>
  <?php
}
?>              <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Sr No</th>
                                                <th>Employee Name</th>
                                                <th>Location </th>
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
                                           

$fetch_mapping=mysqli_query($con,"select * from tbl_location_map inner join tbl_employee on tbl_location_map.emp_id=tbl_employee.employee_id inner join tbl_location on tbl_location_map.location_id=tbl_location.location_id where tbl_location_map.status=1");
while($res_map=mysqli_fetch_array($fetch_mapping))
{
    ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_map['employee_name'];?></td>
                                                 <td><?=$res_map['location_name'];?></td>
                                               

                                                <td><a href="javascript:void(0)" onclick="warning('create_mapping.php?edit_mapping=<?=base64_encode($res_map['mapping_id']);?>','Do You Want to Update Mapping ?')" class="btn btn-success">Edit</a>


                                                 <a href="javascript:void(0)" onclick="warning('controller.php?del_mapping=<?=base64_encode($res_map['mapping_id']);?>','Do You Want to delete Mapping ?')" class="btn btn-danger">Remove</a>

                                                </td>
                                               
                                            </tr>
    <?php
$count++; }
?>
                                           
                                           
                                           
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