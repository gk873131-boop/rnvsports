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
if(isset($_GET['success'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Add Product quantity.. 
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
                                                <th>Sale price</th>
                                                <th>Featured Image</th>
                                                <th>Available Stock</th>
                                                <th>Edit Stock</th>
                                                <th>View Product</th>
                                             </tr>
                                        </thead>
                                     <tbody>

                                            <?php
                                            $count=1;


                         $fetch_product=mysqli_query($con,"select * from tbl_product where status=1 order by tbl_product.product_id desc");
                         while($res_product=mysqli_fetch_array($fetch_product))

                             {   
                                
                                             ?>

                                            <tr>
                                                <td><?=$count++;?></td>
                                                <td><?=$res_product['product_code'];?></td>
                                                <td><?=$res_product['product_name'];?></td>
                                                <td><?=$res_product['sale_price'];?></td>
                                                <td><img src="uploads/<?=$res_product['featured_image'];?>" style="width:50px;"  ></td>
                                                <td><?=$res_product['opening_stock'];?></td>
                                                <td>
                                                    <form action="controller.php" method="post">
                                                        <input type="hidden" name="id" value="<?=$res_product['product_id'];?>">
                                                        <input type="number" name="quantity" class="form-control mb-1" placeholder="Quantity">
                                                        <input type="text" name="remark" class="form-control" placeholder="Remark">
                                                        <br>
                                                        <button type="submit" name="add_qua_btn" class="btn btn-success">Add</button>
                                                        <button type="submit" name="less_qua_btn" class="btn btn-danger">Less</button>
                                                    </form>
                                                </td>

                                                <td>
                                                    <a href="#" onclick="getdata(<?=$res_product['product_id'];?>)"  class="btn-sm text-primary" data-toggle="modal" data-target="#myModals"><i class="fa fa-eye"></i></a></td>
                                               
                                            </tr>
                                           <?php } ?>
                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
   <div class="modal fade bd-example-modal-lg" id="myModals" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
         </div>
        
         
    
  
        <div class="modal-body" id="result">

    
 
      </div>
      </div>
    </div>
  </div>
                        </div>
                    </div>
                </main>
                
                
                
                
                
                
                
               <?php 
include_once('footer.php');
               ?>
              <script>
    function getdata(x)
    {
          $.ajax({
      method:"POST",
      url:"ajax/quantity.php",
      data:{id:x},
      success:function(result){
      $('#result').html(result);
      }
    });
    }
  </script>