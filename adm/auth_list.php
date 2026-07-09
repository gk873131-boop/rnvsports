<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Auth List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Auth</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Auth List <a href="add_auth.php" class="btn btn-warning" style="float: right;"><i class="fa fa-plus"></i>Add Auth</a></div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Sr No</th>
                                                <th>Employee</th>
                                                <th>Auth</th>
                                                
                                                <th>Status</th>
                                              
                                                <th>Action</th>
                                               
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <tr>
                                                <td>Tiger Nixon</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                 <td>System Architect</td>
                                             
                                                
                                                 <td><a href="" class="btn btn-sm btn-success">Edit</a> <a href="" class="btn btn-sm btn-danger">Remove</a></td>
                                               
                                            </tr>
                                            <tr>
                                                <td>Tiger Nixon</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                 <td>System Architect</td>
                                             
                                                
                                                 <td><a href="" class="btn btn-sm btn-success">Edit</a> <a href="" class="btn btn-sm btn-danger">Remove</a></td>
                                               
                                            </tr>
                                            <tr>
                                                 <td>Tiger Nixon</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                 <td>System Architect</td>
                                             
                                                
                                                 <td><a href="" class="btn btn-sm btn-success">Edit</a> <a href="" class="btn btn-sm btn-danger">Remove</a></td>
                                               
                                            </tr>
                                            <tr>
                                                <td>Tiger Nixon</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                 <td>System Architect</td>
                                             
                                                
                                                 <td><a href="" class="btn btn-sm btn-success">Edit</a> <a href="" class="btn btn-sm btn-danger">Remove</a></td>
                                               
                                            </tr>
                                           
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