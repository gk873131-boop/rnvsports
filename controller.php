<?php
session_start();
include_once('adm/connect.php');

if(isset($_POST['send_message'])){
    $name=mysqli_escape_string($con,$_POST['name']);
    $email=mysqli_escape_string($con,$_POST['email']);
    // $subject=mysqli_escape_string($con,$_POST['subject']);
    $message=mysqli_escape_string($con,$_POST['message']);
    
    $insert=mysqli_query($con, "INSERT INTO tbl_enquiry(name,email,message,status)VALUES('$name','$email','$message','1')");
    if($insert){
        header("location:contact-us.php?success");
    }else {
        echo "no";
    }
}
if(isset($_POST['btn_register'])) {
     $fname=$_POST['fname']; 
     $lname=$_POST['lname']; 
     $email=$_POST['email']; 
     $orgpassword=md5($_POST['password']); 
     $password=$_POST['password']; 
    
      $check=mysqli_num_rows(mysqli_query($con,"select * from  tbl_customer where customer_email='$email' and customer_status=1"));
      if($check>0)
      {
        header("location:register.php?already=already");  
      }
      else
      {
         
    $query = mysqli_query($con, "insert into tbl_customer(customer_fname, customer_lname, customer_email,customer_password,customer_password1)values('$fname','$lname','$email','$orgpassword','$password')");
    if($query){
        header("location:register.php?register=register");
    }
    else
    {
        header("location:register.php?register_error=register_error");
    }
      
      }
}

if(isset($_POST['btn_login'])){
     $email = $_POST['email'];
     $password =md5($_POST['password']);
     $select = mysqli_query($con, "SELECT * FROM tbl_customer where customer_email='$email' and customer_password='$password' and customer_status=1");
     
     $num=mysqli_num_rows($select);
        if($num>0)
        {
            $fetch=mysqli_fetch_array($select);
         $_SESSION['customer_id']=$fetch['user_id'];
         header("location:dashboard.php");
        }
        else
        {
           header("location:login.php?login_error=login_error");
        }

}



// btn login checkout

if(isset($_POST['btn_login_checkout'])){
     $email = $_POST['email'];
     $password =md5($_POST['password']);
     $select = mysqli_query($con, "SELECT * FROM tbl_customer where customer_email='$email' and customer_password='$password' and customer_status=1");
     
     $num=mysqli_num_rows($select);
        if($num>0)
        {
            $fetch=mysqli_fetch_array($select);
         $_SESSION['customer_id']=$fetch['user_id'];
         header("location:checkout.php");
        }
        else
        {
            $_SESSION['login_error']="Invalid Username and Password..!";
           header("location:checkout.php");
        }

}

///////////////////// cart delete////////////
if(isset($_GET['cart_delete']))
{
    $cart_delete=base64_decode($_GET['cart_delete']);
    $update=mysqli_query($con,"update tbl_cart set status=0 where cart_id='$cart_delete'");
    if($update)
    {
       $_SESSION['success_delete_cart']="Successfully Deleted Cart";
      header("location:shopping-cart.php");   
    }
    else
    {
         $_SESSION['success_delete_cart_error']="Something Went Wrong";
      header("location:shopping-cart.php"); 
        
    }
}


// add order 
if(isset($_POST['place_order'])){
     $country = $_POST['country'];
     $fname =$_POST['fname'];
     $lname =$_POST['lname'];
     $client_name=$fname.' '.$lname;
     $company_name =$_POST['company_name'];
     $address =$_POST['address'];
     $apartment =$_POST['apartment'];
     $city =$_POST['city'];
     $state =$_POST['state'];
     $zip_code =$_POST['zip_code'];
     $email =$_POST['email'];
     $password =$_POST['password'];
     $mobile_no =$_POST['mobile_no'];
     
     $account =$_POST['account'];
     
     $ship_country =$_POST['ship_country'];
     $ship_fname =$_POST['ship_fname'];
     $ship_lname =$_POST['ship_lname'];
     $ship_company =$_POST['ship_company'];
     $ship_Address =$_POST['ship_Address'];
     $ship_apartment =$_POST['ship_apartment'];
     
     $ship_city =$_POST['ship_city'];
     $ship_state =$_POST['ship_state'];
     $ship_zipcode =$_POST['ship_zipcode'];
     $ship_email =$_POST['ship_email'];
     $ship_mobile =$_POST['ship_mobile'];
     $order_note =$_POST['order_note'];
     $order_no=rand("100","999999");
     $total_amount=0;
    $cookie=$_COOKIE['user'];
    
    if(isset($_SESSION['customer_id']))
    {
     $customer_id=$_SESSION['customer_id'];
    }
   
    $cart_all=mysqli_query($con,"select * from tbl_cart where product_cookie='$cookie' and status=1");
     while($all_data_test=mysqli_fetch_array($cart_all))
    {
        
        $product_qty=$all_data_test['product_qty'];
        $cart_price=$all_data_test['cart_price'];
       
        $total=$cart_price*$product_qty;
        $total_amount+=$total;
    }
    
    
    $cart=mysqli_query($con,"select * from tbl_cart where product_cookie='$cookie' and status=1");
     $total_discount=$_POST['total_discount'];
     $new_total=$total_amount-$total_discount;
      $promo_id=$_POST['promo_id'];
    $date=date("Y-m-d");
    $invoice_no=rand("100000","10000000");
    while($all_data=mysqli_fetch_array($cart))
    {
        $product_id=$all_data['product_id'];
        $product_qty=$all_data['product_qty'];
        $cart_price=$all_data['cart_price'];
         $size=$all_data['size'];
        $color=$all_data['product_color'];
     
        
     $insert=mysqli_query($con, "insert into tbl_order_management(client_name,order_no,product_id,qty,product_price,total_amt,payment_mode,address,order_status,date,mobile,email,landmark,pin,state,company_name,city,payment_status,invoice_number,ship_country,ship_fname,ship_lname,ship_company,ship_Address,ship_apartment,ship_city,ship_state,ship_zipcode,ship_email,ship_mobile,shipp_address,total_discount,promo_id,user_id,size,product_color)values('$client_name','$order_no','$product_id','$product_qty','$cart_price','$total_amount','online','$address','Success','$date','$mobile_no','$email','$apartment','$zip_code','$state','$company_name','$city','0','$invoice_no','$ship_country','$ship_fname','$ship_lname','$ship_company','$ship_Address','$ship_apartment','$ship_city','$ship_state','$ship_zipcode','$ship_email','$ship_mobile','$shipp_address','$total_discount','$promo_id','$customer_id','$size','$color')");
   
    }
     
     
        if($insert)
        {
            if($account==1)
            {
              
              $orgpassword =md5($_POST['password']);
    
               mysqli_query($con, "insert into tbl_customer(customer_fname,customer_lname,customer_email,customer_mobile,customer_password,customer_password1,customer_company,customer_address1,customer_city,customer_pincode,customer_country,customer_state)values('$fname','$lname','$email','$mobile_no','$orgpassword','$password','$company_name','$address','$city','$zip_code','$country','$state')");  
               $last_id = $con->insert_id;
            }
            
          header('location:payment.php?order_id='.base64_encode($order_no).'&amt='.base64_encode($new_total).'&cus_id='.base64_encode($last_id));
        }
        else
        {
           header("location:checkout.php");
        }

}



// update address
if(isset($_POST['update_address']))
{
    $customer_id=$_POST['customer_id'];
    $address=$_POST['address'];
    $apartment=$_POST['apartment'];
    $city=$_POST['city'];
    $state=$_POST['state'];
    $country=$_POST['country'];
    $pincode=$_POST['pincode'];
    
    $query=mysqli_query($con,"update tbl_customer set customer_address1='$address',customer_city='$city',customer_pincode='$pincode',customer_country='$country',customer_state='$state',apartment='$apartment' where user_id='$customer_id'");
    if($query)
    {
        $_SESSION['update_address']="Successfully Updated Address ..!";
        header("location:dashboard.php");
    }
    else
    {
      $_SESSION['update_address_error']="Something Went Wrong ..!";
        header("location:dashboard.php");  
    }
}


// update_profile

if(isset($_POST['update_profile']))
{
    $customer_id=$_POST['customer_id'];
    $fname=$_POST['fname'];
    $lname=$_POST['lname'];
    $email=$_POST['email'];
    $mobile=$_POST['mobile'];
    $company_name=$_POST['company_name'];
    $gender=$_POST['gender'];
    
    if($_FILES["photo"]["name"]!='')
    {
    $image=$_FILES["photo"]["name"];
    $tmp_file=$_FILES["photo"]["tmp_name"];
    move_uploaded_file($tmp_file,"adm/uploads/$image");
    }
    else
    {
     $image=$_POST['old_photo'];   
    }
   
  
    $query=mysqli_query($con,"update tbl_customer set customer_fname='$fname',customer_lname='$lname',customer_email='$email',customer_mobile='$mobile',customer_company='$company_name',gender='$gender',profile='$image' where user_id='$customer_id'");
    if($query)
    {
        $_SESSION['update_profle']="Successfully Updated Profile ..!";
        header("location:dashboard.php");
    }
    else
    {
      $_SESSION['update_profle_error']="Something Went Wrong ..!";
        header("location:dashboard.php");  
    }
}



// update_password

if(isset($_POST['update_password']))
{
    $customer_id=$_POST['customer_id'];
    $old_password=md5($_POST['old_password']);
    $new_password=md5($_POST['new_password']);
    $new_password_plain=$_POST['new_password'];
    
    $check=mysqli_num_rows(mysqli_query($con,"select * from tbl_customer where user_id='$customer_id' and customer_password='$new_password'"));
    if($check>0)
    {
     $query=mysqli_query($con,"update tbl_customer set customer_password='$new_password',customer_password1='$new_password_plain' where user_id='$customer_id'");
     if($query)
    {
        $_SESSION['update_password']="Successfully Updated Password ..!";
        header("location:dashboard.php");
    }
    else
    {
      $_SESSION['update_password_error']="Something Went Wrong ..!";
        header("location:dashboard.php");  
    }
    }
    else
    {
      $_SESSION['old_password']="Wrong Old Password ..!";
        header("location:dashboard.php");  
    }
   
  
   
    
}


// subscribe
if(isset($_POST['subscribe']))
{
    $name=$_POST['name'];
    $query=mysqli_query($con,"insert into tbl_newsletter(email)values('$name')");
    if($query)
    { ?>
     <script>
         alert("Successfully Subscribed..!");
         window.location.href="index.php";
     </script>   
    <?php }
    else
    { ?>
        <script>
         alert("Something Went Wrong..!");
         window.location.href="index.php";
     </script> 
<?php     }
}
?>