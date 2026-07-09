<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">New Customer Wise Report</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Report</li>
                        </ol>
                        
                        <div class="card mb-4">
                              <form>
                                 

                              <div class="form-group">
                                <label for="exampleInputEmail1">From Date<span style="color: red;">*</span></label>
                                <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Category Name" required="">

                                 <label for="exampleInputEmail1">To Date<span style="color: red;">*</span></label>
                                <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Category Name" required="">
                               
                              </div>
                             
                              <button type="submit" class="btn btn-primary">Search</button>
                            </form>
                            <hr>
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Report</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Sr No</th>
                                                <th>Product</th>
                                                <th>Sale price</th>
                                                <th>Image</th>
                                                <th>Stock</th>
                                              
                                               
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            
                                           
                                           
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