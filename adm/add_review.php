<?php 
include_once('header.php');
if(isset($_GET['id']))
{
  $rev_edit=base64_decode($_GET['id']);
  if(is_numeric($rev_edit))
  {
      $fetch_promo=mysqli_query($con,"select * from tbl_adm_review where review_id=$rev_edit and status=1");
      $res_promo=mysqli_fetch_array($fetch_promo);
  }

}
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Reviews</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Reviews</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Reviews <a href="manage_reiview.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Reviews List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post"  enctype="multipart/form-data">
                                 <?php 
if(isset($_GET['add_rev'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Added Review.. 
</div>
  <?php
}


if(isset($_GET['wrongrev'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
        <input type="hidden" name="update_promo_id" value="<?=$res_promo['promo_id'];?>">
        <div class="row">
          <div class="col-md-6">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Name<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Name" value="<?=@$res_promo['name'];?>" required="" name="name">
                               
                              </div>
                            </div>
                            <div class="col-md-6">

                               <div class="form-group">
                                <label for="exampleInputEmail1">Profile Pic<span style="color: red;">*</span></label>
                                <?php
                                 if(isset($_GET['id'])){
                                
                                ?>
                                <input type="hidden" name="id" value="<?=$_GET['id']?>">
                                <img src="uploads/review/<?=$res_promo['image'];?>" style="width:80px">
                                 <input type="hidden" name="old_image" value="<?=$res_promo['image'];?>">
                                <?php
                                 }
                                ?>
                                <input type="file" class="form-control"  <?php if(!isset($_GET['id'])){ ?>required <?php } ?> name="profile_pic">
                               
                              </div>
                            </div>
                          </div>
                          
                          <div class="col-md-6">
                              <div class="form-group">
                                <label for="exampleInputEmail1"> Review</label>
                               <textarea cols="50" name="description" rows="5" data-sample-short><?=$res_promo['description'];?></textarea>
                               
                              </div>
                            </div>
                             <?php 
if(isset($_GET['id']))
{
  ?>
<button type="submit" class="btn btn-primary" name="rev_update">Update</button>
  <?php
}
else
{
  ?>
<button type="submit" class="btn btn-primary" name="rev_add">Submit</button>
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