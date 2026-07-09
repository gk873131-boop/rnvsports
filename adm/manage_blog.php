<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Blog List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Blog</li>
                        </ol>
                        
                         <?php 
if(isset($_GET['update_success'])=='update_success')
{
  ?>
  <div class="alert alert-success">
 <p>Successfully Updated Blog..!</p> 
</div>
  <?php
}
?>

 <?php 
if(isset($_GET['delete_success'])=='delete_success')
{
  ?>
  <div class="alert alert-success">
 <p>Successfully Deleted Blog..!</p> 
</div>
  <?php
}
?>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Blog List<a href="add_blog.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Blog</a></div>
               <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Sr.No</th>
                                                <th>Image</th>
                                                <th>Title</th>
                                                <th>Author Name</th>
                                                <th>Date</th>
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
$fetch=mysqli_query($con,"SELECT * from tbl_blog  where status=1 order by blog_id desc");
while($res=mysqli_fetch_array($fetch))
{
  // print_r($res_cat);
    ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><img src="uploads/<?=$res['blog_image'];?>" style="width:80px;"></td>
                                                <td><?=$res['blog_name'];?></td>
                                                <td><?=$res['author_name'];?></td>
                                                 <td><?=$res['blog_date'];?></td>
                                                

                                                <td><a href="javascript:void(0)" onclick="warning('add_blog.php?id=<?=base64_encode($res['blog_id']);?>','Do You Want to Update ?')" class="btn btn-success">Edit</a>

                                                 <a href="javascript:void(0)" onclick="warning('controller.php?blog_id=<?=base64_encode($res['blog_id']);?>','Do You Want to delete ?')" class="btn btn-danger">Remove</a>

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