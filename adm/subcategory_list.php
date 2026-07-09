<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Sub Category List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Sub Category</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Sub Category List<a href="add_category.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Sub Category</a></div>
                              <?php 
if(isset($_GET['del_subcategory'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Sub Category.. 
</div>
  <?php
}


if(isset($_GET['delwrong_subcategory'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>

         <?php 
if(isset($_GET['update_subcategory'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated Sub Category.. 
</div>
  <?php
}


if(isset($_GET['updatewrong_subcategory'])=='wrong')
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
                                                <th>Category</th>
                                                <th>Sub Category</th>
                                                <th>Image</th>
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>

                                            <?php 
                                            // ($con,"select * from tbl_subcategory inner join  tbl_category on tbl_subcategory.category_id=tbl_category.category_id where tbl_subcategory.status=1 order by tbl_subcategory.category_id desc");
                                            $count=1;
$fetch_category=mysqli_query($con,"SELECT * from tbl_subcategory where status='1' order by subcategory_number asc");
while($res_cat=mysqli_fetch_array($fetch_category))
{
    ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?php
                                                $get_cat=mysqli_fetch_array(mysqli_query($con, "select * from tbl_category where category_id='".$res_cat['category_id']."'"));
                                                echo $get_cat['category_name'];
                                                ?></td>
                                                 <td><?=$res_cat['subcategory_name'];?></td>
                                                <td><img src="uploads/<?=$res_cat['subcategory_image'];?>" style="width:80px;"></td>

                                                <td><a href=add_subcategory.php?edit_subcategory=<?=$res_cat['subcategory_id'];?> class="btn btn-success">Edit</a>

                                                 <a href="javascript:void(0)" onclick="warning('controller.php?subcategory=<?=base64_encode($res_cat['subcategory_id']);?>','Do You Want to delete Sub Category ?')" class="btn btn-danger">Remove</a>
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