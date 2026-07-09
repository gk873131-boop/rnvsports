<?php 
include_once('header.php');
$product_id=$_GET['product_id'];
$del_banner=$_GET['del_banner'];

?>
            <div id="layoutSidenav_content" style="margin-left: -9px;">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Product Image</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Product Image</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-body">
                              <form action="controller.php" method="post"  enctype="multipart/form-data">
                                   <input type="hidden" value="<?=$product_id;?>" name="product_id">
                                   <input type="hidden" value="<?=$del_banner;?>" name="del_banner">
                                 
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
                                <label for="exampleInputEmail1">Product Image (Dim: 800*800)</label>
                             
                                <input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Category Name" name="product_img" accept="image/*">
                               
                              </div>
                            </div>
                            
                            <!--  <div class="col-md-4">-->
                            <!--   <div class="form-group">-->
                            <!--    <label for="exampleInputEmail1">Color </label>-->
                             
                            <!--    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Color Name" name="color">-->
                               
                            <!--  </div>-->
                            <!--</div>-->
                    </div>
                             <?php  if(isset($_GET['edit_category']))
                                {
                                ?>
                              <button type="submit" class="btn btn-primary" name="btn_update_category">Update</button>
                            <?php } 
                            else
                            {
                              ?>
                               <button type="submit" class="btn btn-primary" name="btn_add_product_image">Submit</button>
                              <?php
                            }
                            ?>
                            </form>
                            </div>
                        </div>
                         <div class="row">
                      <?php 
                     
$fetch_banner=mysqli_query($con,"select * from  tbl_product_gallery where status=1 and product_id='$product_id'");
while($res_banner=mysqli_fetch_array($fetch_banner))
{
                      ?>
                      <div class="col-md-4"> 
                       <a href="controller.php?del_banner=<?=$res_banner['gallery_id'];?>&product_id=<?=$product_id;?>" class="float-right" style="color: red; margin-right: 58px;"> <i class="fa fa-trash"></i></a>
                        <img src="uploads/<?=$res_banner['image'];?>"  style="margin-bottom: 5px;
    width: 272px;
    height: 155px;
    margin-top: 5px;">
                        <!--<p>Color: <?=$res_banner['color'];?></p>-->
                      </div>
<?php  } ?>
                    </div>
                    </div>

                </main>
              <?php 
include_once('footer.php');
              ?>