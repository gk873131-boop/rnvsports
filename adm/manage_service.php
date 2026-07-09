<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Service List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Service</li>
                        </ol>
                        
                         <?php 
if(isset($_GET['update_success'])=='update_success')
{
  ?>
  <div class="alert alert-success">
 <p>Successfully Updated Service..!</p> 
</div>
  <?php
}
?>

 <?php 
if(isset($_GET['delete_success'])=='delete_success')
{
  ?>
  <div class="alert alert-success">
 <p>Successfully Deleted Service..!</p> 
</div>
  <?php
}
?>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Service List<a href="add_service.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Service</a></div>
               <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Sr.No</th>
                                                <th>Image</th>
                                                <th>Title</th>
                                                <th>Date</th>
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
$fetch=mysqli_query($con,"SELECT * from tbl_service  where status=1 order by id desc");
while($res=mysqli_fetch_array($fetch))
{
  // print_r($res_cat);
    ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><img src="uploads/<?=$res['image'];?>" style="width:80px;"></td>
                                                <td><?=$res['title'];?></td>
                                                 <td><?=$res['created_at'];?></td>
                                                

                                                <td><a href="javascript:void(0)" onclick="warning('add_service.php?id=<?=base64_encode($res['id']);?>','Do You Want to Update ?')" class="btn btn-success">Edit</a>

                                                 <a href="javascript:void(0)" onclick="warning('controller.php?service_id=<?=base64_encode($res['id']);?>','Do You Want to delete ?')" class="btn btn-danger">Remove</a>

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