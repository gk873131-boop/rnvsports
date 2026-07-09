<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Brand List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Brand</li>
                        </ol>
                        
                         <?php 
if(isset($_GET['update_success'])=='update_success')
{
  ?>
  <div class="alert alert-success">
 <p>Successfully Updated Brand..!</p> 
</div>
  <?php
}
?>

 <?php 
if(isset($_GET['delete_success'])=='delete_success')
{
  ?>
  <div class="alert alert-success">
 <p>Successfully Deleted Brand..!</p> 
</div>
  <?php
}
?>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Brand List<a href="add_brand.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Brand</a></div>
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
$fetch=mysqli_query($con,"SELECT * from tbl_brand  where status=1 order by id desc");
while($res=mysqli_fetch_array($fetch))
{
  // print_r($res_cat);
    ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><img src="uploads/<?=$res['image'];?>" style="width:80px;"></td>
                                                <td><?=$res['title'];?></td>
                                                 <td><?=$res['created_at'];?></td>
                                                

                                                <td><a href="javascript:void(0)" onclick="warning('add_brand.php?id=<?=base64_encode($res['id']);?>','Do You Want to Update ?')" class="btn btn-success">Edit</a>

                                                 <a href="javascript:void(0)" onclick="warning('controller.php?brand_id=<?=base64_encode($res['id']);?>','Do You Want to delete ?')" class="btn btn-danger">Remove</a>

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