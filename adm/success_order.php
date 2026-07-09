<?php 
include_once('header.php');
if (isset($_GET['del'])) 
{
    $delete=$_GET['del'];
    mysqli_query($con,"UPDATE tbl_order_management set status=0 where order_no='$delete'");
}
?>
          <div id="layoutSidenav_content">
              <main>
                  <div class="container-fluid">
                      <h1 class="mt-4">Success Order List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Success Order</li>
                        </ol>

                         <?php 
                       if(isset($_GET['update_order'])=='success')
                       {?>
                       
                      <div class="alert alert-success alert-dismissible">
  <a href="" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Success!</strong>Successfully Update Order Status.
</div>
                      <?php
                        }
                        ?>
                        
                         <?php 
                       if(isset($_GET['success_error'])=='success_error')
                       {?>
                       
                      <div class="alert alert-danger alert-dismissible">
  <a href="" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Wrong!</strong>Something Went Wrong..
</div>
                      <?php
                        }
                        ?>
                    
                       <?php 
                       if(isset($_GET['update_order'])=='success')
                       {?>
                       
                       <div class="alert alert-success">
                       <strong>Success!</strong>Successfully Updated Order.. 
                       </div>
                      <?php
                        }


                      if(isset($_GET['wrongupdate_order'])=='wrong')
                        {?>
                          <div class="alert alert-danger">
                          <strong>Warning!</strong>Something Went Wrong..! 
                          </div>
                        <?php } 

                         if(isset($_GET['success'])=='success')
                        {?>
                          <div class="alert alert-success alert-dismissible">
                          <a href="" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                          <strong>Success!</strong> Update Status.
                          </div>
                        <?php } ?>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Success Order List</div>
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
                                                <th>P_Status</th>
                                                <th>Order_Status</th>
                                                <th>Invoice</th>
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody> 
                                            <?php 
                                            $count=1;
                                            

$total_amt=0;
$fetch_order=mysqli_query($con,"SELECT * from tbl_order_management where status=1 group by order_no order by order_id desc");
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
                                              
                                                <td><?=$res_order['total_amt'];?></td>
                                                <td><?php
                                                if($res_order['payment_status']==1)
                                                {
                                                    echo "Success";
                                                }
                                                else
                                                {
                                                   echo "Pending";  
                                                }
                                                ?>
                                                </td>
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
<!-- 
               <script>
  $("#success_alert").fadeTo(2000, 1000).slideUp(1000, function(){
    $("#success_alert").slideUp(1000);
});
  </script> -->

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
  </body>
</html>