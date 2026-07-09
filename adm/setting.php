<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Manage Setting</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Setting</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Setting </div>
                            <div class="card-body">
                                <?php if(isset($_GET['success'])=='success')
                                { ?>
                                    <div class="alert alert-success alert-dismissible">
                                    <a href="" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <strong>Success!</strong> Your Password Changed.
                                </div>
                               <?php 
                               } ?>
                               
                                <?php

if(isset($_GET['action']))
{
  ?>
<div class="alert alert-warning alert-dismissible fade show" role="alert" style="color: #f5f5f5;
    background-color: #d51022;
    border-color: #ffeeba;
">
  <strong>Warning!</strong> Invalid Password..!
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
  <?php
}
        ?>
                               
                              <form action="controller.php" method="POST">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Old Password<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" name="old_pass" aria-describedby="emailHelp" placeholder="Enter Old Password" required="">
                               
                              </div>

                                <div class="form-group">
                                <label for="exampleInputEmail1">New Password<span style="color: red;">*</span></label>
                                <input type="text" name="new_pass" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter New Password" required="">
                               
                              </div>
                             
                              <button type="submit" name="admin_password" class="btn btn-primary">Submit</button>
                            </form>
                            </div>
                        </div>
                    </div>
                </main>
              <?php 
include_once('footer.php');
              ?>