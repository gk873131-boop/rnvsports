<?php 
include_once('header.php');
if(isset($_GET['purchase_edit']))
{
  $purchase_edit=base64_decode($_GET['purchase_edit']);
  if(is_numeric($purchase_edit))
  {
      $fetch_purchase=mysqli_query($con,"select * from tbl_purchase where purchase_id=$purchase_edit and status=1");
      $res_purchase=mysqli_fetch_array($fetch_purchase);
  }

}
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Purcahse</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Purcahse</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Purcahse <a href="purchase_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Purcahse List</a></div>
                            <div class="card-body">
                              <form action="controller.php" method="post">
                                 <?php 
if(isset($_GET['add_purchase'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Added Purchase.. 
</div>
  <?php
}


if(isset($_GET['wrongadd_purchase'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}
        ?>
        <input type="hidden" name="update_id" value="<?=$res_purchase['purchase_id'];?>">
        <div class="row">
          <div class="col-md-4">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Supplier Name<span style="color: red;">*</span></label>
                               <select class="form-control" name="supplier_id">
                                <?php 
                                if(isset($_GET['purchase_edit']))
                                  {
                                    $fetch_supplier=mysqli_fetch_array(mysqli_query($con,"select * from tbl_supplier where supplier_id='".$res_purchase['supplier_id']."'"));

                                    ?>
                          <option value="<?=$fetch_supplier['supplier_id'];?>" selected><?=$fetch_supplier['supplier_name'];?></option>
                                    <?php
                                  }
                                 
                                  ?>
                                 <option value="">Select Supplier</option>
                                 <?php 
$fetch_supplier=mysqli_query($con,"select * from tbl_supplier where status=1 order by supplier_name ASC");
while($res_supplier=mysqli_fetch_array($fetch_supplier))
{
  ?>
  <option value="<?=$res_supplier['supplier_id'];?>"><?=$res_supplier['supplier_name'];?></option>
  <?php
}
                                 ?>
                               </select>
                               
                              </div>
                            </div>

                             <div class="col-md-4">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Purchase Date<span style="color: red;">*</span></label>
                                <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<?=@$res_purchase['purchase_date'];?>" placeholder="Enter Department Contact" required="" name="purchase_date">
                              </div>
                            </div>
                          </div>

                              <div class="form-group">
                                <div class="table-responsive">  
                               <table class="table table-bordered" id="dynamic_field">  
                                    <tr>  
                                          <?php 
                                if(isset($_GET['purchase_edit']))
                                  {
                                    ?>
 <td>
                                        
                                           <select name="item_id" class="form-control">
                                            <?php 
                                if(isset($_GET['purchase_edit']))
                                  {
                                    $fetch_item=mysqli_fetch_array(mysqli_query($con,"select * from tbl_product where product_id='".$res_purchase['item_id']."'"));

                                    ?>
<option value="<?=$fetch_item['product_id'];?>" selected><?=$fetch_item['product_name'];?></option>

                                    <?php
                                  }
                                  ?>
                                            <option value="">Select Item</option>
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
                                         </td>  
                                    <?php
                                  }
                                  else
                                  {
                                    ?>
 <td>
                                        
                                           <select name="item_id[]" class="form-control">
                                            <?php 
                                if(isset($_GET['purchase_edit']))
                                  {
                                    $fetch_item=mysqli_fetch_array(mysqli_query($con,"select * from tbl_product where product_id='".$res_purchase['item_id']."'"));

                                    ?>
<option value="<?=$fetch_item['product_id'];?>" selected><?=$fetch_item['product_name'];?></option>

                                    <?php
                                  }
                                  ?>
                                            <option value="">Select Item</option>
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
                                         </td>  
                                    <?php
                                  }
                                  ?>
                                        
                                          <?php 
                                if(isset($_GET['purchase_edit']))
                                  {
                                    ?>
   <td><input type="text" name="qty" id="qty"  placeholder="Enter Qty." class="form-control name_list" value="<?=$res_purchase['qty'];?>" /></td>  
                                    <?php
                                  }
                                  else
                                  {
                                    ?>
   <td><input type="text" name="qty[]" id="qty"  placeholder="Enter Qty." class="form-control name_list" value="" /></td>  
                                    <?php
                                  }
                                  ?>
                                      

                                          <?php 
                                if(isset($_GET['purchase_edit']))
                                  {
                                    ?>
 <td><input type="text" name="rate" id="rate" onchange="fetch_amt(this.value)" placeholder="Enter Rate" value="" class="form-control name_list" /></td> 
                                    <?php
                                  }
                                  else
                                  {
                                    ?>
 <td><input type="text" name="rate[]" id="rate" onchange="fetch_amt(this.value)" placeholder="Enter Rate" value="" class="form-control name_list" /></td> 
                                    <?php
                                  }
                                  ?>
                                           
                                <?php 
                                if(isset($_GET['purchase_edit']))
                                  {
                                    ?>
  <td><input type="text" name="amt" value="<?=$res_purchase['amount'];?>" id="amt" placeholder="Amount" class="form-control name_list" /></td>  
                                    <?php
                                  }
                                  else
                                  {
                                    ?>
  <td><input type="text" name="amt[]" value="" id="amt" placeholder="Amount" class="form-control name_list" /></td>  
                                    <?php
                                  }
                                  ?>
                                           
                                             
                                            <?php 
if(isset($_GET['purchase_edit']))
{

}
else
{
  ?>
     <td><button type="button" name="add" onclick="get_num()" id="add" class="btn btn-success">+</button></td>  
  <?php
}
                                            ?> 
                                             
                                      
                                          <input type="hidden"  id="num" value="">
                                    </tr>  
                               </table>  
                                
                          </div> 
                              </div>

                                            <?php 
if(isset($_GET['purchase_edit']))
{
  ?>
  <button type="submit" class="btn btn-primary" name="btn_update_purchase">Update</button>
  <?php
}
else
{
  ?>
      <button type="submit" class="btn btn-primary" name="btn_add_purchase">Submit</button>
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
  <script type="text/javascript">
  function get_num()
  {
    n=1;
    var n=$('#num').val();
    n++;
    $('#num').val(n); 

  }
</script>

<script type="text/javascript">
  function fetch_amt(x)
  {
    
    var n=$('#num').val();
    var qty=$('#qty'+n).val();

 $('#amt'+n).val(x*qty);  
  }
</script>
              
 <script>  
 $(document).ready(function(){  
      var i=1;  
      $('#add').click(function(){  
        var n=$('#num').val();
           i++;  
           $('#dynamic_field').append('<tr id="row'+i+'"> <td><select name="item_id[]" class="form-control"><option value="">Select Item</option><?php 
            $fetch_product=mysqli_query($con,"select * from tbl_product where status=1 order by product_name ASC");
          while($res_product=mysqli_fetch_array($fetch_product)){
                                              ?>
                                              <option value="<?=$res_product['product_id'];?>"><?=$res_product['product_name'];?></option><?php
                                             }
                                             ?>
                                           </select></td><td><input type="text" name="qty[]" placeholder="Enter Qty." id="qty'+n+'" class="form-control name_list" /></td>                                             <td><input type="text" name="rate[]" onchange="fetch_amt(this.value)" id="rate'+n+'" placeholder="Enter Rate" class="form-control name_list" /></td>                                               <td><input type="text" name="amt[]" placeholder="Amount" id="amt'+n+'" class="form-control name_list" /></td>    <td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');  
      });  
      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#row'+button_id+'').remove();  
      });  
      $('#submit').click(function(){            
           $.ajax({  
                url:"name.php",  
                method:"POST",  
                data:$('#add_name').serialize(),  
                success:function(data)  
                {  
                     alert(data);  
                     $('#add_name')[0].reset();  
                }  
           });  
      });  
 });  
 </script>

 