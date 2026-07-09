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
                        <h1 class="mt-4">Add Home Banner</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Banner</li>
                        </ol>

                        <div class="card mb-4">
                           <!--  <div class="card-header"><i class="fas fa-table mr-1"></i>Add Category <a href="category_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Category List</a></div> -->
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
                        <div class="col-md-4">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Add Text:</label>
                             
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required placeholder="Enter Text" name="name" value="<?=$name;?>">
                               
                              </div>
                            </div>
                            
                             <div class="col-md-4">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Slider Image (Dim :1200*600 Max Size:300KB)</label>
                             
                                <input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required placeholder="Enter Category Name" name="banner_img" accept="image/*">
                               
                              </div>
                            </div>
                    </div>
                             <?php  if(isset($_GET['edit_category']))
                                {
                                ?>
                              <button type="submit" class="btn btn-primary" name="btn_update_category">Update</button>
                            <?php } 
                            else
                            {
                              ?>
                               <button type="submit" class="btn btn-primary" name="btn_add_homebanner">Submit</button>
                              <?php
                            }
                            ?>
                            </form>
                            </div>
                        </div>
                         <div class="row">
                      <?php 
                      if(isset($_GET['del_banner']))
                      {
                        $id=$_GET['del_banner'];
                        if(is_numeric($id))
                        {
                         mysqli_query($con,"update tbl_home_banner set status=0 where banner_id='$id'");
                        }
                      }
$fetch_banner=mysqli_query($con,"select * from  tbl_home_banner where status=1");
while($res_banner=mysqli_fetch_array($fetch_banner))
{
                      ?>
                      <div class="col-md-4"> 
                       <a href="add_banner.php?del_banner=<?=$res_banner['banner_id'];?>" class="float-right" style="color: red;"> <i class="fa fa-trash"></i></a>
                        <img src="uploads/<?=$res_banner['image'];?>" style="width: 100%;">
                      </div>
<?php  } ?>
                    </div>
                    </div>

                </main>
              <?php 
include_once('footer.php');
              ?>