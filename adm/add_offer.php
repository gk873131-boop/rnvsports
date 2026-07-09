<?php 
include_once('header.php');
if(isset($_GET['offer_edit']))
{
  $offer_edit=base64_decode($_GET['offer_edit']);
  if(is_numeric($offer_edit))
  {
      $fetch_offer_edit=mysqli_query($con,"select * from tbl_offer where offer_id=$offer_edit and status=1");
      $res_offer=mysqli_fetch_array($fetch_offer_edit);
  }

}
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Offer</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Offer</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Offer <a href="offer_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Offer List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post">
                                  <?php 
if(isset($_GET['add_offer'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Created Offer.. 
</div>
  <?php
}


if(isset($_GET['wrongadd_offer'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
        <input type="hidden" name="update_offer_id" value="<?=$res_offer['offer_id'];?>">
        <div class="row">
          <div class="col-md-4">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Offer Type<span style="color: red;">*</span></label>
                                 <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Offer Name" required="" value="<?=@$res_offer['offer_type'];?>" name="offer_type">

                              
                               
                              </div>
                            </div>


                             <div class="col-md-4">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Expiry Date<span style="color: red;">*</span></label>
                                <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Discount" required="" value="<?=@$res_offer['expiry_date'];?>" name="expiry_date">
                               
                              </div>
                            </div>
                             <div class="col-md-4">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Amount</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Amount"  name="amount" value="<?=@$res_offer['amount'];?>">
                               
                              </div>
                            </div>
                          </div>
                          <div class="row">
                         
                            <div class="col-md-4">
                             <div class="form-group">
                                <label for="exampleInputEmail1">Discount(%)</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Discount" name="discount" value="<?=@$res_offer['discount'];?>">
                               
                              </div>
                            </div>

                            <div class="col-md-4">
                              <div class="form-group">
                                <label for="exampleInputEmail1">First Product</label>
                              <select class="form-control" multiple="" name="first_product[]">
                                <?php 
if(isset($_GET['offer_edit']))
{
  $res_pro=mysqli_fetch_array(mysqli_query($con,"select * from tbl_product where product_id='".$res_offer['first_product']."'"));
  ?>
<option value="<?=$res_pro['product_id'];?>" selected><?=$res_pro['product_name'];?></option>
  <?php
}
                                ?>
                                <option value="">Select Product</option>
                                <?php 
$fetch_product=mysqli_query($con,"select * from tbl_product where status=1 order by product_name ASC");
while($res_product=mysqli_fetch_array($fetch_product))
{
  ?>
  <option value="<?=$res_product['product_id'];?>"><?=$res_product['product_name'];?></option>
  <?php
}
?>
                              </select>
                               
                              </div>

                            </div>
                           <div class="col-md-4">
                             <div class="form-group">
                                <label for="exampleInputEmail1">Product QTY</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Product QTY" value="<?=@$res_offer['product_qty'];?>" name="product_qty">
                               
                              </div>
                            </div>

                            <div class="col-md-4">
                             <div class="form-group">
                                <label for="exampleInputEmail1">Rate After Qty</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Rate After Qty" value="<?=@$res_offer['rate_after_qty'];?>" name="after_rate">
                               
                              </div>
                            </div>


                             

                               <div class="col-md-4">
                               <div class="form-group" >
                                <label for="exampleInputEmail1">Attach Product</label>
                              <select class="form-control" name="attachment_product">
                                <?php 
if(isset($_GET['offer_edit']))
{
  $res_pro=mysqli_fetch_array(mysqli_query($con,"select * from tbl_product where product_id='".$res_offer['attach_product']."'"));
  ?>
<option value="<?=$res_pro['product_id'];?>" selected><?=$res_pro['product_name'];?></option>
  <?php
}
                                ?>


                                <option value="">Select Product</option>
                                <?php 
$fetch_product=mysqli_query($con,"select * from tbl_product where status=1 order by product_name ASC");
while($res_product=mysqli_fetch_array($fetch_product))
{
  ?>
  <option value="<?=$res_product['product_id'];?>"><?=$res_product['product_name'];?></option>
  <?php
}
                                ?>
                              </select>
                               
                              </div>
                            </div>  
                          </div>

                              <?php 
if(isset($_GET['offer_edit']))
{
  ?>
 <button type="submit" class="btn btn-primary" name="btn_update_offer">Update</button>
  <?php
}
else
{
  ?>
  <button type="submit" class="btn btn-primary" name="btn_add_offer">Submit</button> 
  <?php

}
  ?>                            

                             
                             
                            </form>
                            </div>
                        </div>
                    </div>
                </main>
    <!-- <script>
     function show(x)
     {
     
        if(x=='Single Product')
        {
        $("#first_product").show();
        $("#discount").show();
        
        }
        else if(x=='Get One By One')
        {
         $("#first_product").show();
         $("#attach_product").hide();
         $("#discount").hide();
         
        }
        else
        {
           $("#first_product").show();
            $("#attach_product").show();
          $("#discount").hide();
        }
     }
 </script> -->
              <?php 
include_once('footer.php');
              ?>

