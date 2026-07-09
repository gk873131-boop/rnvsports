<?php include('header.php'); ?>
<?php 
if(isset($_SESSION['customer_id']))
{
    $customer_id=$_SESSION['customer_id'];
    $fetch_data=mysqli_fetch_array(mysqli_query($con,"select * from tbl_customer where user_id='$customer_id' and customer_status=1"));
    
    $orders=mysqli_query($con,"select * from tbl_order_management where user_id='$customer_id' group by order_no");
}
else
{ ?>
    <script>
        window.location.href = 'index.php';
    </script>
<?php } ?>

<style>

.user-dashboard {
        background: #f2f2f2;
    padding: 50px 0;
}
    .user-dashboard .tab-wrap .right-content .tab-pane>div {
    background-color: #f7f7f7;
    padding: calc(15px + (30 - 15) * ((100vw - 320px) / (1920 - 320)));
    border-radius: 5px;
}
.user-dashboard .tab-wrap .right-content .title-box3 {
    margin-bottom: calc(25px + (30 - 25) * ((100vw - 320px) / (1920 - 320)));
    gap: 15px;
}
.user-dashboard .tab-wrap .right-content .option-wrap>div {
    border-right: 1px solid #ddd;
}
.user-dashboard .tab-wrap .right-content .option-wrap>div:nth-child(-n+3) {
    border-bottom: 1px solid #ddd;
}
.user-dashboard .tab-wrap .right-content .tab-box {
    display: block;
    padding: calc(15px + (30 - 15) * ((100vw - 320px) / (1920 - 320))) calc(15px + (20 - 15) * ((100vw - 320px) / (1920 - 320)));
    text-align: center;
    height: 100%;
}
.user-dashboard .tab-wrap .right-content .tab-box img {
    width: calc(40px + (55 - 40) * ((100vw - 320px) / (1920 - 320)));
}
.user-dashboard .tab-wrap .right-content .tab-box h5 {
    font-size: calc(15px + (20 - 15) * ((100vw - 320px) / (1920 - 320)));
    font-weight: 500;
    color: #262834;
    margin-top: 10px;
    line-height: 20px;
}
.user-dashboard .tab-wrap .right-content .tab-box p {
    margin-bottom: 0;
    font-size: calc(14px + (16 - 14) * ((100vw - 320px) / (1920 - 320)));
    font-weight: normal;
    color: #767676;
    margin-top: calc(5px + (5 - 2) * ((100vw - 320px) / (1920 - 320)));
    line-height: 20px;
    letter-spacing: 0.5px;
}
.user-dashboard .tab-wrap .side-bar {
    width: 100%;
    min-width: 260px;
    padding: calc(15px + (20 - 15) * ((100vw - 320px) / (1920 - 320)));
    background-color: #f7f7f7;
    border-radius: 5px;
}
.user-dashboard .tab-wrap .side-bar .profile-box {
    text-align: left;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    gap: calc(10px + (15 - 10) * ((100vw - 320px) / (1920 - 320)));
    padding-bottom: 15px;
    border-bottom: 1px solid #ddd;
}
.user-dashboard .tab-wrap .side-bar .profile-box .img-box {
    position: relative;
    display: inline-block;
    width: calc(50px + (70 - 50) * ((100vw - 320px) / (1920 - 320)));
    height: auto;
    border-radius: 100%;
    overflow: hidden;
}
.user-dashboard .tab-wrap .side-bar .profile-box .img-box img {
    width: 100%;
    -o-object-fit: cover;
    object-fit: cover;
    -webkit-transition: all 0.5s;
    transition: all 0.5s;
}
.user-dashboard .tab-wrap .side-bar .profile-box .img-box .edit-btn {
    position: absolute;
    height: 100%;
    width: 100%;
    inset: 0;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    background-color: rgba(0,0,0,0.4);
    border-radius: 8px;
    -webkit-transform: scale(0);
    transform: scale(0);
    -webkit-transition: all 0.3s ease;
    transition: all 0.3s ease;
    border-radius: inherit;
    cursor: pointer;
}
.user-dashboard .tab-wrap .side-bar .profile-box .img-box .edit-btn svg {
    width: 18px;
    height: 18px;
    stroke: #fff;
}
.user-dashboard .tab-wrap .side-bar .profile-box .img-box .edit-btn input {
    opacity: 0;
    position: absolute;
    inset: 0;
    margin: 0 auto;
}
.user-dashboard .tab-wrap .side-bar .profile-box .user-name {
    text-align: left;
    width: calc(100% - calc(50px + (70 - 50) * ((100vw - 320px) / (1920 - 320))));
}
.nav-tabs2, .nav-tabs5 {
    border: none;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    gap: calc(6px + (8 - 6) * ((100vw - 320px) / (1920 - 320)));
    margin-top: 20px;
}
.nav-tabs .nav-link.active, .nav-tabs .nav-item.show .nav-link {
    color: #495057;
    background-color: #fff;
    border-color: #dee2e6 #dee2e6 #fff;
}
.nav-tabs2 li .nav-link, .nav-tabs5 li .nav-link {
    padding: 7px 15px;
    background-color: transparent;
    border: none;
    outline: none;
    color: #767676;
    font-weight: 500;
    font-size: calc(15px + (16 - 15) * ((100vw - 320px) / (1920 - 320)));
    line-height: 20px;
    text-align: left;
    width: 100%;
    position: relative;
    -webkit-transition: all 0.5s;
    transition: all 0.5s;
    border-radius: 5px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
}
.user-dashboard .tab-wrap .right-content .profile .custom-form .form-control {
    color: #767676;
    font-weight: 400;
        width: 100%;
}
.custom-form label {
    font-size: calc(14px + (16 - 14) * ((100vw - 320px) / (1920 - 320)));
    color: #262834;
    font-weight: 500;
    margin-bottom: 8px;
    line-height: 20px;
    margin-top: -2px;
    display: block;
}
.custom-form.form-pill input, .custom-form.form-pill .form-control {
    border-radius: 100px;
    text-align: left;
    padding: 8px 40px 8px 15px;
}
.user-dashboard .tab-wrap .right-content .address-box.checked {
    border-color: #0f8fac;
}
.user-dashboard .tab-wrap .right-content .address-box {
    background-color: #fff;
    border-color: #ddd;
}
.address-box {
    height: 100%;
    padding: calc(15px + (20 - 15) * ((100vw - 320px) / (1920 - 320)));
    border: 1px solid #f0f3f8;
    border-radius: 5px;
    -webkit-transition: all 0.5s;
    transition: all 0.5s;
}
.address-box .radio-box {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    gap: 10px;
}
.badges.badges-theme {
    background-color: #0f8fac;
    color: #fff;
    border: 1px solid #0f8fac;
}
.badges.badges-pill {
    padding: 2px calc(10px + (14 - 10) * ((100vw - 320px) / (1920 - 320)));
    border-radius: 100px;
}
.address-box .option-wrap {
    margin-left: auto;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    gap: 5px;
}
.address-box .option-wrap .edit, .address-box .option-wrap .delet {
    cursor: pointer;
}
.address-box .address-detail {
    padding: 0 30px;
    margin-top: 18px;
    margin-bottom: -3px;
}
.address-box .address-detail p {
    margin-bottom: 5px;
}
.address-box .address-detail p {
    margin-bottom: 5px;
}
.address-box .address-detail>span {
    margin-top: 15px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    gap: 8px;
}
.user-dashboard .tab-wrap .right-content .order-content .order-box {
    padding: calc(15px + (20 - 15) * ((100vw - 320px) / (1920 - 320)));
    background-color: #fff;
    border-radius: 10px;
    border: 1px solid rgba(221,221,221,0.4);
}
.user-dashboard .tab-wrap .right-content .order-content .order-header {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: start;
    -ms-flex-align: start;
    align-items: flex-start;
    gap: 10px;
}
.user-dashboard .tab-wrap .right-content .order-content .order-header span {
    width: calc(35px + (40 - 35) * ((100vw - 320px) / (1920 - 320)));
    height: calc(35px + (40 - 35) * ((100vw - 320px) / (1920 - 320)));
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    border-radius: 100%;
    position: relative;
}
.user-dashboard .tab-wrap .right-content .order-content .order-header .order-content {
    width: calc(100% - 50px);
}
.user-dashboard .tab-wrap .right-content .product-details {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: start;
    -ms-flex-align: start;
    align-items: flex-start;
    gap: 15px;
}
.user-dashboard .tab-wrap .right-content .order-content .order-header .order-content .order-status.success {
    color: #0f8fac;
}
.user-dashboard .tab-wrap .right-content .order-content .order-header .order-content p {
    margin-bottom: 0;
    color: #767676;
    font-size: 14px;
    line-height: 20px;
    font-weight: 400;
}
.user-dashboard .tab-wrap .right-content .order-content .order-info {
    padding: 20px;
    margin-top: 20px;
    background-color: #fafafa;
}
.user-dashboard .tab-wrap .right-content .order-content .order-info .rating-box {
    padding-top: calc(15px + (20 - 15) * ((100vw - 320px) / (1920 - 320)));
    margin-top: calc(15px + (20 - 15) * ((100vw - 320px) / (1920 - 320)));
    border-top: 2px solid #fff;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    gap: calc(8px + (15 - 8) * ((100vw - 320px) / (1920 - 320)));
    margin-bottom: -1px;
}
</style>



<section class="user-dashboard">
        <div class="container-lg">
          <div class="row g-3 g-xl-4 tab-wrap">
            <div class="col-lg-4 col-xl-3 sticky">
              <button class="setting-menu btn-solid btn-sm d-lg-none">Setting Menu <i class="arrow"></i></button>
              <div class="side-bar">
                <span class="back-side d-lg-none"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg></span>
                <div class="profile-box">
                  <div class="img-box">
                    <img class="img-fluid" src="images/User-Profile-PNG-Image.png" alt="user">
                    <div class="edit-btn">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                      <input class="updateimg" type="file" name="img">
                    </div>
                  </div>

                  <div class="user-name">
                    <h5><?=$fetch_data['customer_fname'];?> &nbsp;<?=$fetch_data['customer_lname'];?></h5>
                    <h6><?=$fetch_data['customer_email'];?></h6>
                  </div>
                </div>

                <ul class="nav nav-tabs nav-tabs2" id="myTab" role="tablist">
                  <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="dashboard-tab" data-bs-toggle="tab" data-bs-target="#dashboard" type="button" role="tab" aria-controls="dashboard" aria-selected="true">
                      Dashboard
                      <span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg></span>
                    </button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="orders-tab" data-bs-toggle="tab" data-bs-target="#orders" type="button" role="tab" aria-controls="orders" aria-selected="false">
                      Orders
                      <span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg></span>
                    </button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <a href="wishlist.php" class="nav-link">
                      Wishlist
                      <span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg></span>
                    </a>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="savedAddress-tab" data-bs-toggle="tab" data-bs-target="#savedAddress" type="button" role="tab" aria-controls="savedAddress" aria-selected="false">
                      Saved Address
                      <span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg></span>
                    </button>
                  </li>
               
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">
                      Profile
                      <span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg></span>
                    </button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="changes-tab" data-bs-toggle="tab" data-bs-target="#changes" type="button" role="tab" aria-controls="changes" aria-selected="false">
                      Change Password
                      <span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg></span>
                    </button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <a href="logout.php" class="nav-link">
                      Logout
                     
                    </a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="col-lg-8 col-xl-9">
                <?php 
if(isset($_SESSION['update_address']))
{ ?>
<div class="alert alert-success">
 
  <p><?=$_SESSION['update_address'];?></p>
</div>
<?php } unset($_SESSION['update_address']);
?>

<?php 
if(isset($_SESSION['update_address_error']))
{ ?>
<div class="alert alert-danger">
 
  <p><?=$_SESSION['update_address_error'];?></p>
</div>
<?php } unset($_SESSION['update_address_error']);
?>

 <?php 
if(isset($_SESSION['update_profle']))
{ ?>
<div class="alert alert-success">
 
  <p><?=$_SESSION['update_profle'];?></p>
</div>
<?php } unset($_SESSION['update_profle']);
?>

<?php 
if(isset($_SESSION['update_profle_error']))
{ ?>
<div class="alert alert-danger">
 
  <p><?=$_SESSION['update_profle_error'];?></p>
</div>
<?php } unset($_SESSION['update_profle_error']);
?>



<?php 
if(isset($_SESSION['update_password']))
{ ?>
<div class="alert alert-success">
 
  <p><?=$_SESSION['update_password'];?></p>
</div>
<?php } unset($_SESSION['update_password']);
?>

<?php 
if(isset($_SESSION['update_password_error']))
{ ?>
<div class="alert alert-danger">
 
  <p><?=$_SESSION['update_password_error'];?></p>
</div>
<?php } unset($_SESSION['update_password_error']);
?>

<?php 
if(isset($_SESSION['old_password']))
{ ?>
<div class="alert alert-danger">
 
  <p><?=$_SESSION['old_password'];?></p>
</div>
<?php } unset($_SESSION['old_password']);
?>



              <div class="right-content tab-content" id="myTabContent">
                <!-- User Dashboard Start -->
                <div class="tab-pane active" id="dashboard" role="tabpanel" aria-labelledby="dashboard-tab">
                  <div class="dashboard-tab">
                    <div class="title-box3">
                      <h3>Welcome <?=$fetch_data['customer_fname'];?> &nbsp;<?=$fetch_data['customer_lname'];?></h3>
                      <p>
                        Welcome <?=$fetch_data['customer_fname'];?> &nbsp;<?=$fetch_data['customer_lname'];?>, here you can customize your profile and also track your order also, you can access your saved address and card. if you want change setting you can
                        do it from here
                      </p>
                    </div>

                    <div class="row g-0 option-wrap">
                      <div class="col-sm-6 col-xl-4">
                        <a href="javascript:void(0)" data-class="orders" class="tab-box">
                          <img src="images/1.svg" alt="shopping bag">
                          <h5>Orders</h5>
                          <p>See order history of previous orders</p>
                        </a>
                      </div>
                      <div class="col-sm-6 col-xl-4">
                        <a href="wishlist.html" data-class="wishlist" class="tab-box">
                          <img src="images/2.svg" alt="wishlist">
                          <h5>Wishlist</h5>
                          <p>Your Wishlist expire within 24h please complete Checkout</p>
                        </a>
                      </div>
                      <div class="col-sm-6 col-xl-4">
                        <a href="javascript:void(0)" data-class="savedAddress" class="tab-box">
                          <img src="images/3s.svg" alt="address">
                          <h5>Saved Address</h5>
                          <p>You saved 3 address for delivery</p>
                        </a>
                      </div>
                      <div class="col-sm-6 col-xl-4">
                        <a href="javascript:void(0)" data-class="payment" class="tab-box">
                          <img src="images/4s.svg" alt="payment">
                          <h5>Payment</h5>
                          <p>Check your payment option there are 3 option added</p>
                        </a>
                      </div>
                      <div class="col-sm-6 col-xl-4">
                        <a href="javascript:void(0)" data-class="profile" class="tab-box">
                          <img src="images/5.svg" alt="profile">
                          <h5>Profile</h5>
                          <p>Complete your profile details there are some Information missing</p>
                        </a>
                      </div>
                      <div class="col-sm-6 col-xl-4">
                        <a href="javascript:void(0)" data-class="security" class="tab-box">
                          <img src="images/6.svg" alt="security">
                          <h5>Security</h5>
                          <p>Please don't share any one your email or password</p>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- User Dashboard End -->

                <!-- Order Tabs Start -->
                <div class="tab-pane show" id="orders" role="tabpanel" aria-labelledby="orders-tab">
                  <div class="cart-wrap order-content">
                    <div class="title-box3">
                      <h3>My Orders</h3>
                      <p><?=$fetch_data['customer_fname'];?> &nbsp;<?=$fetch_data['customer_lname'];?> thanks for placing a delivery order with Oslo! Your order should be home with you in soon</p>
                    </div>

                    <div class="order-wraper">
                       <?php 
                       while($result_order=mysqli_fetch_array($orders))
                       { ?>
                      <div class="order-box">
                        <div class="order-header">
                          <span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-box"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg></span>
                          <div class="order-content">
                            <h5 class="order-status success"><?=$result_order['order_status'];?></h5>
                            <p>Place <?=$result_order['date'];?> and Delivered on <?=$result_order['date'];?></p>
                          </div>
                        </div>

                        <?php 
                        $data=mysqli_query($con,"select * from tbl_order_management inner join tbl_product on tbl_order_management.product_id=tbl_product.product_id where tbl_order_management.order_no='".$result_order['order_no']."'");
                        while($loop_data=mysqli_fetch_array($data))
                        { ?>
                        
                        <div class="order-info">
                          <div class="product-details" data-productdetail="product-detail">
                            <a href="product/<?=$loop_data['product_slug']?>"><div class="img-box"><img src="adm/uploads/<?=$loop_data['featured_image'];?>" alt="<?=$loop_data['featured_image'];?>"></div></a>
                            <div class="product-content">
                               <a href="product/<?=$loop_data['product_slug']?>"><h5><?=$loop_data['product_name'];?></h5></a>
                              <p class="truncate-3">
                               <?=$loop_data['description'];?>
                              </p>
                              <span style="font-weight:bold;">Price : <span style="font-weight:bold;background-color:yellow;">₹<?=number_format($loop_data['product_price']);?></span></span>
                              <span style="font-weight:bold;">Order Id : <span style="font-weight:bold;background-color:yellow;"><?=$loop_data['order_no'];?></span></span>
                            </div>
                          </div>

                        </div>
                       <?php } ?>
                      </div>
                    <?php } ?>
                    </div>
                  </div>
                </div>
                <!-- Order Tabs End -->

                <!-- Order Detail Tab Start -->
                <div class="tab-pane" id="orders-details" role="tabpanel" aria-labelledby="orders-details">
                  <div class="order-detail-wrap order-content">
                    <div class="row g-3 g-md-4">
                      <div class="col-12">
                        <div class="order-summery-wrap mt-0 order-data">
                          <div class="banner-box">
                            <div class="media">
                              <div class="img">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-package"><line x1="16.5" y1="9.4" x2="7.5" y2="4.21"></line><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
                              </div>
                              <div class="media-body">
                                <h2>Order Delivered</h2>
                                <span class="font-sm">Delivered On July 15 2022</span>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <div class="col-12">
                        <div class="product-details">
                          <div class="img-box"><img src="../assets/images/fashion/product/front/4.jpg" alt="product"></div>
                          <div class="product-content">
                            <h5>Women’s long sleeve Jacket</h5>
                            <p class="truncate-3">
                              Versatile sporty slogans short sleeve quirky laid back orange lux hoodies vests pins badges. Versatile sporty slogans short sleeve quirky laid back orange lux hoodies
                              vests pins badges. Cutting edge crops stone transparent.
                            </p>
                            <span>Prize : <span>$120.00</span></span>
                            <span>Size : <span>M</span></span>
                            <span>Order Id : <span>edf125qa1d35</span></span>
                          </div>
                        </div>
                      </div>

                      <div class="col-12">
                        <div class="order-data summery-wrap">
                          <div class="order-summery-box">
                            <h5 class="cart-title">Price Details (1 Quantity)</h5>
                            <ul class="order-summery">
                              <li>
                                <span>Bag total</span>
                                <span>$220.00</span>
                              </li>

                              <li>
                                <span>Bag savings</span>
                                <span class="theme-color">-$20.00</span>
                              </li>

                              <li>
                                <span>Coupon Discount</span>
                                <a href="offer.html" class="font-danger">$120.00</a>
                              </li>

                              <li>
                                <span>Delivery</span>
                                <span>$50.00</span>
                              </li>

                              <li class="pb-0">
                                <span>Total Amount</span>
                                <span>$270.00</span>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>

                      <div class="col-12">
                        <div class="row gy-3 gy-sm-0 g-3 g-md-4">
                          <div class="col-sm-6">
                            <div class="order-data general-details">
                              <!-- Payment Method Start -->
                              <div class="payment-method mt-0">
                                <h5 class="cart-title">Payment Method</h5>
                                <div class="payment-box">
                                  <img src="../assets/icons/png/1.png" alt="card">
                                  <span class="font-sm title-color"> **** **** **** 6502</span>
                                </div>
                              </div>
                              <!-- Payment Method End -->

                              <button class="btn-solid mb-line btn-sm mt-4">Get Invoice <i class="arrow"></i></button>
                            </div>
                          </div>

                          <div class="col-sm-6">
                            <div class="order-data general-details">
                              <!-- Contact Start -->
                              <div class="payment-method mt-0">
                                <h5 class="cart-title">Contact Us</h5>

                                <div class="payment-box">
                                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-phone"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
                                  <span class="font-sm title-color">
                                    <a class="content-color fw-500" href="tel:2554-4454-5646">2554-4454-5646</a>
                                  </span>
                                </div>

                                <div class="payment-box mt-3">
                                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-phone"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
                                  <span class="font-sm title-color">
                                    <a class="content-color fw-500" href="tel:5452-2545-2154">5452-2545-2154</a>
                                  </span>
                                </div>

                                <div class="payment-box mt-3">
                                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-mail"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
                                  <span class="font-sm title-color">
                                    <a class="content-color fw-500" href="mailto:someone@example.com">someone@example.com</a>
                                  </span>
                                </div>
                              </div>
                              <!-- Contact End -->
                            </div>
                          </div>
                        </div>
                      </div>

                      <div class="col-12">
                        <div class="order-data general-details">
                          <!-- Address Section Start -->
                          <div class="address-ordered p-0">
                            <h5 class="cart-title">Order Address</h5>
                            <div class="address">
                              <h5 class="font-default title-color">Nadine Vogt <span class="badges badges-pill badges-theme">Home</span></h5>
                              <p class="font-default content-color"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg> 1418 Riverwood Drive, Suite 3245 Cottonwood, CA 96052, United States</p>
                            </div>
                          </div>
                          <!-- Address Section End -->
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Order Detail Tab End -->

                <!-- Saved Address Tabs Start -->
                <div class="tab-pane" id="savedAddress" role="tabpanel" aria-labelledby="savedAddress-tab">
                  <div class="address-tab">
                    <div class="title-box3">
                      <h3>Your Saved Address</h3>
                      <p>here is your saved address, from here you can easily add or modify your address</p>
                    </div>
  <div class="profile">
                    

                    <form action="controller.php" method="POST" class="custom-form form-pill">
                        <input type="hidden" name="customer_id" value="<?=$customer_id;?>">
                      <div class="row g-3 g-xl-4">
                        
                        
                        
                        <div class="col-12">
                          <div class="input-box">
                            <label for="address1">Address 1</label>
                            <input class="form-control" id="address1" name="address" value="<?=$fetch_data['customer_address1'];?>"  type="text" placeholder="123, Main Str.">
                          </div>
                        </div>
                        
                          <div class="col-12">
                          <div class="input-box">
                            <label for="apartment">Apartment </label>
                            <input class="form-control" id="apartment" name="apartment" type="text" value="<?=$fetch_data['apartment'];?>" placeholder="123, Main Str.">
                          </div>
                        </div>

                        <div class="col-sm-6">
                          <div class="input-box">
                            <label for="city">Town / City</label>
                            <input class="form-control" id="city" name="city" type="text" value="<?=$fetch_data['customer_city'];?>" placeholder="Town / City">
                          </div>
                        </div>

                      

                        <div class="col-sm-6">
                          <div class="input-box">
                            <label for="state">State</label>
                            <select name="state" id="state" class="form-control" style="padding: 1px 29px;">
                                 <option value="<?=$fetch_data['customer_state'];?>" selected><?=$fetch_data['customer_state'];?></option>
                              <option value="Andhra Pradesh">Andhra Pradesh</option>
                              
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Puducherry">Puducherry</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>
                             
                            </select>
                          </div>
                        </div>
                        
                          <div class="col-sm-6">
                          <div class="input-box">
                            <label for="country">Country</label>
                            <select name="country" id="country" class="form-control" style="padding: 1px 29px;overflow-y: scroll;height: 165px;" >
                                 <option value="<?=$fetch_data['customer_country'];?>" selected><?=$fetch_data['customer_country'];?></option>
                             <option value="Afghanistan">Afghanistan</option>
                <option value="Åland Islands">Åland Islands</option>
                <option value="Albania">Albania</option>
                <option value="Algeria">Algeria</option>
                <option value="American Samoa">American Samoa</option>
                <option value="Andorra">Andorra</option>
                <option value="Angola">Angola</option>
                <option value="Anguilla">Anguilla</option>
                <option value="Antarctica">Antarctica</option>
                <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                <option value="Argentina">Argentina</option>
                <option value="Armenia">Armenia</option>
                <option value="Aruba">Aruba</option>
                <option value="Australia">Australia</option>
                <option value="Austria">Austria</option>
                <option value="Azerbaijan">Azerbaijan</option>
                <option value="Bahamas">Bahamas</option>
                <option value="Bahrain">Bahrain</option>
                <option value="Bangladesh">Bangladesh</option>
                <option value="Barbados">Barbados</option>
                <option value="Belarus">Belarus</option>
                <option value="Belgium">Belgium</option>
                <option value="Belize">Belize</option>
                <option value="Benin">Benin</option>
                <option value="Bermuda">Bermuda</option>
                <option value="Bhutan">Bhutan</option>
                <option value="Bolivia">Bolivia</option>
                <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                <option value="Botswana">Botswana</option>
                <option value="Bouvet Island">Bouvet Island</option>
                <option value="Brazil">Brazil</option>
                <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
                <option value="Brunei Darussalam">Brunei Darussalam</option>
                <option value="Bulgaria">Bulgaria</option>
                <option value="Burkina Faso">Burkina Faso</option>
                <option value="Burundi">Burundi</option>
                <option value="Cambodia">Cambodia</option>
                <option value="Cameroon">Cameroon</option>
                <option value="Canada">Canada</option>
                <option value="Cape Verde">Cape Verde</option>
                <option value="Cayman Islands">Cayman Islands</option>
                <option value="Central African Republic">Central African Republic</option>
                <option value="Chad">Chad</option>
                <option value="Chile">Chile</option>
                <option value="China">China</option>
                <option value="Christmas Island">Christmas Island</option>
                <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                <option value="Colombia">Colombia</option>
                <option value="Comoros">Comoros</option>
                <option value="Congo">Congo</option>
                <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</option>
                <option value="Cook Islands">Cook Islands</option>
                <option value="Costa Rica">Costa Rica</option>
                <option value="Cote D'ivoire">Cote D'ivoire</option>
                <option value="Croatia">Croatia</option>
                <option value="Cuba">Cuba</option>
                <option value="Cyprus">Cyprus</option>
                <option value="Czech Republic">Czech Republic</option>
                <option value="Denmark">Denmark</option>
                <option value="Djibouti">Djibouti</option>
                <option value="Dominica">Dominica</option>
                <option value="Dominican Republic">Dominican Republic</option>
                <option value="Ecuador">Ecuador</option>
                <option value="Egypt">Egypt</option>
                <option value="El Salvador">El Salvador</option>
                <option value="Equatorial Guinea">Equatorial Guinea</option>
                <option value="Eritrea">Eritrea</option>
                <option value="Estonia">Estonia</option>
                <option value="Ethiopia">Ethiopia</option>
                <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                <option value="Faroe Islands">Faroe Islands</option>
                <option value="Fiji">Fiji</option>
                <option value="Finland">Finland</option>
                <option value="France">France</option>
                <option value="French Guiana">French Guiana</option>
                <option value="French Polynesia">French Polynesia</option>
                <option value="French Southern Territories">French Southern Territories</option>
                <option value="Gabon">Gabon</option>
                <option value="Gambia">Gambia</option>
                <option value="Georgia">Georgia</option>
                <option value="Germany">Germany</option>
                <option value="Ghana">Ghana</option>
                <option value="Gibraltar">Gibraltar</option>
                <option value="Greece">Greece</option>
                <option value="Greenland">Greenland</option>
                <option value="Grenada">Grenada</option>
                <option value="Guadeloupe">Guadeloupe</option>
                <option value="Guam">Guam</option>
                <option value="Guatemala">Guatemala</option>
                <option value="Guernsey">Guernsey</option>
                <option value="Guinea">Guinea</option>
                <option value="Guinea-bissau">Guinea-bissau</option>
                <option value="Guyana">Guyana</option>
                <option value="Haiti">Haiti</option>
                <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option>
                <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                <option value="Honduras">Honduras</option>
                <option value="Hong Kong">Hong Kong</option>
                <option value="Hungary">Hungary</option>
                <option value="Iceland">Iceland</option>
                <option value="India">India</option>
                <option value="Indonesia">Indonesia</option>
                <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                <option value="Iraq">Iraq</option>
                <option value="Ireland">Ireland</option>
                <option value="Isle of Man">Isle of Man</option>
                <option value="Israel">Israel</option>
                <option value="Italy">Italy</option>
                <option value="Jamaica">Jamaica</option>
                <option value="Japan">Japan</option>
                <option value="Jersey">Jersey</option>
                <option value="Jordan">Jordan</option>
                <option value="Kazakhstan">Kazakhstan</option>
                <option value="Kenya">Kenya</option>
                <option value="Kiribati">Kiribati</option>
                <option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option>
                <option value="Korea, Republic of">Korea, Republic of</option>
                <option value="Kuwait">Kuwait</option>
                <option value="Kyrgyzstan">Kyrgyzstan</option>
                <option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option>
                <option value="Latvia">Latvia</option>
                <option value="Lebanon">Lebanon</option>
                <option value="Lesotho">Lesotho</option>
                <option value="Liberia">Liberia</option>
                <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
                <option value="Liechtenstein">Liechtenstein</option>
                <option value="Lithuania">Lithuania</option>
                <option value="Luxembourg">Luxembourg</option>
                <option value="Macao">Macao</option>
                <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option>
                <option value="Madagascar">Madagascar</option>
                <option value="Malawi">Malawi</option>
                <option value="Malaysia">Malaysia</option>
                <option value="Maldives">Maldives</option>
                <option value="Mali">Mali</option>
                <option value="Malta">Malta</option>
                <option value="Marshall Islands">Marshall Islands</option>
                <option value="Martinique">Martinique</option>
                <option value="Mauritania">Mauritania</option>
                <option value="Mauritius">Mauritius</option>
                <option value="Mayotte">Mayotte</option>
                <option value="Mexico">Mexico</option>
                <option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
                <option value="Moldova, Republic of">Moldova, Republic of</option>
                <option value="Monaco">Monaco</option>
                <option value="Mongolia">Mongolia</option>
                <option value="Montenegro">Montenegro</option>
                <option value="Montserrat">Montserrat</option>
                <option value="Morocco">Morocco</option>
                <option value="Mozambique">Mozambique</option>
                <option value="Myanmar">Myanmar</option>
                <option value="Namibia">Namibia</option>
                <option value="Nauru">Nauru</option>
                <option value="Nepal">Nepal</option>
                <option value="Netherlands">Netherlands</option>
                <option value="Netherlands Antilles">Netherlands Antilles</option>
                <option value="New Caledonia">New Caledonia</option>
                <option value="New Zealand">New Zealand</option>
                <option value="Nicaragua">Nicaragua</option>
                <option value="Niger">Niger</option>
                <option value="Nigeria">Nigeria</option>
                <option value="Niue">Niue</option>
                <option value="Norfolk Island">Norfolk Island</option>
                <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                <option value="Norway">Norway</option>
                <option value="Oman">Oman</option>
                <option value="Pakistan">Pakistan</option>
                <option value="Palau">Palau</option>
                <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
                <option value="Panama">Panama</option>
                <option value="Papua New Guinea">Papua New Guinea</option>
                <option value="Paraguay">Paraguay</option>
                <option value="Peru">Peru</option>
                <option value="Philippines">Philippines</option>
                <option value="Pitcairn">Pitcairn</option>
                <option value="Poland">Poland</option>
                <option value="Portugal">Portugal</option>
                <option value="Puerto Rico">Puerto Rico</option>
                <option value="Qatar">Qatar</option>
                <option value="Reunion">Reunion</option>
                <option value="Romania">Romania</option>
                <option value="Russian Federation">Russian Federation</option>
                <option value="Rwanda">Rwanda</option>
                <option value="Saint Helena">Saint Helena</option>
                <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                <option value="Saint Lucia">Saint Lucia</option>
                <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                <option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option>
                <option value="Samoa">Samoa</option>
                <option value="San Marino">San Marino</option>
                <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                <option value="Saudi Arabia">Saudi Arabia</option>
                <option value="Senegal">Senegal</option>
                <option value="Serbia">Serbia</option>
                <option value="Seychelles">Seychelles</option>
                <option value="Sierra Leone">Sierra Leone</option>
                <option value="Singapore">Singapore</option>
                <option value="Slovakia">Slovakia</option>
                <option value="Slovenia">Slovenia</option>
                <option value="Solomon Islands">Solomon Islands</option>
                <option value="Somalia">Somalia</option>
                <option value="South Africa">South Africa</option>
                <option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option>
                <option value="Spain">Spain</option>
                <option value="Sri Lanka">Sri Lanka</option>
                <option value="Sudan">Sudan</option>
                <option value="Suriname">Suriname</option>
                <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                <option value="Swaziland">Swaziland</option>
                <option value="Sweden">Sweden</option>
                <option value="Switzerland">Switzerland</option>
                <option value="Syrian Arab Republic">Syrian Arab Republic</option>
                <option value="Taiwan">Taiwan</option>
                <option value="Tajikistan">Tajikistan</option>
                <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
                <option value="Thailand">Thailand</option>
                <option value="Timor-leste">Timor-leste</option>
                <option value="Togo">Togo</option>
                <option value="Tokelau">Tokelau</option>
                <option value="Tonga">Tonga</option>
                <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                <option value="Tunisia">Tunisia</option>
                <option value="Turkey">Turkey</option>
                <option value="Turkmenistan">Turkmenistan</option>
                <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                <option value="Tuvalu">Tuvalu</option>
                <option value="Uganda">Uganda</option>
                <option value="Ukraine">Ukraine</option>
                <option value="United Arab Emirates">United Arab Emirates</option>
                <option value="United Kingdom">United Kingdom</option>
                <option value="United States">United States</option>
                <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
                <option value="Uruguay">Uruguay</option>
                <option value="Uzbekistan">Uzbekistan</option>
                <option value="Vanuatu">Vanuatu</option>
                <option value="Venezuela">Venezuela</option>
                <option value="Viet Nam">Viet Nam</option>
                <option value="Virgin Islands, British">Virgin Islands, British</option>
                <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
                <option value="Wallis and Futuna">Wallis and Futuna</option>
                <option value="Western Sahara">Western Sahara</option>
                <option value="Yemen">Yemen</option>
                <option value="Zambia">Zambia</option>
                <option value="Zimbabwe">Zimbabwe</option>
                             
                            </select>
                          </div>
                        </div>

                        

                     

                        <div class="col-sm-6">
                          <div class="input-box">
                            <label for="pincode">Zipcode / Pincode</label>
                            <input maxlength="10" class="form-control" id="pincode" name="pincode" value="<?=$fetch_data['customer_pincode'];?>"  type="text" placeholder="Zipcode / Pincode">
                          </div>
                        </div>

                      
                      </div>

                      <div class="btn-box mt-3">
                        <button class="bt-btn theme-btn-2 ">Cancel</button>
                        <button type="submit" name="update_address" class="bt-btn bt-btn-black">Save Changes <i class="arrow"></i></button>
                      </div>
                    </form>
                  </div>
                    <!--<div class="row g-3 g-md-4">-->
                    <!--  <div class="col-md-6 col-lg-12 col-xl-6">-->
                    <!--    <div class="address-box checked">-->
                    <!--      <div class="radio-box">-->
                    <!--        <div>-->
                    <!--          <input class="radio-input" type="radio" checked="" id="radio1" name="radio1">-->
                    <!--          <label class="radio-label" for="radio1">Abigail</label>-->
                    <!--        </div>-->
                    <!--        <span class="badges badges-pill badges-theme">Home</span>-->
                    <!--        <div class="option-wrap">-->
                    <!--          <span class="edit" data-bs-toggle="modal" data-bs-target="#edditAddress"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg></span>-->
                    <!--          <span class="delet ms-0" data-bs-toggle="modal" data-bs-target="#conformation"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></span>-->
                    <!--        </div>-->
                    <!--      </div>-->
                    <!--      <div class="address-detail">-->
                    <!--        <p class="content-color font-default">3385 Happy Hollow Road Wilmington, NC 28412</p>-->
                    <!--        <p class="content-color font-default">United State,325014</p>-->
                    <!--        <span class="content-color font-default">Mobile: <span class="title-color font-default fw-500"> 423-772-0570</span></span>-->
                    <!--        <span class="content-color font-default mt-1">Delivery: <span class="title-color font-default fw-500"> 2 March</span></span>-->
                    <!--        <span class="content-color font-default mt-1">Cash on Delivery: <span class="title-color font-default fw-500"> Available</span></span>-->
                    <!--      </div>-->
                    <!--    </div>-->
                    <!--  </div>-->

                    <!--  <div class="col-md-6 col-lg-12 col-xl-6">-->
                    <!--    <div class="address-box">-->
                    <!--      <div class="radio-box">-->
                    <!--        <div>-->
                    <!--          <input class="radio-input" type="radio" id="radio3" name="radio1">-->
                    <!--          <label class="radio-label" for="radio3">Freddy J. Burns</label>-->
                    <!--        </div>-->
                    <!--        <span class="badges badges-pill badges-theme">Home</span>-->
                    <!--        <div class="option-wrap">-->
                    <!--          <span class="edit" data-bs-toggle="modal" data-bs-target="#edditAddress"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg></span>-->
                    <!--          <span class="delet ms-0" data-bs-toggle="modal" data-bs-target="#conformation"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></span>-->
                    <!--        </div>-->
                    <!--      </div>-->
                    <!--      <div class="address-detail">-->
                    <!--        <p class="content-color font-default">198 Terry Lane Orlando, FL 32809</p>-->
                    <!--        <p class="content-color font-default">Germany,254685</p>-->
                    <!--        <span class="content-color font-default">Mobile: <span class="title-color font-default fw-500"> 353-582-5870</span></span>-->

                    <!--        <span class="content-color font-default mt-1">Delivery: <span class="title-color font-default fw-500"> 4 March</span></span>-->
                    <!--        <span class="content-color font-default mt-1">Cash on Delivery: <span class="title-color font-default fw-500"> Available</span></span>-->
                    <!--      </div>-->
                    <!--    </div>-->
                    <!--  </div>-->

                    <!--  <div class="col-md-6 col-lg-12 col-xl-6">-->
                    <!--    <div class="address-box">-->
                    <!--      <div class="radio-box">-->
                    <!--        <div>-->
                    <!--          <input class="radio-input" type="radio" id="radio2" name="radio1">-->
                    <!--          <label class="radio-label" for="radio2">Nadine Vogt</label>-->
                    <!--        </div>-->
                    <!--        <span class="badges badges-pill badges-theme">Office</span>-->
                    <!--        <div class="option-wrap">-->
                    <!--          <span class="edit" data-bs-toggle="modal" data-bs-target="#edditAddress"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg></span>-->
                    <!--          <span class="delet ms-0" data-bs-toggle="modal" data-bs-target="#conformation"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></span>-->
                    <!--        </div>-->
                    <!--      </div>-->
                    <!--      <div class="address-detail">-->
                    <!--        <p class="content-color font-default">Wachaustrasse 22 8045 WEINITZEN</p>-->
                    <!--        <p class="content-color font-default">Austria,35546</p>-->
                    <!--        <span class="content-color font-default">Mobile: <span class="title-color font-default fw-500"> 454-254-3654</span></span>-->
                    <!--        <span class="content-color font-default mt-1">Delivery: <span class="title-color font-default fw-500"> 5 March</span></span>-->
                    <!--        <span class="content-color font-default mt-1">Cash on Delivery: <span class="title-color font-default fw-500">Not Available</span></span>-->
                    <!--      </div>-->
                    <!--    </div>-->
                    <!--  </div>-->

                    <!--  <div class="col-md-6 col-lg-12 col-xl-6">-->
                    <!--    <div class="address-box add-new d-flex flex-column gap-2 align-items-center justify-content-center" data-bs-toggle="modal" data-bs-target="#addNewAddress">-->
                    <!--      <span class="plus-icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg></span>-->
                    <!--      <h4 class="theme-color font-xl fw-500">Add New Address</h4>-->
                    <!--    </div>-->
                    <!--  </div>-->
                    <!--</div>-->
                  </div>
                </div>
                <!-- Saved Address Tabs End -->



<div class="tab-pane" id="changes" role="tabpanel" aria-labelledby="changes-tab">
                  <div class="profile">
                    <div class="title-box3">
                      <h3>Change Password</h3>
                    </div>

                    <form action="controller.php" method="POST" class="custom-form form-pill">
                        <input type="hidden" name="customer_id" value="<?=$customer_id;?>">
                      <div class="row g-3 g-xl-4">
                        <div class="col-sm-6">
                          <div class="input-box">
                            <label for="fullname">Old Password</label>
                            <input class="form-control" id="fullname" name="old_password" type="password">
                          </div>
                        </div>
                        <div class="col-sm-6">
                          <div class="input-box">
                            <label for="fullname">New Password</label>
                            <input class="form-control" id="fullname" name="new_password" type="password">
                          </div>
                        </div>

                      

                      <div class="btn-box mt-3">
                        <button class="bt-btn theme-btn-2 ">Cancel</button>
                        <button type="submit" name="update_password" class="bt-btn bt-btn-black">Save Changes <i class="arrow"></i></button>
                      </div>
                    </form>
                  </div>
                </div>
                </div>
                <!-- Profile Tabs Start -->
                <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                  <div class="profile">
                    <div class="title-box3">
                      <h3>Basics Information</h3>
                    </div>

                    <form action="controller.php" method="POST" class="custom-form form-pill" enctype="multipart/form-data">
                         <input type="hidden" name="customer_id" value="<?=$customer_id;?>">
                      <div class="row g-3 g-xl-4">
                        <div class="col-sm-6">
                          <div class="input-box">
                            <label for="fname">First Name</label>
                    <input class="form-control" id="fname" name="fname" type="text" value="<?=$fetch_data['customer_fname'];?>" placeholder="First Name">
                          </div>
                        </div>
                        
                         <div class="col-sm-6">
                          <div class="input-box">
                            <label for="lname">Last Name</label>
                    <input class="form-control" id="lname" name="lname" type="text" value="<?=$fetch_data['customer_lname'];?>" placeholder="Last Name">
                          </div>
                        </div>

                        <div class="col-sm-6">
                          <div class="input-box">
                            <label for="email">Email</label>
                    <input class="form-control" id="email" name="email" type="email" value="<?=$fetch_data['customer_email'];?>" placeholder="xyz@gmail.com">
                          </div>
                        </div>

                        <div class="col-sm-6">
                          <div class="input-box">
                            <label for="mobile">Mobile</label>
                        <input maxlength="10" class="form-control" id="mobile" value="<?=$fetch_data['customer_mobile'];?>" name="mobile" type="number" placeholder="122-332-1111">
                          </div>
                        </div>
                        
                         <div class="col-sm-6">
                          <div class="input-box">
                            <label for="company_name">Company Name</label>
                <input class="form-control" id="company_name" name="company_name" value="<?=$fetch_data['customer_company'];?>" type="text" placeholder="company_name">
                          </div>
                        </div>

                        <div class="col-sm-6">
                          <div class="input-box">
                            <label for="gender">Gender</label>
                            <select name="gender" id="gender" class="form-control">
                              <option selected="Male" <?php if($fetch_data['gender']=='Male') { ?>selected <?php } ?>>Male</option>
                              <option value="Female" <?php if($fetch_data['gender']=='Female') { ?>selected <?php } ?>>Female</option>
                              <option value="Other" <?php if($fetch_data['gender']=='Other') { ?>selected <?php } ?>>Other</option>
                            </select>
                          </div>
                        </div>

                     
                        <div class="col-12">
                          <div class="input-box">
                            <label for="photo">Profile Photo</label>
                            <img style="width:100px;" src="adm/uploads/<?=$fetch_data['profile'];?>">
                             <input type="hidden" name="old_photo" value="<?=$fetch_data['profile'];?>" />
                            <input class="form-control" id="photo" name="photo"  type="file" accept="image/png, image/gif, image/jpeg" />
                          </div>
                        </div>

                     
                      </div>

                      <div class="btn-box mt-3">
                        <button class="bt-btn theme-btn-2 ">Cancel</button>
                        <button type="submit" name="update_profile" class="bt-btn bt-btn-black">Save Changes <i class="arrow"></i></button>
                      </div>
                    </form>
                  </div>
                </div>
                <!-- Profile Tabs End -->

              </div>
            </div>
          </div>
        </div>
      </section>

<?php include('footer.php'); ?>