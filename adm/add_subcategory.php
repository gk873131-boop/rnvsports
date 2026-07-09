<?php 
include_once('header.php');

if(isset($_GET['edit_subcategory']))
{
 $edit_subcategory=$_GET['edit_subcategory'];
  
     $fetch_subcat=mysqli_fetch_array(mysqli_query($con,"SELECT * from tbl_subcategory where subcategory_id='$edit_subcategory'"));
     
     
  

}
// print_r($fetch_subcat);
//  print_r($fetch_subcat['category_id']);
?>
       
        <!--  -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add SubCategory</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">SubCategory</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add SubCategory <a href="subcategory_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> SubCategory List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post"  enctype="multipart/form-data">
                                <input type="hidden" name="update_subcategory" value="<?=$fetch_subcat['subcategory_id']?>">
                                <?php 
if(isset($_GET['add_subcategory'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Added Sub Category.. 
</div>
  <?php
}


if(isset($_GET['wrong_subcategory'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
      
        <div class="row">
                            <div class="col-md-3">

                               <div class="form-group">
                                <label for="exampleInputEmail1">Sub Category Number<span style="color: red;">*</span></label>
                                
                                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Sub Category Number" required="" name="number" value="<?=@$fetch_subcat['subcategory_number'];?>">
                               
                              </div>
                            </div>
          <div class="col-md-3">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Category Name<span style="color: red;">*</span></label>

                              <select name="category_id"  class="form-control">
                                <option value="">Select Category</option>
                                <?php 
if(isset($_GET['edit_subcategory']))
{  
  // echo "select * from tbl_category where category_id='".$fetch_subcat['category_id']."'";
  echo $res=mysqli_fetch_array(mysqli_query($con,"select * from tbl_category where category_id='".$fetch_subcat['category_id']."'"));



  ?>
<option value="<?=$res['category_id'];?>" selected><?=$res['category_name'];?></option>
  <?php 
}
                                ?>
                                <?php 
$fetch_cate=mysqli_query($con,"select * from tbl_category where status=1");
while($res_cat=mysqli_fetch_array($fetch_cate))
{
  ?>
  <option value="<?=$res_cat['category_id'];?>"><?=$res_cat['category_name'];?></option>
  <?php
}
                                ?>
                              </select>
                               
                              </div>
                            </div>
                            <div class="col-md-3">

                               <div class="form-group">
                                <label for="exampleInputEmail1">Sub Category<span style="color: red;">*</span></label>
                                
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Sub Category Name" required="" name="subcategory_name" value="<?=@$fetch_subcat['subcategory_name'];?>">
                               
                              </div>
                            </div>
                            <div class="col-md-3">

                               <div class="form-group">
                                <label for="exampleInputEmail1"> Image (Dim :700*700)</label>
                                 <?php 
if(isset($_GET['edit_subcategory']))
{
  ?>
  <input type="hidden" name="subold_img" value="<?=$fetch_subcat['subcategory_image'];?>">
<img src="uploads/<?=$fetch_subcat['subcategory_image'];?>" style="width:30px;">
<?php
}
?>
                                <input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Category Name"  name="sub_category_image" accept="image/*">
                               
                              </div>
                            </div>
                            <div class="col-md-6">
                                <input type="checkbox" name="service" value="1" id="services" <?php if($fetch_subcat['service']=='1'){ echo "checked"; }?>>
                                <label for="services">It is for service?</label>
                            </div>
                          </div>
                              <?php 
if(isset($_GET['edit_subcategory']))
{
  ?>
<button type="submit" class="btn btn-primary" name="btn_update_sub_category">Update</button>
                            <?php }
else
{
  ?>
   <button type="submit" class="btn btn-primary" name="btn_add_sub_category">Submit</button>
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