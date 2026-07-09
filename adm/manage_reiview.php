<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                  </div>
                    <div class="container-fluid">
                        <h1 class="mt-5">Reviews List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Reviews</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Reviews List<a href="add_review.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Review</a></div>
                             <?php 
if(isset($_GET['del_rev'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Review.. 
</div>
  <?php
}


if(isset($_GET['wrong_del_rev'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>


        <?php 
if(isset($_GET['update_rev'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated review.. 
</div>
  <?php
}


if(isset($_GET['wrongupdaterev'])=='wrong')
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
                                                <th>Name</th>
                                                <th>Profile</th>
                                                <th>Review</th>
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                        <?php
                                        $count=1;
                                        $query=mysqli_query($con,"SELECT * FROM tbl_adm_review WHERE status='1' ORDER BY review_id DESC");
                                        while($data=mysqli_fetch_array($query)){
                                            $id=base64_encode($data['review_id']);
                                        ?>
                                        <tr>
                                            <td><?=$count;?></td>
                                            <td><?=$data['name']?></td>
                                            <td><img src="uploads/review/<?=$data['image']?>" width="80px"></td>
                                            <td><?=$data['description']?></td>
                                            <td>
                                                <a href="add_review.php?id=<?=$id?>" class="btn btn-primary">Edit</a>
                                                <a href="controller.php?review_delete_id=<?=$id?>" class="btn btn-danger">Delete</a>
                                            </td>
                                            
                                        </tr>
                                       <?php $count++; } ?>
                                        <tbody>
                                         </tbody>    
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                    </div>
                   
               <?php 
include_once('footer.php');
               ?>