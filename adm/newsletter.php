<?php 
include_once('header.php');
  ?>
            


            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Newsletter List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Newsletter</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Newsletter List</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>

                                            <?php 
                                             if (isset($_GET['remove'])) {
                                                  $delete_user=$_GET['remove'];
                                                  mysqli_query($con,"UPDATE tbl_newsletter set status=0 where newsletter_id='$delete_user'");
                                            
                                             }
                                              ?>
               
                                            <tr>
                                                <th>Sr No</th>
                                                <!--<th>Customer</th>-->
                                                <!--<th>Contact</th>-->
                                                <th>Email</th>
                                                <th>Date & Time</th>
                                                <!--<th>Address</th>-->
                                                <!-- <th>Wallet Bal</th> -->
                                              
                                              
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php 
                                            $count=1;
$fetch_news=mysqli_query($con,"select * from tbl_newsletter where status=1 order by newsletter_id DESC");
while($res_news=mysqli_fetch_array($fetch_news))
{
                                            ?>
                                            <tr>
                                                <td><?=$count;?></td>
                                                <!--<td><?=$res_cus['customer_fname'];?>&nbsp;<?=$res_cus['customer_lname'];?></td>-->
                                                <!--<td><?=$res_cus['customer_mobile'];?></td>-->
                                                <td><?=$res_news['email'];?></td>
                                                <td><?=$res_news['created_at']; ?></td>
                                                <!--<td><?=$res_cus['customer_address1'];?></td>-->
                                                <!-- <td><?=$res_cus['wallet_bal'];?></td> -->
                                                
                                                <td><a href="newsletter.php?remove=<?=$res_news['newsletter_id']?>" class="btn btn-sm btn-danger">Remove</a></td>
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