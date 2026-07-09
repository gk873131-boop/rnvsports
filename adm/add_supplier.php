<?php 
include_once('header.php');
if(isset($_GET['supplier_edit']))
{
  $supplier_edit=base64_decode($_GET['supplier_edit']);
  if(is_numeric($supplier_edit))
  {
      $fetch_sup=mysqli_query($con,"select * from tbl_supplier where supplier_id=$supplier_edit and status=1");
      $res_sup=mysqli_fetch_array($fetch_sup);
  }

}
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Supplier</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Supplier</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Supplier <a href="supplier_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Supplier List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post">
                                 <?php 
if(isset($_GET['add_supplier'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Added Supplier.. 
</div>
  <?php
}


if(isset($_GET['add_supplier_wrong'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
        <input type="hidden" name="update_id" value="<?=$res_sup['supplier_id'];?>">
                  <div class="row">
                    <div class="col-md-3">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Supplier Name<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Supplier Name" required="" value="<?=@$res_sup['supplier_name'];?>" name="supplier_name">
                               
                              </div>
                            </div>


                              <div class="col-md-8">
                                   <div class="form-group">
                                <label for="exampleInputEmail1">Supplier Address</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Supplier Address"  value="<?=@$res_sup['supplier_address'];?>" name="supplier_address">
                               
                              </div>
                            </div>


                              <div class="col-md-3">

                              <div class="form-group">
                                <label for="exampleInputEmail1">Supplier Mobile No<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Supplier Mobile No" value="<?=@$res_sup['supplier_contact'];?>" required="" name="supplier_contact">
                               
                              </div>
                            </div>


                              <div class="col-md-3">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Supplier Email</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Supplier Email"  value="<?=@$res_sup['supplier_email'];?>" name="supplier_email">
                               
                              </div>
                            </div>


                              <div class="col-md-3">
                                 <div class="form-group">
                                <label for="exampleInputEmail1">Supplier Contact Person</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Contact Person"  value="<?=@$res_sup['contact_person'];?>" name="contact_person">
                               
                              </div>
                              </div>
                            </div>

<?php
if(isset($_GET['supplier_edit']))
{
  ?>
<button type="submit" class="btn btn-primary" name="btn_update_supplier">Update</button>
<?php
}
else
{
  ?>
  <button type="submit" class="btn btn-primary" name="btn_add_supplier">Submit</button>
  <?php
}
?>

                             
                              
                            </form>
                            </div>
                        </div>
                    </div>
                </main>
              <?php 
include_once('footer.php');
              ?>