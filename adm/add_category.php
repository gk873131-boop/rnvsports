<?php 
include_once('header.php');
if(isset($_GET['edit_category']))
{
  $edit_category=base64_decode($_GET['edit_category']);
  if(is_numeric($edit_category))
  {
      $fetch_cat=mysqli_query($con,"select * from tbl_category where category_id=$edit_category and status=1");
      $res_cat=mysqli_fetch_array($fetch_cat);
  }

}
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Category</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Category</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Category <a href="category_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Category List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post"  enctype="multipart/form-data">
                                <?php 
if(isset($_GET['action'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Added Category.. 
</div>
  <?php
}


if(isset($_GET['actionwrong'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
                    <div class="row">
                            <!--  <div class="col-md-4">-->
                            <!--  <div class="form-group">-->
                                <input type="hidden" name="update_id" value="<?=$res_cat['category_id'];?>">
                            <!--    <label for="exampleInputEmail1">Category Number<span style="color: red;">*</span></label>-->
                            <!--    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Category Number" required="" name="number" value="<?=@$res_cat['category_number'];?>">-->
                               
                            <!--  </div>-->
                            <!--</div>-->
                              <div class="col-md-4">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Category Name<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Category Name" required="" name="category_name" value="<?=@$res_cat['category_name'];?>">
                               
                              </div>
                            </div>
                             <!--<div class="col-md-4">-->
                             <!--  <div class="form-group">-->
                             <!--   <label for="exampleInputEmail1"> Image (Dim :700*700 Size:200KB)</label>-->
                              <?php 
                                // if(isset($_GET['edit_category']))
                                // {
                                ?>
                                <!--<img src="uploads/<?=$res_cat['category_image'];?>" style="width:50px;">-->
                                <!--<input type="hidden" name="old_img" value="<?=$res_cat['category_image'];?>">-->
                                <?php  
                                // }    
                                ?>
                                <!--<input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Category Name" name="category_image" accept="image/*">-->
                               
                            <!--  </div>-->
                            <!--</div>-->
                            <!--<div class="col-md-4">-->
                            <!--    <div class="form-group">-->
                            <!--    <label for="exampleInputEmail1">Category Listed</label>-->
                            <!--    <input type="checkbox" <?php if(@$res_cat['listed_home_page']==1) { ?> checked <?php } ?>   name="listed_home_page" value="1">-->
                               
                            <!--  </div>-->
                            <!--</div>-->
                            <!--<div class="col-md-12">-->
                            <!--  <div class="form-group">-->
                            <!--    <label for="exampleInputEmail1">Description</label>-->
                            <!--   <textarea cols="30" id="editor1" name="description" rows="10" data-sample-short><?=$res_cat['description'];?></textarea>-->
                            <!--  </div>-->
                            <!--  </div>-->
                          </div>
                             <?php  if(isset($_GET['edit_category']))
                                {
                                ?>
                              <button type="submit" class="btn btn-primary" name="btn_update_category">Update</button>
                            <?php } 
                            else
                            {
                              ?>
                               <button type="submit" class="btn btn-primary" name="btn_add_category">Submit</button>
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