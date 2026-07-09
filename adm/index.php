<?php 
error_reporting(0);
include_once('header.php');
$date=date("Y-m-d");
$today_num=mysqli_num_rows(mysqli_query($con,"SELECT * FROM tbl_order_management where date='$date' and status=1 group by order_no"));

$today_sale=mysqli_fetch_array(mysqli_query($con,"SELECT SUM(total_amt) AS total
FROM tbl_order_management where date='$date' and status=1 group by order_no"));

$total_product=mysqli_num_rows(mysqli_query($con,"SELECT * from tbl_product where status=1"));
$total_sale=mysqli_fetch_array(mysqli_query($con,"SELECT SUM(total_amt) AS total_amt
FROM tbl_order_management where status='1'")); 


?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Today Order </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">Total: <?=$today_num;?></a>
                                      
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Today Sale</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">Total: Rs.<?=$today_sale['total'];?></a>
                                      
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Total Product</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">Total:<?=$total_product;?></a>
                                       
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Total Sale</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">Total:Rs.<?=$total_sale['total_amt'];?> </a>
                                      
                                    </div>
                                </div>
                            </div>

                        </div>
                       <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Today Order</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Sr No</th>
                                                <th>Order_no</th>
                                                <th>Date</th>
                                                <th>Customer</th>
                                                <th>Contact</th>
                                               
                                                <th>Total Amt</th>
                                                
                                                <th>Payment Status</th>
                                                 <th>Order Status</th>
                                                <th>Invoice</th>
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody> 
                                            <?php 
                                            $count=1;
                                            

$total_amt=0;

$date=date("Y-m-d");
$fetch_order=mysqli_query($con,"SELECT * from tbl_order_management where status=1 and date='$date' group by order_no order by order_id desc");
while($res_order=mysqli_fetch_array($fetch_order))

{         
  $order=$res_order['order_no'];     
   

                                            ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_order['order_no'];?></td>
                                                <td><?=$res_order['date'];?></td>
                                                <td><?=$res_order['client_name'];?></td>
                                                
                                                <td><?=$res_order['mobile'];?></td>
                                              
                                                <td><?=$res_order['total_amt'];
                                                   
                                                ?></td>
                                                <td><?php 
                                                if($res_order['payment_status']==1)
                                                {
                                                    echo "Success";
                                                }
                                                else
                                                {
                                                    echo "Pending";
                                                }
                                                
                                                ?></td>
                                                 <td><?=$res_order['order_status'];?></td>
                                                <td><a title="Invoice" target="_blank" href="invoice/invoice.php?order_no=<?=$res_order['order_no'];?>"><i class="fa fa-print"></i></a></td>
                                                <td>
                                                    <a href="#" onclick="getdata(<?=$order;?>)"  class="btn-sm text-primary" data-toggle="modal" data-target="#myModal"><i class="fa fa-eye"></i></a>

                                                    <a href="success_order.php?del=<?=$res_order['order_no'];?>" class="text-danger text-size"><i class="fa fa-trash"></i></a>


                                                </td>
                                              
                                             </tr>
                                        <?php  $count++; } ?>
                                           
                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                                   <div class="container">
  <!-- <h2>Modal Example</h2> -->
  <!-- Trigger the modal with a button -->
 
  
   <div class="modal fade bd-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
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
                </main>
                <?php 
include_once('footer.php');
                ?>
                
                  <script>
    function getdata(x)
    {
          $.ajax({
      method:"POST",
      url:"ajax/ajaxData.php",
      data:{order_no:x},
      success:function(result){
      $('#result').html(result);
      }
    });
    }
  </script>