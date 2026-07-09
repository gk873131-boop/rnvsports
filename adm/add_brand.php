<?php 
include_once('header.php');
if(isset($_GET['id']))
{
  $id=base64_decode($_GET['id']);
  if(is_numeric($id))
  {
      $fetch=mysqli_query($con,"select * from tbl_brand where id='$id' and status=1");
         $res=mysqli_fetch_array($fetch);
        

  }

}

?>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <?php if (isset($_GET['id'])) {?>
                          <h1 class="mt-4">Edit Brand</h1>
                       <?php  }
                        else
                        {?>
                            <h1 class="mt-4">Brand Service</h1>
                      <?php  }  ?>
                       
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Brand</li>
                        </ol>
                        
                          <?php 
if(isset($_GET['success'])=='success')
{
  ?>
  <div class="alert alert-success">
 <p>Successfully Added Brand..!</p> 
</div>
  <?php
}
?>




        

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Brand<a href="manage_brand.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Brand List</a></div>
                            <div class="card-body">
                             <form action="controller.php" method="post"  enctype="multipart/form-data">
                               <input type="hidden" name="update_id" value="<?=$id;?>">

                                
                <div class="row">

              
                  <div class="col-md-4">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Title<span style="color: red;">*</span></label>
                                <input type="text" class="form-control"  placeholder="Title" required="" value="<?=$res['title'];?>" name="title">
                               
                              </div>
                            </div>
                            
                           
                    

                             <div class="col-md-4">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Featured Image </label>
                                <?php 
if(isset($_GET['id']))
{
  ?>
  <img src="uploads/<?=$res['image'];?>" style="width:30px;">
   <input type="hidden" name="old_blog_image" value="<?=$res['image'];?>">
 
  <?php
}
?>
  <input type="file" class="form-control" name="blog_image">
                              
                               
                              </div>
                            </div>


                                <div class="col-md-12">
                              <div class="form-group">
                                <label for="">Description</label>
                               <textarea cols="50" id="editor1" name="description" rows="10" data-sample-short><?=$res['description'];?></textarea>
                               
                              </div>
                            </div>
                            </div>
                            
                            <hr>
                            <h2>SEO Details</h2>
                            <div class="row">
                                <div class="col-md-6">
                              <div class="form-group">
                                <label for="exampleInputEmail1">SEO Title</label>
                                <input type="text" class="form-control"  placeholder="SEO Title"  value="<?=$res['seo_title'];?>" name="seo_title">
                               
                              </div>
                            </div>
                            <div class="col-md-6">
                              <div class="form-group">
                                <label for="exampleInputEmail1">SEO Description</label>
                                <input type="text" class="form-control"  placeholder="SEO Description"  value="<?=$res['seo_description'];?>" name="seo_description">
                               
                              </div>
                            </div>
                            </div>
                            
                            
<?php 
if(isset($_GET['id']))
{
  ?>
  <button type="submit" class="btn btn-primary" name="btn_update_brand">Update</button>
  <?php
}
else
{
  ?>
    <button type="submit" class="btn btn-primary" name="btn_add_brand">Submit</button>
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


<script type="text/javascript">
$(document).ready(function(){

    $('#type').on("change",function () {
    
        var categoryId = $(this).find('option:selected').val();
        $.ajax({
            url: "ajax/ajaxData.php",
            type: "POST",
            data: "categoryId="+categoryId,
            success: function (response) {
                $("#type1").html(response);
            },
        });
    }); 

});

</script>