<?php 
include_once('header.php');
$category=$_GET['category_id'];
$del_cate=$_GET['del_cate'];

?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Category Image</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Category Image</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Gallery<a href="category_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Category List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post"  enctype="multipart/form-data">
                                   <input type="hidden" value="<?=$category;?>" name="category_id">
                                   <input type="hidden" value="<?=$del_cate;?>" name="del_cate">
                                 
                                <?php 
if(isset($_GET['action'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>.. 
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
                             <div class="col-md-4">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Category Image (Dim: 800*800)</label>
                             
                                <input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Category Name" name="category_img" accept="image/*">
                               
                              </div>
                            </div>
                            
                    </div>
                             
                              <!--<button type="submit" class="btn btn-primary" name="btn_update_category">Update</button>-->
                            
                               <button type="submit" class="btn btn-primary" name="btn_add_category_image">Submit</button>
                             
                            </form>
                            </div>
                        </div>
                         <div class="row">
                      <?php 
                     
$fetch_cate=mysqli_query($con,"select * from  tbl_category_gallery where status=1 and category_id='$category'");
while($res_cate=mysqli_fetch_array($fetch_cate))
{
                      ?>
                      <div class="col-md-3"> 
                       <a href="controller.php?del_cate=<?=$res_cate['gallery_id'];?>&category_id=<?=$category;?>" class="float-right" style="color: red;"> <i class="fa fa-trash"></i></a>
                        <img src="uploads/<?=$res_cate['image'];?>" style="width: 100%; height:80%">
                      </div>
<?php  } ?>
                    </div>
                    </div>

                </main>
              <?php 
include_once('footer.php');
              ?>