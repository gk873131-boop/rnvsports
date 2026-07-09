<?php 
include_once('header.php');
$res=mysqli_fetch_array(mysqli_query($con, "select * from tbl_video"));
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Update Video</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Video</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Update Video
                            </div>
                            <div class="card-body">
                              <form action="controller.php" method="post"  enctype="multipart/form-data">
                                <?php 
if(isset($_GET['action'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated Video.. 
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
                          
                              <div class="col-md-6">
                                   <iframe src="https://www.youtube.com/embed/<?=$res['video1'];?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Video 1<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Video 1 Link" required="" name="video1" value="<?=$res['video1'];?>">
                               
                              </div>
                            </div>
                              <div class="col-md-6">
                                   <iframe src="https://www.youtube.com/embed/<?=$res['video2'];?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Video 2<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Video 2 Link" required="" name="video2" value="<?=$res['video2'];?>">
                               
                              </div>
                            </div>
                           
                          </div>
                           
                              <button type="submit" class="btn btn-primary" name="btn_update_video">Update</button>
                            </form>
                            </div>
                        </div>
                    </div>
                </main>
              <?php 
include_once('footer.php');
              ?>