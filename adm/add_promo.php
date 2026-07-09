<?php 
include_once('header.php');
if(isset($_GET['promo_code_edit']))
{
  $promo_code_edit=base64_decode($_GET['promo_code_edit']);
  if(is_numeric($promo_code_edit))
  {
      $fetch_promo=mysqli_query($con,"select * from tbl_promo where promo_id=$promo_code_edit and status=1");
      $res_promo=mysqli_fetch_array($fetch_promo);
  }

}
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Promo Code</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Promo Code</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Promo <a href="promo_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> PromoCode List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post">
                                 <?php 
if(isset($_GET['add_promo'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Added Promo.. 
</div>
  <?php
}


if(isset($_GET['wrongpromo'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
        <input type="hidden" name="update_promo_id" value="<?=$res_promo['promo_id'];?>">
        <div class="row">
          <div class="col-md-3">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Promo Code<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Promo Code" value="<?=@$res_promo['promo_code'];?>" required="" name="promo_code">
                               
                              </div>
                            </div>
                            <div class="col-md-3">

                               <div class="form-group">
                                <label for="exampleInputEmail1">Discount(%)<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Discount" required="" name="discount" value="<?=@$res_promo['discount'];?>">
                               
                              </div>
                            </div>
                            <div class="col-md-3">

                              <div class="form-group">
                                <label for="exampleInputEmail1">Expiry Date<span style="color: red;">*</span></label>
                                <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Discount" required="" name="expiry_date" value="<?=@$res_promo['expiry_date'];?>">
                               
                              </div>
                            </div>
                          </div>
                             <?php 
if(isset($_GET['promo_code_edit']))
{
  ?>
<button type="submit" class="btn btn-primary" name="btn_update_promo_code">Update</button>
  <?php
}
else
{
  ?>
<button type="submit" class="btn btn-primary" name="btn_promo_code">Submit</button>
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