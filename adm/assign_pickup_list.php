<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Assign Order List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Assign Order List</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Assign Order List<a href="assign_pickup.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Assign Order </a></div>
                              <?php 
if(isset($_GET['del_pickup'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Deleted Pickup.. 
</div>
  <?php
}


if(isset($_GET['wrongdel_pickupt'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>

          <?php 
if(isset($_GET['update_pickup'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Updated Assign.. 
</div>
  <?php
}
?>  

 <?php 
if(isset($_GET['wrongupdate_pickup'])=='success')
{
  ?>
  <div class="alert alert-danger">
  <strong>Failed!</strong>Failed Update Assign.. 
</div>
  <?php
}
?>              <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Sr No</th>
                                                <th>Employee Name</th>
                                                <th>Order No </th>
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
                                           

$fetch_order=mysqli_query($con,"select * from tbl_delivery_assign inner join tbl_employee on tbl_delivery_assign.pickup_employee_id=tbl_employee.employee_id where tbl_delivery_assign.status=1");
while($res_order=mysqli_fetch_array($fetch_order))
{
    ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_order['employee_name'];?></td>
                                                 <td><?=$res_order['order_id'];?></td>
                                               

                                                <td><a href="javascript:void(0)" onclick="warning('assign_pickup.php?edit_assign=<?=base64_encode($res_order['delivery_assign_id']);?>','Do You Want to Update Assign Pickup ?')" class="btn btn-success">Edit</a>


                                                 <a href="javascript:void(0)" onclick="warning('controller.php?del_assign_order=<?=base64_encode($res_order['delivery_assign_id']);?>','Do You Want to delete Assign Pickup?')" class="btn btn-danger">Remove</a>

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