<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Promo List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Promo</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Promo List<a href="add_promo.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Promo</a></div>
                             <?php 
if(isset($_GET['del_promo'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Promo Code.. 
</div>
  <?php
}


if(isset($_GET['wrong_del_promo'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>


        <?php 
if(isset($_GET['update_promo'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated Promo Code.. 
</div>
  <?php
}


if(isset($_GET['wrongupdatepromo'])=='wrong')
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
                                                <th>Promo Code</th>
                                                <th>Discount(%)</th>
                                                <th>Expiry Date</th>
                                               
                                              
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
$fetch_promo=mysqli_query($con,"select * from tbl_promo where status=1 order by promo_id desc");
while($res_promo=mysqli_fetch_array($fetch_promo))
{


                                            ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_promo['promo_code'];?></td>
                                                <td><?=$res_promo['discount'];?></td>
                                                <td><?=$res_promo['expiry_date'];?></td>
                                                
                                        
                                                <td><a href="javascript:void(0)" onclick="warning('add_promo.php?promo_code_edit=<?=base64_encode($res_promo['promo_id']);?>','Do You Want to Update Promo ?')" class="btn btn-sm btn-success">Edit</a> 
                                                     <a href="javascript:void(0)" onclick="warning('controller.php?promo_code_del=<?=base64_encode($res_promo['promo_id']);?>','Do You Want to delete Promo ?')" class="btn btn-sm btn-danger">Remove</a>

                                                </td>
                                               
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