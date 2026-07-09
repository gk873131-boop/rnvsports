 <?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Product List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Product</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Product List<a href="add_product.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Product</a></div>
                             <?php 
if(isset($_GET['del_product'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Product.. 
</div>
  <?php
}


if(isset($_GET['wrongdel_product'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>

        <?php 
if(isset($_GET['update_product'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated Product.. 
</div>
  <?php
}


if(isset($_GET['wrongupdate_product'])=='wrong')
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
                                                <th>Product Code</th>
                                                <th>Product Title</th>
                                                <th>Category</th>
                                                <!--<th>SubCateg/ory</th>-->
                                                <th>Sale price</th>
                                                <th>Featured Image</th>
                                                <!--<th>Featured Image 2</th>-->
                                                <!--<th>Featured Image 3</th>-->
                                                <!--<th>Featured Image 4</th>-->
                                                <th>Add Images</th>
                                                <th>View Product</th>
                                            
                                                <th>Action</th>
                                             </tr>
                                        </thead>
                                     <tbody>

                                            <?php
                                            $count=1;

                                            // "SELECT * from tbl_product inner join tbl_category on tbl_product.category_id=tbl_category.category_id  where tbl_product.status=1 order by tbl_product.product_id desc");


                         $fetch_product=mysqli_query($con,"select * from tbl_product where status=1 order by product_id desc");
                         while($res_product=mysqli_fetch_array($fetch_product))

                             {   
                                //   $query=mysqli_fetch_array(mysqli_query($con,"select * from tbl_subcategory where subcategory_id='".$res_product['subcategory_id']."'"));
                                   $query1=mysqli_fetch_array(mysqli_query($con,"select * from tbl_category where category_id='".$res_product['category_id']."'"));
                                  
                              
                                             ?>

                                            <tr>
                                                <td><?=$count++;?></td>
                                                <td><?=$res_product['product_code'];?></td>
                                                <td><?=$res_product['product_name'];?></td>
                                                 <td><?=$query1['category_name'];?></td> 
                                                 <!--<td><?=$query['subcategory_name'];?></td> -->
                                                <td><?=$res_product['sale_price'];?></td>
                                                 <!-- <td><?=$res_product['regular_price'];?></td> -->
                                                <td><img src="uploads/<?=$res_product['featured_image'];?>" style="width:50px;"  ></td>
                                                <!--<td><img src="uploads/<?=$res_product['size_chart'];?>" style="width:50px;"  ></td>-->
                                                <!--<td><img src="uploads/<?=$res_product['featured_image2'];?>" style="width:50px;"  ></td>-->
                                                <!--<td><img src="uploads/<?=$res_product['featured_image3'];?>" style="width:50px;"  ></td>-->
                                                <td><a title="Add Gallery" href="add_gallary.php?product_id=<?=$res_product['product_id'];?>"><i class="fa fa-plus"></i></a></td>

                                                <td><a title="Add Gallery" target="blank" href="https://autoriseindia.com/product/<?=$res_product['product_slug'];?>"><i class="fa fa-eye"></i></a></td>
                                                <td><a title="Edit" href="javascript:void(0)" onclick="warning('add_product.php?product_edit=<?=base64_encode($res_product['product_id']);?>','Do You Want to Update Product ?')" class="btn btn-sm btn-success"><i class="fa fa-edit"></i></a>
                                                    
                                                 <a title="Delete" href="javascript:void(0)" onclick="warning('controller.php?product_del=<?=base64_encode($res_product['product_id']);?>','Do You Want to delete Product ?')" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></i></a>

                                                  <a title="Add Bundle" href="update_size.php?product_id=<?=$res_product['product_id']?>" class="btn btn-sm btn-danger">S<i class="fa fa-plus"></i></a>

                                                   <a title="add_color" href="color.php?product_id=<?=$res_product['product_id']?>" class="btn btn-sm btn-danger">C<i class="fa fa-plus"></i></a>
                                             </td>
                                               
                                            </tr>
                                           <?php } ?>
                                           
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