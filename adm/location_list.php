<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Location List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Location</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Location List<a href="add_location.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Location</a></div>
                            <?php 
if(isset($_GET['del_location'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Location.. 
</div>
  <?php
}


if(isset($_GET['wrongdel_location'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>


          <?php 
if(isset($_GET['update_location'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated Location.. 
</div>
  <?php
}


if(isset($_GET['wrongupdate_location'])=='wrong')
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
                                                <th>Location</th>
                                                <th>latitude</th>
                                                <th>longitude</th>
                                              
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
$fetch_location=mysqli_query($con,"select * from tbl_location where status=1");
while($res_location=mysqli_fetch_array($fetch_location))
{
                                            ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_location['location_name'];?></td>
                                                 <td><?=$res_location['latitude'];?></td>
                                                  <td><?=$res_location['longitude'];?></td>
                                                
                                                <td><a href="javascript:void(0)" onclick="warning('add_location.php?location_edit=<?=base64_encode($res_location['location_id']);?>','Do You Want to update location ?')" class="btn btn-sm btn-success">Edit</a> 

                                                  <a href="javascript:void(0)" onclick="warning('controller.php?location_del=<?=base64_encode($res_location['location_id']);?>','Do You Want to delete location ?')" class="btn btn-sm btn-danger">Remove</a>
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