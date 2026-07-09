<?php 
include_once('header.php');
  ?>
            


            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Customer List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Customer</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Customer List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>

                                            <?php 
                                             if (isset($_GET['remove'])) {
                                                  $delete_user=$_GET['remove'];
                                                  mysqli_query($con,"UPDATE tbl_customer set customer_status=0 where user_id='$delete_user'");
                                            
                                             }
                                              ?>
               
                                            <tr>
                                                <th>Sr No</th>
                                                <th>Customer</th>
                                                <th>Contact</th>
                                                <th>Email</th>
                                                <th>Address</th>
                                                <!-- <th>Wallet Bal</th> -->
                                              
                                              
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
$fetch_cus=mysqli_query($con,"select * from tbl_customer where customer_status=1 order by user_id desc");
while($res_cus=mysqli_fetch_array($fetch_cus))
{
                                            ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <td><?=$res_cus['customer_fname'];?>&nbsp;<?=$res_cus['customer_lname'];?></td>
                                                <td><?=$res_cus['customer_mobile'];?></td>
                                                <td><?=$res_cus['customer_email'];?></td>
                                                <td><?php
                                                $get_add=mysqli_fetch_array(mysqli_query($con, "select * from tbl_address where email='".$res_cus['customer_email']."'"));
                                                if($get_add['address']!=''){
                                                echo $get_add['address'].", ".$get_add['city'].", ".$get_add['state'].", ".$get_add['country'].", ".$get_add['pincode'];
                                                }
                                                ?></td>
                                                <!-- <td><?=$res_cus['wallet_bal'];?></td> -->
                                                
                                                <td><a href="manage_customer.php?remove=<?=$res_cus['user_id']?>" class="btn btn-sm btn-danger">Remove</a></td>
                                            </tr>
                                        <?php  $count++; } ?>
                                           
                                           
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