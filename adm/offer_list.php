<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Offer List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Offer</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Offer List<a href="add_offer.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Offer</a></div>
                            <?php 
if(isset($_GET['del_offer'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Offer.. 
</div>
  <?php
}


if(isset($_GET['wrongdel_offer'])=='wrong')
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
                                                <th>Offer Type</th>
                                                <th>First Pro.</th>
                                                <th>Attach Pro</th>
                                                <th>Amount</th>
                                                <th>Discount(%)</th>
                                                <th>Expiry Date</th>
                                              
                                              
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
$fetch_offer=mysqli_query($con,"select * from tbl_offer inner join tbl_product on tbl_offer.first_product=tbl_product.product_id where tbl_offer.status=1");
while($res_offer=mysqli_fetch_array($fetch_offer))
{
   

                                            ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_offer['offer_type'];?></td>
                                                <td><?=$res_offer['product_name'];?></td>
                                                <td><?=$res_offer['product_name'];?></td>
                                                <td><?=$res_offer['amount'];?></td>
                                                <td><?=$res_offer['discount'];?></td>
                                                 <td><?=$res_offer['expiry_date'];?></td>
                                               
                                                <td><a href="javascript:void(0)" onclick="warning('add_offer.php?offer_edit=<?=base64_encode($res_offer['offer_id']);?>','Do You Want to Update offer ?')" class="btn btn-sm btn-success">Edit</a>

                                                  <a href="javascript:void(0)" onclick="warning('controller.php?offer_del=<?=base64_encode($res_offer['offer_id']);?>','Do You Want to delete offer ?')" class="btn btn-sm btn-danger">Remove</a></td>
                                               
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