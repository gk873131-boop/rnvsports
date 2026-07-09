<?php include('header.php');?>
<?php
if(isset($_SESSION['customer_id']))
{
    $customer_id=$_SESSION['customer_id'];
    $fetch_data=mysqli_query($con,"select * from tbl_wishlist inner join tbl_product on tbl_wishlist.product_id=tbl_product.product_id where tbl_wishlist.user_id='$customer_id' and tbl_wishlist.status=1");

}
else
{
    ?>
    <script>
       window.location.href = 'index.php';
    </script>
<?php }
?>
        <main>

            <!-- ======slider-area-start=========================================== -->
            <div class="slider-area over-hidden">
                <div class="single-slider page-height3 d-flex align-items-center" data-background="images/bg/purchased-item-bg.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 d-flex align-items-center justify-content-center">
                                <div class="page-title mt-10 text-center">
                                    <h2 class="text-capitalize font600 mb-10">Wishlist</h2>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb justify-content-center bg-transparent">
                                        <li class=""><a class="primary-color" href="index.php">Home</a></li>/
                                        <li class="active text-capitalize" aria-current="page">Wishlist</li>
                                        </ol>
                                    </nav>
                                </div><!-- /page title -->
                            </div><!-- /col -->
                        </div><!-- /row -->
                    </div><!-- /container -->
                </div><!-- /single-slider -->
            </div>
            <!-- slider-area-end  -->

            <!-- ====== wishlist-area-start=============================================== --> 
            <div class="wishlist-area mt-100">
                <div class="container">
                    <div class="row pb-100 cart-table">
                        <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr class="text-center">
                                        <th scope="col">Price images</th>
                                        <th scope="col">Product name </th>
                                        <th scope="col">Unit price</th>
                                        <th scope="col">Add to cart</th>
                                        <th scope="col">Total</th>
                                        <th scope="col">Remove</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <?php 
                                        if(mysqli_num_rows($fetch_data)>0)
                                        {
   while($res=mysqli_fetch_array($fetch_data))
   { 
       ?>
                                    <tr class="text-center">
                                        <td>
                                            <a href="product/<?=$res['product_slug'];?>" class="cart-img d-block">
                                                <img src="adm/uploads/<?=$res['featured_image'];?>" alt="">
                                            </a>
                                        </td>
                                        <td>
                                            <a href="product/<?=$res['product_slug'];?>" class="p-name primary-color">
                                               <?=$res['product_name'];?>
                                            </a>
                                        </td>
                                        <td>
                                            <div class="cart-price">₹ <?=$res['sale_price'];?></div></td>
                                        <td>
                                            <a onclick="add_to_cart(<?=$res['product_id']?>,<?=$res['whislist_price'];?>);" class="web-btn h2-theme-border1 d-inline-block text-capitalize white rounded-0 h2-theme-color h2-theme-bg position-relative over-hidden pl-30 pr-30 ptb-17">add to cart</a>
                                        </td>
                                        <td>
                                            <div class="cart-price">₹ <?=$res['sale_price'];?></div>
                                        </td>
                                        <td>
                                            <a onclick="delete_wishlist(<?=$res['wishlist_id']?>);" class="p-remove theme-color"><span class="icon-clear"></span></a>
                                        </td>
                                    </tr>
                                    <?php }
                                        }
                                        else
                                        { ?>
                                         <td colspan="6">
                                            <div class="cart-price" style="    text-align: center;">Empty Wishlist..!</div>
                                        </td>   
                                    <?php     }
                                    ?>
                                   
                                    </tbody>
                                </table>
                            </div><!-- /col -->
                        </div><!-- /col -->
                    </div><!-- /row -->
                    <div class="bottom-line"></div>
                </div><!-- /container -->
            </div> 
            <!-- wishlist-area-end -->


        </main>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    
         <script>
function delete_wishlist(wishlist_id)
{
        $.ajax({
            
            url: "ajax/delete_wishlist.php",
            type: "POST",
            dataType:"json",
            data: {wishlist_id:wishlist_id}
        }).done(function(data){ 
             if(data==1)
             {
                 swal("Success!", "Successfully Deleted Wishlist Product", "success");
                
               setInterval('location.reload()', 4000);
             }
            
             else
             {
                 swal("Error!", "Something Went Wrong", "error");
               
             }
        })
        e.preventDefault();
    }
    </script>
    
    
    
     <script>
    function add_to_cart(product_id,price)
    {
      
       $.ajax({
        type:'POST',
        url:'ajax/add_to_cart_wishlist.php',
        data:{product_id:product_id,price:price},
        success:function(response) {
          if(response==1)
          {
              
              swal("Added Cart", "Successfully Added Cart", "success");
                setTimeout(function() {
        location.reload();
    }, 3000);
          }
          else if(response==2)
          {
            
            swal("Updated Cart", "Successfully Updated Cart", "success");
             setTimeout(function() {
        location.reload();
    }, 3000);
          }
          else
          {
              swal("Wrong", "Something Went Wrong", "error");
               setTimeout(function() {
        location.reload();
    }, 3000);
          }
        }
      }); 
    }
</script>   
 <?php include('footer.php');?>
 
 