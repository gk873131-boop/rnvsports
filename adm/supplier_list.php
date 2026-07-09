<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Supplier List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Supplier</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Supplier List<a href="add_supplier.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Supplier</a></div>
                             <?php 
if(isset($_GET['delete_supplier'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Supplier.. 
</div>
  <?php
}


if(isset($_GET['delete_supplier_wrong'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>


         <?php 
if(isset($_GET['update_supplier'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated Supplier.. 
</div>
  <?php
}


if(isset($_GET['update_supplier_supplier_wrong'])=='wrong')
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
                                                <th>Contact</th>
                                                <th>Email</th>
                                                <th>Contact Person</th>
                                                <th>Address</th>
                                              
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
$fetch_supplier=mysqli_query($con,"select * from tbl_supplier where status=1 order by supplier_id desc");
while($res_supplier=mysqli_fetch_array($fetch_supplier))
{

                                            ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_supplier['supplier_name'];?></td>
                                                <td><?=$res_supplier['supplier_contact'];?></td>
                                                 <td><?=$res_supplier['supplier_email'];?></td>
                                                  <td><?=$res_supplier['supplier_contact_person'];?></td>
                                                <td><?=$res_supplier['supplier_address'];?></td>
                                                <td>
                                                  <a href="javascript:void(0)" onclick="warning('add_supplier.php?supplier_edit=<?=base64_encode($res_supplier['supplier_id']);?>','Do You Want to update Supplier ?')" class="btn btn-success">Edit</a>
                                                 <a href="javascript:void(0)" onclick="warning('controller.php?supplier_del=<?=base64_encode($res_supplier['supplier_id']);?>','Do You Want to delete Supplier ?')" class="btn btn-danger">Remove</a></td>
                                               
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