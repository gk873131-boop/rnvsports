<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Purcahse List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Purcahse</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Purcahse List<a href="add_purchase.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Purcahse</a></div>
                             <?php 
if(isset($_GET['del_purchase'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Purchase.. 
</div>
  <?php
}


if(isset($_GET['wrongdel_purchase'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>


         <?php 
if(isset($_GET['update_purchase'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated Purchase.. 
</div>
  <?php
}


if(isset($_GET['wrongupdate_purchase'])=='wrong')
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
                                                <th>Supplier</th>
                                                <th>item</th>
                                                <th>qty</th>
                                                <th>rate</th>
                                                <th>amount</th>
                                              
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
$fetch_purchase=mysqli_query($con,"select * from tbl_purchase inner join tbl_supplier on tbl_purchase.supplier_id=tbl_supplier.supplier_id inner join tbl_product on tbl_purchase.item_id=tbl_product.product_id where tbl_purchase.status=1 order by tbl_purchase.purchase_id desc");
while($res_purchase=mysqli_fetch_array($fetch_purchase))
{

                                            ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_purchase['supplier_name'];?></td>
                                                <td><?=$res_purchase['product_name'];?></td>
                                                 <td><?=$res_purchase['qty'];?></td>
                                                <td><?=$res_purchase['rate'];?></td>
                                                <td><?=$res_purchase['qty']*$res_purchase['rate'];?></td>
                                                <td><a href="javascript:void(0)" onclick="warning('add_purchase.php?purchase_edit=<?=base64_encode($res_purchase['purchase_id']);?>','Do You Want to update purchase Item ?')" class="btn btn-sm btn-success">Edit</a> 

                                                  <a href="javascript:void(0)" onclick="warning('controller.php?purchase_del=<?=base64_encode($res_purchase['purchase_id']);?>','Do You Want to delete purchase Item ?')" class="btn btn-sm btn-danger">Remove</a></td>
                                               
                                            </tr>
                                           <?php $count++; } ?>
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