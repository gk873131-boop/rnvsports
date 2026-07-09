<?php 
include_once('header.php');
?>
          <div id="layoutSidenav_content">
              <main>
                  <div class="container-fluid">
                      <h1 class="mt-4">Product Enquiry List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Product Enquiry</li>
                        </ol>

                        
                        
                        
                    
                       <?php 
                       if(isset($_GET['delete']))
                       {?>
                       
                       <div class="alert alert-success">
                       <strong>Success! </strong>Successfully Delete Enquiry.. 
                       </div>
                      <?php
                        }
                        ?>
                     
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Enquiry List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Sr No</th>
                                                <th>Product</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Number</th>
                                                <th>Address</th>
                                                <th>Message</th>
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody> 
                                            <?php 
                                            $count=1;
                                            

$total_amt=0;
$fetch_order=mysqli_query($con,"SELECT * from tbl_product_enquiry where status=1  order by id desc");
while($res_order=mysqli_fetch_array($fetch_order))

{         
   

                                            ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?php
                                                $pro=mysqli_fetch_array(mysqli_query($con, "select * from tbl_product where product_id='".$res_order['product_id']."'"));
                                                echo $pro['product_name']
                                                ;?></td>
                                                <td><?=$res_order['name'];?></td>
                                                <td><?=$res_order['email'];?></td>
                                                <td><?=$res_order['number'];?></td>
                                                <td><?=$res_order['address'];?></td>
                                                
                                                 <td><?=$res_order['message'];?></td>
                                                <td>

                                                    <a href="controller.php?delete_enquiry=<?=$res_order['id'];?>" class="text-danger text-size"><i class="fa fa-trash"></i></a>


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