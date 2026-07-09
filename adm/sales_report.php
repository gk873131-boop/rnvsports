<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Sales Report</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Sales Report</li>
                        </ol>
                        
                        <div class="card mb-4">
                              <form action="" method="post">
                                  <div class="container">
                                  <div class="row">
                                      <div class="col-md-6">
                                          <div class="form-group">
                                            <label for="exampleInputEmail1">From Date<span style="color: red;">*</span></label>
                                            <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="from" required="">
                                           </div>
                                       </div>
                                     <div class="col-md-6">
                                          <div class="form-group">
                                 <label for="exampleInputEmail1">To Date<span style="color: red;">*</span></label>
                                <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="to"  required="">
                               
                              </div>
                              </div>
                             </div>
                             </div>
                              <button type="submit" name="search" class="btn btn-primary">Search</button>
                            </form>
                            <hr>
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Sales Report</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Sr No</th>
                                                <th>Order No</th>
                                                <th>Customer Name</th>
                                                <th>Product (qua)</th>
                                                <th>Sale price</th>
                                              
                                               
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <?php
                                            if(isset($_POST['search'])){
                                            $count=1;
                                                $from=$_POST['from'];
                                                $to=$_POST['to'];
                                            $get_rec=mysqli_query($con, "select * from tbl_order_management where (date between '$from' and '$to')group by order_no order by order_id desc");
                                             
                                            while($data=mysqli_fetch_array($get_rec)){
                                                ?>
                                                <tr>
                                                <td><?=$count++?></td>
                                                <td><?=$data['order_no']?></td>
                                                <td><?=$data['client_name']?></td>
                                                <td><?php
                                                $get_recs=mysqli_query($con, "select * from tbl_order_management where order_no='".$data['order_no']."' and (date between '$from' and '$to')");
                                                while($p=mysqli_fetch_array($get_recs)){
                                                    $get_pro=mysqli_fetch_array(mysqli_query($con,"select * from tbl_product where product_id='".$p['product_id']."'"));
                                                    echo $get_pro['product_name']." (".$p['qty'].")<br>";
                                                }
                                                ?></td>
                                                <td><?php
                                                $get_recp=mysqli_query($con, "select * from tbl_order_management where order_no='".$data['order_no']."' and (date between '$from' and '$to')");
                                                while($s=mysqli_fetch_array($get_recp)){
                                                    echo '₹ ';
                                                     echo  $s['total_amt']-$s['total_discount']."<br>";
                                                }
                                                ?></td>
                                                </tr>
                                                
                                           <?php
                                          } }
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