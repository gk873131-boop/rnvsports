<?php 
include_once('header.php');
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4"></h1>
                        <ol class="breadcrumb mb-4">Employee Authentication 
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Authentication</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Authentication <a href="category_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Authentication List</a></div>
                            <div class="card-body">
                              <form>
                              <div class="form-group">
                                <label for="exampleInputEmail1">Employee Name<span style="color: red;">*</span></label>
                                <select class="form-control">
                                  <option value="">Select Employee</option>
                                  <?php 
$fetch_emp=mysqli_query($con,"select * from tbl_employee where status=1 order by employee_name ASC");
while($res_emp=mysqli_fetch_array($fetch_emp))
{
  ?>
  <option value="<?=$res_emp['employee_id'];?>"><?=$res_emp['employee_name'];?></option>
  <?php
}

                                  ?>

                                </select>
                               
                              </div>

                               <div class="form-group">
                                <label for="exampleInputEmail1">Select Module<span style="color: red;">*</span></label><br>
                                <h5>Category</h5>
                              <input type="checkbox" name="">Add Category
                              <input type="checkbox" name="">Manage Category
                              <input type="checkbox" name="">Add Subcategory
                              <input type="checkbox" name="">Manage Subcategory

                              <h5>Purchase</h5>
                              <input type="checkbox" name="">Add Purchase
                              <input type="checkbox" name="">Manage Purchase
                              
                              <h5>Department</h5>
                              <input type="checkbox" name="">Add Department
                              <input type="checkbox" name="">Manage Department
                            

                              <h5>Product</h5>
                              <input type="checkbox" name="">Add Supplier
                              <input type="checkbox" name="">Manage Supplier
                              <input type="checkbox" name="">Add Product
                              <input type="checkbox" name="">Manage Product
                           
                               <h5>Promo Code</h5>
                              <input type="checkbox" name="">Add Promo Code
                              <input type="checkbox" name="">Manage Promo Code
                             
                               <h5>Offer Zone</h5>

                              <input type="checkbox" name="">Add Offer
                              <input type="checkbox" name="">Manage Offer
                              
                               <h5>Location</h5>

                               <input type="checkbox" name="">Add Location
                              <input type="checkbox" name="">Manage Location
                             
                               <h5>Manage Customer</h5>
                               <input type="checkbox" name="">Manage Customer
                                <h5>Order Management</h5>
                               <input type="checkbox" name="">Success Order
                                <input type="checkbox" name="">Failed Order
                                <h5>Employee Section</h5>
                               <input type="checkbox" name="">Add Employee 
                               <input type="checkbox" name="">Manage Employee 
                               <input type="checkbox" name="">Add Emp Auth. 
                               <input type="checkbox" name="">Manage Emp Auth. 
                                <h5>Manage Delivered Items</h5>
                               <input type="checkbox" name="">Manage Delivered Items
                                 <h5>Report Section</h5>
                               <input type="checkbox" name="">Sales Report
                                <input type="checkbox" name="">Order Report
                                 <input type="checkbox" name="">Delivery Wise Report
                                  <input type="checkbox" name="">Item Wise Report
                                   <input type="checkbox" name="">New Customer Report
                                    <input type="checkbox" name="">Repeated Customer Report

                               
                              </div>
                             
                              <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                            </div>
                        </div>
                    </div>
                </main>
              <?php 
include_once('footer.php');
              ?>