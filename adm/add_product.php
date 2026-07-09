<?php 
include_once('header.php');
if(isset($_GET['product_edit']))
{
  $product_edit=base64_decode($_GET['product_edit']);
  if(is_numeric($product_edit))
  {
      $fetch_product=mysqli_query($con,"select * from tbl_product where product_id='$product_edit' and status=1");
      $res_product=mysqli_fetch_array($fetch_product);
  }

}

$sql_category_id=mysqli_fetch_array(mysqli_query($con,"select * from tbl_category where status=1"));
// print_r($sql_category_id);
$category_id=$sql_category_id['category_id'];
?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Product</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                            <li class="breadcrumb-item active">Product</li>
                        </ol>

                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Add Product 
                            <?php
                            if(isset($_GET['product_edit']))
                                {
                            ?>
                            <a title="Add Gallery"class="btn btn-warning" href="add_gallary.php?product_id=<?=$product_edit?>" style="float: right; margin-left:10px">Add Gallery<i class="fa fa-plus"></i></a>
                            <?php } ?>
                            <a href="product_list.php" class="btn btn-warning" style="float: right;"><i class="fa fa-table"></i> Product List</a></div>
                            <div class="card-body">
                             <form action="controller.php" method="post"  enctype="multipart/form-data">

                                  <?php 
if(isset($_GET['add_product'])=='success')
{
  ?>
  <div class="alert alert-success">
  <strong>Success!</strong>Successfully Added Product.. 
</div>
  <?php
}


if(isset($_GET['wrongadd_product'])=='wrong')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Something Went Wrong..! 
</div>
  <?php
}

if(isset($_GET['all_ready'])=='all_ready')
{

  ?>
   <div class="alert alert-danger">
  <strong>Warning!</strong>Product Already Exits Same name..! 
</div>
  <?php
}



        ?>
        <input type="hidden" name="update_id" value="<?=$res_product['product_id'];?>">
                <div class="row">

                  <div class="col-md-3">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Product Name<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Product Title" required="" value="<?=@$res_product['product_name'];?>" name="product_name">
                               
                              </div>
                            </div>    
                  <div class="col-md-3">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Product Code<span style="color: red;">*</span></label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Product Code" required="" value="<?=@$res_product['product_code'];?>" name="product_code">
                               
                              </div>
                            </div>


                            
                             <div class="col-md-3">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Product Category<span style="color: red;">*</span></label>
                            <select class="form-control" name="category_id" id="type">
                              <?php 
if(isset($_GET['product_edit']))
{
  $res_cat=mysqli_fetch_array(mysqli_query($con,"select * from tbl_category where category_id='".$res_product['category_id']."'"));

  ?>
  <option value="<?=$res_cat['category_id'];?>" selected><?=$res_cat['category_name'];?></option>
  <?php
}
                              ?>
                                 <option value="">Select Category</option>
                                 <?php 
                              $fetch_category=mysqli_query($con,"select * from tbl_category where status=1");
                              while($res_category=mysqli_fetch_array($fetch_category))
                              {
                                ?>
                                    <option value="<?=$res_category['category_id'];?>"><?=$res_category['category_name'];?></option>
                                <?php

                              }
                                 ?>
                             
                               </select>
                               
                              </div>
                            </div>
                            
                             <!--  <div class="col-md-3">-->

                             <!--  <div class="form-group">-->
                             <!--   <label for="exampleInputEmail1">Product Subcategory<span style="color: red;">*</span></label>-->
                             <!--<select class="form-control js-example-tags" name="subcategory_id[]" id="type1" multiple>-->
                               <?php
// if(isset($_GET['product_edit']))
// { 
  
//  $res_sub1=mysqli_query($con,"select * from tbl_subcategory where subcategory_id='".$res_product['subcategory_id']."'");
//  while($res_sub=mysqli_fetch_array($res_sub1))
// {
?>
 <!--<option value="<?=$res_sub['subcategory_id'];?>" selected><?=$res_sub['subcategory_name'];?></option>-->
<?php
// }
  
    
// }
                              ?>
                               <?php
// $ress= mysqli_query($con,"SELECT * from tbl_subcategory WHERE status='1' order by subcategory_name asc"); 
//         while($datas=mysqli_fetch_array($ress))
//         {
        	 
        	?>
      
        <!--<option value="<?=$datas['subcategory_id'];?>"> <?=$datas['subcategory_name'];?> </option>;-->
       
     <?php   
    //  }

                               ?>
                             
                            <!--   </select>-->
                               
                            <!--  </div>-->
                            <!--</div>-->

                           <!--   <div class="col-md-3">

                              <div class="form-group">
                                <label for="exampleInputEmail1">Color<span style="color: red;">*</span></label>
                                <select class="form-control" name="color[]" multiple="">
                                <?php if (isset($_GET['product_edit'])) {?>
                                <option value="<?=$res_product['product_color']?>" selected><?php echo $res_product['product_color']?></option>
                             <?php }?>
                                  <option value="Red">Red</option>
                                  <option value="blue">blue</option>
                                  <option value="yellow">yellow</option>
                                  <option value="white">white</option>
                                  
                                </select>
                               
                              </div>
                            </div> -->
                          
                            <!--   <div class="col-md-3">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Season</label>
                                <select class="form-control" name="season">
                                   <?php 
                                   if (isset($_GET['product_edit'])) 
                                    {?>
                                    <option value="<?=$res_product['season']?>" selected><?php echo $res_product['season']?></option>
                                 <?php   }
                                   ?>
                                  <option value="Summer">Summer</option>
                                  <option value="Winter">Winter</option>
                                </select>
                               
                              </div>
                            </div> -->
                            
                             <div class="col-md-3">

                               <div class="form-group">
                                <label for="exampleInputEmail1">Select Brand<span style="color: red;">*</span></label>
                             <select class="form-control" name="brand_name" required>
                               <?php 
                                if(isset($_GET['product_edit']))
                                {  
                                  
                                  $selected_res_brand=mysqli_fetch_array(mysqli_query($con,"select * from tbl_brand where id='".$res_product['brand_id']."' and status=1"));
                                 ?>
                                  <option value="<?=$selected_res_brand['id'];?>" selected><?=$selected_res_brand['title'];?></option>
                                  <?php
                                  }
                                
                                                              ?>
                                                  <option value="">Select Brand</option>
                                                    <?php 
                                                    
                                                     $brand=mysqli_query($con,"select * from tbl_brand where status=1 order by title asc");
                                                    while($res_brand=mysqli_fetch_array($brand))
                                                    { ?>
                                                    <option value="<?=$res_brand['id'];?>" ><?=$res_brand['title'];?></option>
                                                    
                                                    <?php }
                                                    ?>
                                                             
                                                               </select>
                                                               
                                                              </div>
                            </div>

                              <div class="col-md-3">

                              <div class="form-group">
                                <label for="exampleInputEmail1">MRP<span style="color: red;">*</span></label>
                                 <input type="text" class="form-control" id="reg_price" onblur="get_dis()" aria-describedby="emailHelp" placeholder="MRP" required="" value="<?=@$res_product['regular_price'];?>" name="regular_price">
                               
                              </div>
                            </div>
                             <div class="col-md-3">

                              <div class="form-group">
                                <label for="exampleInputEmail1">Price<span style="color: red;">*</span></label>
                               <input type="text" class="form-control"  id="sale_p" required onblur="get_dis()"  placeholder="Price"  value="<?=@$res_product['sale_price'];?>" name="sale_price">
                               
                              </div>
                            </div>

                              <div class="col-md-3" style="display: none;">

                               <div class="form-group">
                                <label for="exampleInputEmail1">Discount price</label>
                               <input type="text" class="form-control" id="dis" aria-describedby="emailHelp" placeholder="Discount price" value="<?=@$res_product['discount_price'];?>"  name="discount_price">
                               
                              </div>
                            </div> 

                             

                            <!--  <div class="col-md-3">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Available Stock</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Available Stock" value="<?=@$res_product['available_stock'];?>"  name="available_stock">
                               
                              </div>
                            </div> -->



                          <!--    <div class="col-md-3">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Minimum Order Unit</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Minimum Order Unit" value="<?=@$res_product['minimum_order'];?>"  name="minimum_order">
                               
                              </div>
                            </div> -->


                             <div class="col-md-3">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Featured Image<span style="color: red;">*</span></label>
                                <?php 
if(isset($_GET['product_edit']))
{
  ?>
  <img src="uploads/<?=$res_product['featured_image'];?>" style="width:30px;">
  <input type="hidden" name="old_product_img" value="<?=$res_product['featured_image'];?>">
   <input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Supplier Address"  name="featured_image">
  <?php
}
else
{
  ?>
    <input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Supplier Address" name="featured_image" required>
  <?php
}
                                ?>
                              
                               
                              </div>
                            </div>
    

                             <div class="col-md-3">
                               <div class="form-group">
                                <label for="exampleInputEmail1">Size Chart</label>
                                <?php if (isset($_GET['product_edit'])) {?>
                                   <img style="width:40px;height:40px;" src="uploads/<?=$res_product['size_chart']?>">
                                   <input type="hidden" name="old_size_chart" value="<?=$res_product['size_chart'];?>">
                                     <input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Supplier Address"  name="size_chart">
                               <?php  }
                               else
                                {?>
                                <input type="file" name="size_chart" class="form-control">
                              <?php }?>
                              </div>
                            </div>
                            
                             <div class="col-md-3">

                              <div class="form-group">
                                 <label for="exampleInputEmail1">GST<span style="color: red;">*</span></label>
                                <select class="form-control" name="gst" required>
                                    <option value="">Select GST</option>
                                    <option <?php if($res_product['gst']=='5'){?> selected<?php } ?> value="5">5%</option>
                                    <option <?php if($res_product['gst']=='12'){?> selected<?php } ?> value="12">12%</option>
                                    <option <?php if($res_product['gst']=='18'){?> selected<?php } ?> value="18">18%</option>
                                    </select>
                               
                              </div>
                            </div>
                             <div class="col-md-3">

                              <div class="form-group">
                                <label for="exampleInputEmail1">Shipping Charges</label>
                                <input type="number" class="form-control" required placeholder="Shipping Charges"  value="<?=$res_product['shipping_price']?>" name="shipping_charges">
                               
                              </div>
                            </div>
                             <div class="col-md-3">

                              <div class="form-group">
                                <label for="exampleInputEmail1">Opening Stock<span style="color: red;">*</span></label>
                                <input type="number" class="form-control" required placeholder="Opening Stock"  value="<?=$res_product['opening_stock']?>" name="opening_stock" required>
                               
                              </div>
                            </div>
                               <div class="col-md-3">
                                <div class="form-group">
                                <label for="exampleInputEmail1" style="margin-top: 35px;">Hot Selling</label>
                                <input type="checkbox" <?php if(@$res_product['special']==1) { ?> checked <?php } ?>   name="special" value="1">
                               
                              </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                <label for="exampleInputEmail1" style="margin-top: 35px;">Featured</label>
                                <input type="checkbox" <?php if(@$res_product['featured_product']==1) { ?> checked <?php } ?>    name="featured_product" value="1">
                               
                              </div>
                            </div>
                            
                             <div class="col-md-3">
                                <div class="form-group">
                                <label for="exampleInputEmail1" style="margin-top: 35px;">Most Purchased</label>
                                <input type="checkbox" <?php if(@$res_product['new_arraival']==1) { ?> checked <?php } ?>   name="arraival1" value="1">
                               
                              </div>
                            </div>
                             <div class="col-md-3">
                                <div class="form-group">
                                <label for="exampleInputEmail1" style="margin-top: 35px;">Hand Picked</label>
                                <input type="checkbox" <?php if(@$res_product['category_list']==1) { ?> checked <?php } ?>   name="category_list" value="1">
                               
                              </div>
                            </div>
                          

                           <!--   <div class="col-md-3">
                                <div class="form-group">
                                <label for="exampleInputEmail1" style="margin-top: 35px;">Featured Product</label>
                                <input type="checkbox" <?php if(@$res_product['is_home']==1) { ?> checked <?php } ?>  id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Supplier Address"  name="featured_product" value="1">
                               
                              </div>
                            </div> -->

                           


                                <div class="col-md-12">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Short Description</label>
                               <textarea cols="30" id="editor3" name="short_description" rows="10" data-sample-short><?=@$res_product['short_description'];?></textarea>
                              </div>
                              </div>
                              
                              <div class="col-md-12">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Description</label>
                               <textarea cols="30" id="editor1" name="description" rows="10" data-sample-short><?=@$res_product['description'];?></textarea>
                              </div>
                              </div>
                              <div class="col-md-12">
                              <div class="form-group">
                                <label for="exampleInputEmail1">Material</label>
                               <textarea cols="30" id="editor2" name="specification" rows="10" data-sample-short><?=@$res_product['specification'];?></textarea>
                               
                              </div>
                              </div>
                            </div>
<?php 
if(isset($_GET['product_edit']))
{
  ?>
  <button type="submit" class="btn btn-primary" name="btn_update_product">Update</button>
  <?php
}
else
{
  ?>
    <button type="submit" class="btn btn-primary" name="btn_add_product">Submit</button>
  <?php
}
?>
                             
                            
                            </form>
                            </div>
                        </div>
                </main>


              <?php 
include_once('footer.php');
              ?>
<script>  

function get_dis()
{   
    sale_p=$('#sale_p').val();
    reg_price=$('#reg_price').val();
    if(sale_p!='' & reg_price!='')
    {
    amt=reg_price-sale_p;
    dis=100*amt/reg_price;
    dis=dis.toFixed(2)
     $('#dis').val(dis);
    }
    else
    {
        $('#dis').val();
    }
}
</script>

<script type="text/javascript">
$(document).ready(function(){

    $('#type').on("change",function () {
    
        var categoryId = $(this).find('option:selected').val();
        $.ajax({
            url: "ajax/ajaxData.php",
            type: "POST",
            data: "categoryId="+categoryId,
            success: function (response) {
                $("#type1").html(response);
            },
        });
    }); 

});
$(document).ready(function () {
  $("#type1").CreateMultiCheckBox({ width: '230px',
             defaultText : 'Select Below', height:'250px' });
});
</script>
                    </div>