<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Category List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Category</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Category List<a href="add_category.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Category</a></div>
                              <?php 
if(isset($_GET['delete_cat'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Category.. 
</div>
  <?php
}


if(isset($_GET['delete_cat_wrong'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>

          <?php 
if(isset($_GET['action_update_cat'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated Category.. 
</div>
  <?php
}
?>  

 <?php 
if(isset($_GET['updatewrongcate'])=='success')
{
  ?>
  <div class="alert alert-danger">
  <strong>Failed!</strong>Failed Update Category.. 
</div>
  <?php
}
?>              <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Sr No</th>
                                                <th>Category</th>
                                                <!--<th>Image</th>-->
                                                <!--<th>Listing</th>-->
                                                <!--<th>Add Image</th>-->
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
$fetch_category=mysqli_query($con,"select * from tbl_category where status=1 order by category_number asc");
while($res_cat=mysqli_fetch_array($fetch_category))
{
    ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_cat['category_name'];?></td>
                                                <!--<td><img src="uploads/<?=$res_cat['category_image'];?>" style="width:80px;"></td>-->
                                                <!--<td>-->
                                                <!--    <form action="controller.php" method="post">-->
                                                <!--        <input type="hidden" value="<?=$res_cat['category_id'];?>" name="id">-->
                                                <!--    <input type="number" value="<?=$res_cat['category_number'];?>" name="number" style="width: 50px;border: 1px solid #ccc;border-radius: 5px;">-->
                                                <!--    <button type="submit" name="change_listing_btn" class="btn btn-primary">Change</button>-->
                                                <!--    </form>-->
                                                <!--    </td>-->
                                                <!--    <td><a title="Add Image" href="add_image.php?category_id=<?=$res_cat['category_id'];?>"><i class="fa fa-plus"></i></a></td>-->

                                                <td><a href="javascript:void(0)" onclick="warning('add_category.php?edit_category=<?=base64_encode($res_cat['category_id']);?>','Do You Want to Update Category ?')" class="btn btn-success">Edit</a>

                                                 <a href="javascript:void(0)" onclick="warning('controller.php?category=<?=base64_encode($res_cat['category_id']);?>','Do You Want to delete Category ?')" class="btn btn-danger">Remove</a>

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
               <script>
                   function change_number(num, id){
                       alert(num);
                       $.ajax({
                           method:"POST",
                           url:"ajax/change-number.php",
                           data{num:num,id:id},
                           success:function(){
                               location.reload();
                           }
                       })
                   }
               </script>
               