<?php 
session_start();
include_once('connect.php');
//////////////////////////////////////////////////////// Login User
if(isset($_POST['btn_login']))
{
$user_id=mysqli_escape_string($con,$_POST['user_id']);
$password=md5(mysqli_escape_string($con,$_POST['password']));
$active=1;

$fetch_user=mysqli_query($con,"select * from tbl_admin where user_id='$user_id' and password='$password' and status=1");

$fetch_emp=mysqli_query($con,"select * from tbl_employee where user_id='$user_id' and password='$password' and status=1");

		if(mysqli_num_rows($fetch_user)>=1)
		{
			       $_SESSION['is_login'] = 1;
                   $_SESSION['user_id'] = $user_id;
                   header('location:index.php');
		}

		else if(mysqli_num_rows($fetch_emp)>=1)
		{
			       $_SESSION['is_login'] = 1;
                   $_SESSION['user_id'] = $user_id;
                   header('location:index.php');
				
		}
		else
		{
			header('location:login.php?action=wrong');
		}

}
/////////////////////////////////////////////////////add product category
if(isset($_POST['btn_add_category']))
{
	$category=mysqli_escape_string($con,$_POST['category_name']);
	$category_number=mysqli_escape_string($con,$_POST['number']);
	$listed_home_page=mysqli_escape_string($con,$_POST['listed_home_page']);
	$description=mysqli_escape_string($con,$_POST['description']);
	$slug=strToLower(str_replace(" ","-",str_replace(str_split('\/:.()*?"<>!=_|$%^&*#{}[],+`~@'), '', $category)));
    $slug =  preg_replace('/-+/', '-', $slug);
    $slug= trim($slug,'-');

    $img=$category.'_'.rand('100','10000').'_'.$_FILES['category_image']['name'];
    $tmp=$_FILES['category_image']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");

    $query=mysqli_query($con,"insert into tbl_category (category_name,category_image,category_slug,category_number,listed_home_page,description) values('$category','$img','$slug','$category_number','$listed_home_page','$description')");
    if($query)
    {
    	header('location:add_category.php?action=success');
    }
    else
    {
    	header('location:add_category.php?actionwrong=wrong');
    }

}
///////////////////////////////////////////////////////////// update category
if(isset($_POST['btn_update_category']))
{
	$category=mysqli_escape_string($con,$_POST['category_name']);
	$category_number=mysqli_escape_string($con,$_POST['number']);
	$listed_home_page=mysqli_escape_string($con,$_POST['listed_home_page']);
	$description=mysqli_escape_string($con,$_POST['description']);
	$slug=strToLower(str_replace(" ","-",str_replace(str_split('\/:.()*?"<>!=_|$%^&*#{}[],+`~@'), '', $category)));
    $slug =  preg_replace('/-+/', '-', $slug);
    $slug= trim($slug,'-');
    $update_id=mysqli_escape_string($con,$_POST['update_id']);
    $old_img=$_POST['old_img'];
    if($_FILES['category_image']['name']!='')
    {

    $img=$category.'_'.rand('100','10000').'_'.$_FILES['category_image']['name'];
    $tmp=$_FILES['category_image']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
	}
	else
	{
		$img=$_POST['old_img'];
	}

	if(is_numeric($update_id))
	{

		 $query=mysqli_query($con,"update tbl_category set category_name='$category',listed_home_page='$listed_home_page',category_image='$img',category_slug='$slug',category_number='$category_number',description='$description' where category_id=$update_id");
	    if($query)
	    {
	    	header('location:category_list.php?action_update_cat=success');
	    }
	    else
	    {
	    	header('location:category_list.php?updatewrongcate=wrong');
	    }
	}


}
/////////////////////////////////////////////////////////////  delete category
if(isset($_GET['category']))
{
	$category=base64_decode($_GET['category']);

	if(is_numeric($category))
	{
		$query=mysqli_query($con,"update tbl_category set status=0 where category_id=$category");
		if($query)
		{
			header('location:category_list.php?delete_cat=success');
		}
		else
		{
			header('location:category_list.php?delete_cat_wrong=wrong');
		}
	}
}

//////////////////////////////////////////////////////////////// update category


/////////////////////////////////////////////////////////////// Add supplier 
if(isset($_POST['btn_add_supplier']))
{
	$supplier_name=mysqli_escape_string($con,$_POST['supplier_name']);
	$supplier_contact=mysqli_escape_string($con,$_POST['supplier_contact']);
	$supplier_email=mysqli_escape_string($con,$_POST['supplier_email']);
	$supplier_address=mysqli_escape_string($con,$_POST['supplier_address']);
	$contact_person=mysqli_escape_string($con,$_POST['contact_person']);

	$query=mysqli_query($con,"insert into tbl_supplier (supplier_name,supplier_contact,supplier_email,supplier_address,supplier_contact_person) values('$supplier_name','$supplier_contact','$supplier_email','$supplier_address','$contact_person')");
	if($query)
	{
		header('location:add_supplier.php?add_supplier=success');
	}
	else
	{
		header('location:add_supplier.php?add_supplier_wrong=wrong');
	}
}

//////////////////////////////////////////////////////////// delete supplier
if(isset($_GET['supplier_del']))
{
	$supplier_del=base64_decode($_GET['supplier_del']);
	if(is_numeric($supplier_del))
	{
		$query=mysqli_query($con,"update tbl_supplier set status=0 where supplier_id=$supplier_del");
		if($query)
		{
			header('location:supplier_list.php?delete_supplier=success');
		}
		else
		{
		    header('location:supplier_list.php?delete_supplier_wrong=success');	
		}

	}
}

///////////////////////////////////////////////////////////////// update supplier
if(isset($_POST['btn_update_supplier']))
{
    $supplier_name=mysqli_escape_string($con,$_POST['supplier_name']);
	$supplier_contact=mysqli_escape_string($con,$_POST['supplier_contact']);
	$supplier_email=mysqli_escape_string($con,$_POST['supplier_email']);
	$supplier_address=mysqli_escape_string($con,$_POST['supplier_address']);
	$contact_person=mysqli_escape_string($con,$_POST['contact_person']);
	$update_id=$_POST['update_id'];


	$query=mysqli_query($con,"update tbl_supplier set supplier_name='$supplier_name',supplier_contact='$supplier_contact',supplier_email='$supplier_email',supplier_address='$supplier_address',supplier_contact_person='$contact_person' where supplier_id='$update_id'");

	if($query)
	{
		header('location:supplier_list.php?update_supplier=success');
	}
	else
	{
		header('location:supplier_list.php?update_supplier_supplier_wrong=wrong');
	}

}

////////////////////////////////////////////////////////////////// add subcategory
if(isset($_POST['btn_add_sub_category']))
{
	$category_id=mysqli_escape_string($con,$_POST['category_id']);
	$subcategory_name=strip_tags($_POST['subcategory_name']);
	$subcategory=strip_tags($category_id.$_POST['subcategory_name']);
	$subcategory_number=strip_tags($category_id.$_POST['number']);
	$service=$_POST['service'];
	

	$slug=strToLower(str_replace(" ","-",str_replace(str_split('\/:.()*?"<>!=_|$%^&*#{}[],+`~@'), '', $subcategory)));
    $slug =  preg_replace('/-+/', '-', $slug);
    $slug= trim($slug,'-');

	$img=$subcategory_name.'_'.rand('100','10000').'_'.$_FILES['sub_category_image']['name'];
    $tmp=$_FILES['sub_category_image']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
  

    $query=mysqli_query($con,"insert into tbl_subcategory (service,subcategory_name,category_id,slug,subcategory_image,subcategory_number) values('$service','$subcategory_name','$category_id','$slug','$img','$subcategory_number')");
    if($query)
		{
			header('location:add_subcategory.php?add_subcategory=success');
		}
		else
		{
		    header('location:add_subcategory.php?wrong_subcategory=wrong');	
		}


}


///////////////////////////////////////////////////////////////// update sub category
if(isset($_POST['btn_update_sub_category']))
{
	 $category_update=mysqli_escape_string($con,$_POST['update_subcategory']);
	 $category_id=$_POST['category_id'];
	 $subcategory_name=mysqli_escape_string($con,$_POST['subcategory_name']);
	 $subcategory=strip_tags($category_id.$_POST['subcategory_name']);
	 $subcategory_number=mysqli_escape_string($con,$_POST['number']);
	 $service=$_POST['service'];
	
	$slug=strToLower(str_replace(" ","-",str_replace(str_split('\/:.()*?"<>!=_|$%^&*#{}[],+`~@'), '', $subcategory)));
    $slug =  preg_replace('/-+/', '-', $slug);
    $slug= trim($slug,'-');
     // $sucategoryupdate_id=$_POST['sucategoryupdate_id'];
    
    if($_FILES['sub_category_image']['name']!='')
    {

	$img=$subcategory_name.'_'.rand('100','10000').'_'.$_FILES['sub_category_image']['name'];
    $tmp=$_FILES['sub_category_image']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
	}
	else
	{

		$img=$_POST['subold_img'];
	}

		
			 // echo "update tbl_subcategory set subcategory_name='$subcategory_name',category_id='$category_id',slug='$slug',subcategory_image='$img' where subcategory_id='$category_id'";

			  $query=mysqli_query($con,"UPDATE tbl_subcategory set service='$service', subcategory_name='$subcategory_name',category_id='$category_id',slug='$slug',subcategory_image='$img',subcategory_number='$subcategory_number' where subcategory_id='$category_update'");
			  
			    if($query)
					{
						header('location:subcategory_list.php?update_subcategory=success');
					}
					else
					{
					    header('location:subcategory_list.php?updatewrong_subcategory=wrong');	
					}

		


}
///////////////////////////////////////////////// Delete Sub Category 
if(isset($_GET['subcategory']))
{
    $subcategory=base64_decode($_GET['subcategory']);
		if(is_numeric($subcategory))
		{
		
		 $query=mysqli_query($con,"update tbl_subcategory set status=0 where subcategory_id=$subcategory");
	 if($query)
		{
			header('location:subcategory_list.php?del_subcategory=success');
		}
		else
		{
		    header('location:subcategory_list.php?delwrong_subcategory=wrong');	
		}

		}
}

///////////////////////////////////////////////////////// add product
if(isset($_POST['btn_add_product']))
{
	
	$featured_product=$_POST['featured_product'];
	$new_arraival=$_POST['arraival1'];
	$category_list=$_POST['category_list'];
	$special=$_POST['special'];
	$product_name=mysqli_escape_string($con,$_POST['product_name']);
	$product_code=mysqli_escape_string($con,$_POST['product_code']);

	$category_id=mysqli_escape_string($con,$_POST['category_id']);
	$regular_price=mysqli_escape_string($con,$_POST['regular_price']);
	$sale_price=mysqli_escape_string($con,$_POST['sale_price']);
	
	$description=mysqli_escape_string($con,$_POST['description']);
	$short_description=mysqli_escape_string($con,$_POST['short_description']);
	$specification=mysqli_escape_string($con,$_POST['specification']);
	$shipping_charges=mysqli_escape_string($con,$_POST['shipping_charges']);
	$gst=mysqli_escape_string($con,$_POST['gst']);
	$brand_name=mysqli_escape_string($con,$_POST['brand_name']);
	$opening_stock=mysqli_escape_string($con,$_POST['opening_stock']);
	$get_amt=round($sale_price*$gst/100);
	
   if($_FILES['size_chart']['name']!=''){
   $rand=rand('1000000','9999999');
    $img2=$rand.$_FILES['size_chart']['name'];
    $tmp2=$_FILES['size_chart']['tmp_name'];
    move_uploaded_file($tmp2,"uploads/$img2");
   }
if($_FILES['featured_image']['name']!='')
{
    
    $rand=rand('1000000','9999999');
	$img_r=$rand.$_FILES['featured_image']['name'];
	$img = str_replace(" ", "_", $img_r);
    $tmp=$_FILES['featured_image']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
}

//  if($_FILES['featured_image3']['name']!=''){
//      $rand=rand('1000000','9999999');
// 	$img4=$rand.$_FILES['featured_image3']['name'];
//     $tmp4=$_FILES['featured_image3']['tmp_name'];
//     move_uploaded_file($tmp4,"uploads/$img4");
//  }
//   foreach($_POST['subcategory_id'] as $subcat)
//   {
// $subcat=$_POST['subcategory_id'];
   
    $slug=strToLower(str_replace(" ","-",str_replace(str_split('\/:.()*?"<>!=_|$%^&*#{}[],+`~@'), '', $product_name)));
    $slug =preg_replace('/-+/', '-', $slug);
    $slug= trim($slug,'-');
    
   // $slug=$slug.$subcat;  
//   $gst=mysqli_escape_string($con, $_POST['gst']);
//   $shipping_chrages=mysqli_escape_string($con, $_POST['shipping_charges']);

// foreach($subcategory_id as $sub){
//     $slug=$slug."-".$sub; (for subcategory)

    // echo "insert into tbl_product(product_name,sale_price,featured_image,description,product_slug,size_chart,product_code,featured_product,new_arraival,regular_price,subcategory_id,category_id,specification,gst,gst_amount,shipping_price,featured_image2,featured_image3,short_description,brand_id,category_list,opening_stock,special) values('$product_name','$sale_price','$img','$description','$slug','$img2','$product_code','$featured_product','$new_arraival','$regular_price','$sub','$category_id','$specification','$gst','$get_amt','$shipping_charges','$img3','$img4','$short_description','$brand_name','$category_list','$opening_stock','$special')";
    // die();
    
    $check=mysqli_num_rows(mysqli_query($con,"select * from tbl_product where product_name='$product_name' and status=1"));
    if($check>0)
    {
     header("location:add_product.php?all_ready=all_ready");
     exit();
    }
    else
    {
    $query=mysqli_query($con,"insert into tbl_product(product_name,sale_price,featured_image,description,product_slug,size_chart,product_code,featured_product,new_arraival,regular_price,category_id,specification,gst,gst_amount,shipping_price,short_description,brand_id,category_list,opening_stock,special) values('$product_name','$sale_price','$img','$description','$slug','$img2','$product_code','$featured_product','$new_arraival','$regular_price','$category_id','$specification','$gst','$get_amt','$shipping_charges','$short_description','$brand_name','$category_list','$opening_stock','$special')");
    }
// }
    // $id=mysqli_insert_id($con);
    // $insert=mysqli_query($con,"INSERT INTO `tbl_price`(`product_id`, `age`, `price`, `price_status`) VALUES('$id','1','$sale_price','1')");
//   }
    if($query)
    {
    	header('location:add_product.php?add_product=success');
    }
    else
    {
    	header('location:add_product.php?wrongadd_product=wrong');
    // mysqli_error($con);
    }
}


////////////////////////////////////////// del product id
if(isset($_GET['product_del']))
{
	$product_del=base64_decode($_GET['product_del']);
	if(is_numeric($product_del))
	{
		$query=mysqli_query($con,"update tbl_product set status=0 where product_id=$product_del");
		if($query)
		{
		   $gallery= mysqli_query($con,"update tbl_product_gallery set status=0 where product_id=$product_del");
		   if($gallery)
		   {
		    mysqli_query($con,"update tbl_price set price_status=0 where product_id=$product_del");
		    
			header('location:product_list.php?del_product=success');
		}
		}
		else
		{
			header('location:product_list.php?wrongdel_product=wrong');
		}
	}
}
////////////////////////////////////////////////////////// update product
if(isset($_POST['btn_update_product']))
{
	$product_name=mysqli_escape_string($con,$_POST['product_name']);
	$product_code=mysqli_escape_string($con,$_POST['product_code']);
// 	$p_name=mysqli_escape_string($con,$_POST['p_name']);
	// $subcategory_id=mysqli_escape_string($con,$_POST['subcategory_id']);
	// $category_id=mysqli_escape_string($con,$_POST['category_id']);
	// $class=mysqli_escape_string($con,$_POST['class']);
	// $season=mysqli_escape_string($con,$_POST['season']);
	// $supplier=mysqli_escape_string($con,$_POST['supplier']);
	$regular_price=mysqli_escape_string($con,$_POST['regular_price']);
	$sale_price=mysqli_escape_string($con,$_POST['sale_price']);
	// $discount_price=mysqli_escape_string($con,$_POST['discount_price']);
	// $available_stock=mysqli_escape_string($con,$_POST['available_stock']);
	// $product_weight=mysqli_escape_string($con,$_POST['product_weight']);
	//$minimum_order=mysqli_escape_string($con,$_POST['minimum_order']);
	$description=mysqli_escape_string($con,$_POST['description']);
	$short_description=mysqli_escape_string($con,$_POST['short_description']);
	$specification=mysqli_escape_string($con,$_POST['specification']);
	$brand_name=mysqli_escape_string($con,$_POST['brand_name']);
	$opening_stock=mysqli_escape_string($con,$_POST['opening_stock']);

    $featured_product=$_POST['featured_product'];
	$new_arraival = $_POST['arraival1'];
	$category_list = $_POST['category_list'];
	$special = $_POST['special'];

	$update_id=$_POST['update_id'];
	
    if($_FILES['featured_image']['name']!='')
    {
	$img=$_FILES['featured_image']['name'];
    $tmp=$_FILES['featured_image']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
	}
	else
	{
		$img=mysqli_escape_string($con,$_POST['old_product_img']);
	}
	
    if($_FILES['featured_image2']['name']!='')
    {
	$img2=$_FILES['featured_image2']['name'];
    $tmp2=$_FILES['featured_image2']['tmp_name'];
    move_uploaded_file($tmp2,"uploads/$img2");
	}
	else
	{
		$img4=mysqli_escape_string($con,$_POST['old_product_img2']);
	}
	
    if($_FILES['featured_image3']['name']!='')
    {
	$img3=$_FILES['featured_image3']['name'];
    $tmp3=$_FILES['featured_image3']['tmp_name'];
    move_uploaded_file($tmp3,"uploads/$img3");
	}
	else
	{
		$img3=mysqli_escape_string($con,$_POST['old_product_img3']);
	}

	 if($_FILES['size_chart']['name']!='')
    {
	$img2=$_FILES['size_chart']['name'];
    $tmp2=$_FILES['size_chart']['tmp_name'];
    move_uploaded_file($tmp2,"uploads/$img2");
	}
	else
	{
		$img2=mysqli_escape_string($con,$_POST['old_size_chart']);
	}
	
    $slug=strToLower(str_replace(" ","-",str_replace(str_split('\/:.()*?"<>!=_|$%^&*#{}[],+`~@'), '', $product_name)));
    $slug =  preg_replace('/-+/', '-', $slug);
    $slug= trim($slug,'-');
    $slug=$slug;
    $slug=mysqli_escape_string($con,$slug);
     $select=mysqli_num_rows(mysqli_query($con, "select * from tbl_product where product_slug='$slug' and status='1'"));
    if($select>0){
        $slug=$slug."-1";
    }
    
   

    $query=mysqli_query($con,"update tbl_product set product_name='$product_name',sale_price='$sale_price',featured_image='$img',description='$description',product_slug='$slug',size_chart='$img2',product_code='$product_code',featured_product='$featured_product',new_arraival='$new_arraival',regular_price='$regular_price',specification='$specification',featured_image2='$img3',featured_image3='$img4',short_description='$short_description',brand_id='$brand_name',category_list='$category_list',opening_stock='$opening_stock',special='$special' where product_id=$update_id");
     

    if($query)
    {
    	header('location:product_list.php?update_product=success');
    }
    else
    {
    	header('location:product_list.php?wrongupdate_product=wrong');
    }
}
////////////////////////////////////////// add promo code
if(isset($_POST['btn_promo_code']))
{
	$promo_code=mysqli_escape_string($con,$_POST['promo_code']);
	$discount=mysqli_escape_string($con,$_POST['discount']);
	$expiry_date=mysqli_escape_string($con,$_POST['expiry_date']);

	$query=mysqli_query($con,"insert into tbl_promo(promo_code,discount,expiry_date) values('$promo_code','$discount','$expiry_date')");
	  if($query)
		{
			header('location:add_promo.php?add_promo=success');
		}
		else
		{
			header('location:add_promo.php?wrongpromo=wrong');
		}

}

/////////////////////////////////////////////////////// del promo code
if(isset($_GET['promo_code_del']))
{
	$promo_code_del=mysqli_escape_string($con,base64_decode($_GET['promo_code_del']));
	if(is_numeric($promo_code_del))
	{
		$query=mysqli_query($con,"update tbl_promo set status=0 where promo_id=$promo_code_del");
		if($query)
		{
			header('location:promo_list.php?del_promo=success');
		
		}
		else
		{
			header('location:promo_list.php?wrong_del_promo=wrong');
		
		}
	}

}
////////////////////////////////////////////////////////////////// Update promo code
if(isset($_POST['btn_update_promo_code']))
{
	$promo_code=mysqli_escape_string($con,$_POST['promo_code']);
	$discount=mysqli_escape_string($con,$_POST['discount']);
	$expiry_date=mysqli_escape_string($con,$_POST['expiry_date']);
	$update_promo_id=$_POST['update_promo_id'];

	$query=mysqli_query($con,"update tbl_promo set promo_code='$promo_code',discount='$discount',expiry_date='$expiry_date'  where promo_id=$update_promo_id");
	  if($query)
		{
			header('location:promo_list.php?update_promo=success');
		}
		else
		{
			header('location:promo_list.php?wrongupdatepromo=wrong');
		}

}

//////////////////////////////////////////////////// add offer 
if(isset($_POST['btn_add_offer']))
{
	$offer_type=mysqli_escape_string($con,$_POST['offer_type']);
	$first_product=$_POST['first_product'];
	
	$attachment_product=mysqli_escape_string($con,$_POST['attachment_product']);
	$discount=mysqli_escape_string($con,$_POST['discount']);
	$expiry_date=mysqli_escape_string($con,$_POST['expiry_date']);
	$today=date('Y-m-d');
	$amount=mysqli_escape_string($con,$_POST['amount']);
	$product_qty=mysqli_escape_string($con,$_POST['product_qty']);
	$after_rate=mysqli_escape_string($con,$_POST['after_rate']);

if($first_product!='')
{
	foreach ($_POST['first_product'] as $val) {
		$query=mysqli_query($con,"insert into tbl_offer (offer_type,first_product,attach_product,discount,date,expiry_date,amount,product_qty,rate_after_qty) values('$offer_type','$val','$attachment_product','$discount','$today','$expiry_date','$amount','$product_qty','$after_rate')");
	}
}
else
{
	$query=mysqli_query($con,"insert into tbl_offer (offer_type,first_product,attach_product,discount,date,expiry_date,amount,product_qty,rate_after_qty) values('$offer_type','$first_product','$attachment_product','$discount','$today','$expiry_date','$amount','$product_qty','$after_rate')");
}
	if($query)
	{
		header('location:add_offer.php?add_offer=success');
	}
	else
	{
		
		header('location:add_offer.php?wrongadd_offer=success');
	}

}

//////////////////////////////////////////////////////// delete offer
if(isset($_GET['offer_del']))
{
	$offer_del=mysqli_escape_string($con,base64_decode($_GET['offer_del']));
	if(is_numeric($offer_del))
	{
		$query=mysqli_query($con,"update tbl_offer set status=0 where offer_id=$offer_del");
		if($query)
			{
				header('location:offer_list.php?del_offer=success');
			}
			else
			{
				
				header('location:offer_list.php?wrongdel_offer=wrong');
			}
	}
}
/////////////////////////////////////////////////////////////// update offer 
if(isset($_POST['btn_update_offer']))
{
	$offer_type=mysqli_escape_string($con,$_POST['offer_type']);
	$first_product=$_POST['first_product'];
	
	$attachment_product=mysqli_escape_string($con,$_POST['attachment_product']);
	$discount=mysqli_escape_string($con,$_POST['discount']);
	$expiry_date=mysqli_escape_string($con,$_POST['expiry_date']);
	$today=date('Y-m-d');
	$amount=mysqli_escape_string($con,$_POST['amount']);
	$product_qty=mysqli_escape_string($con,$_POST['product_qty']);
	$after_rate=mysqli_escape_string($con,$_POST['after_rate']);
	$update_offer_id=$_POST['update_offer_id'];

if($first_product!='')
{
	foreach ($_POST['first_product'] as $val) {
		$query=mysqli_query($con,"update tbl_offer set offer_type='$offer_type',first_product='$val',attach_product='$attachment_product',discount='$discount',date='$today',expiry_date='$expiry_date',amount='$amount',product_qty='$product_qty',rate_after_qty='$after_rate' where offer_id=$update_offer_id");
	}
}
else
{
	$query=mysqli_query($con,"update tbl_offer set offer_type='$offer_type',first_product='$first_product',attach_product='$attachment_product',discount='$discount',date='$today',expiry_date='$expiry_date',amount='$amount',product_qty='$product_qty',rate_after_qty='$after_rate' where offer_id=$update_offer_id");
}
	if($query)
	{
		header('location:offer_list.php?update_offer=success');
	}
	else
	{
		
		header('location:offer_list.php?wrongupdate_offer=success');
	}
}
//////////////////////////////////////////////////// add location
if(isset($_POST['btn_add_location']))
{
	$location=mysqli_escape_string($con,$_POST['location']);
	$latitude=mysqli_escape_string($con,$_POST['latitude']);
	$longitude=mysqli_escape_string($con,$_POST['longitude']);

	$query=mysqli_query($con,"insert into tbl_location(location_name,latitude,longitude) values('$location','$latitude','$longitude')");
	       if($query)
			{
				header('location:add_location.php?add_location=success');
			}
			else
			{
				
				header('location:add_location.php?wrongadd_location=wrong');
			}
}

/////////////////////////////////////////////////////// delete location 
if(isset($_GET['location_del']))
{
	$location_del=mysqli_escape_string($con,base64_decode($_GET['location_del']));
	if(is_numeric($location_del))
	{
		$query=mysqli_query($con,"update tbl_location set status=0 where location_id=$location_del");
		 if($query)
			{
				header('location:location_list.php?del_location=success');
			}
			else
			{
				
				header('location:location_list.php?wrongdel_location=wrong');
			}
	}      

}
///////////////////////////////////////////////////////////////// update location 
if(isset($_POST['btn_update_location']))
{
	$location=mysqli_escape_string($con,$_POST['location']);
	$latitude=mysqli_escape_string($con,$_POST['latitude']);
	$longitude=mysqli_escape_string($con,$_POST['longitude']);
	$update_locaion_id=$_POST['update_locaion_id'];

	$query=mysqli_query($con,"update tbl_location set location_name='$location',latitude='$latitude',longitude='$longitude' where location_id=$update_locaion_id");
	       if($query)
			{
				header('location:location_list.php?update_location=success');
			}
			else
			{
				
				header('location:location_list.php?wrongupdate_location=wrong');
			}
}

////////////////////////////////////////////////////////////////// addemployee
if(isset($_POST['btn_add_employee']))
{
	$employee_name=mysqli_escape_string($con,$_POST['employee_name']);
	$employee_contact=mysqli_escape_string($con,$_POST['employee_contact']);
	$employee_main=mysqli_escape_string($con,$_POST['employee_main']);
	$user_id=mysqli_escape_string($con,$_POST['user_id']);
	$password=mysqli_escape_string($con,$_POST['password']);
	$employee_address=mysqli_escape_string($con,$_POST['employee_address']);
	$emp_type=$_POST['emp_type'];


	$query=mysqli_query($con,"insert into tbl_employee (employee_name,employee_contact,employee_email,user_id,password,employee_address,employee_type) values ('$employee_name','$employee_contact','$employee_main','$user_id','$password','$employee_address','$emp_type')");

	 		if($query)
			{
				header('location:add_employee.php?add_employee=success');
			}
			else
			{
				
				header('location:add_employee.php?wrongemployee=wrong');
			}
}

/////////////////////////////////////////////////////////// delete employee
if(isset($_GET['employee_del']))
{
	$employee_del=mysqli_escape_string($con,base64_decode($_GET['employee_del']));
	if(is_numeric($employee_del))
	{
		$query=mysqli_query($con,"update tbl_employee set status=0 where employee_id=$employee_del");

		  if($query)
			{
				header('location:employee_list.php?del_employee=success');
			}
			else
			{
				
				header('location:employee_list.php?wrongdelemployee=wrong');
			}
	}
}
///////////////////////////////////////////////// update employee
if(isset($_POST['btn_update_employee']))
{
	$employee_name=mysqli_escape_string($con,$_POST['employee_name']);
	$employee_contact=mysqli_escape_string($con,$_POST['employee_contact']);
	$employee_main=mysqli_escape_string($con,$_POST['employee_main']);
	$user_id=mysqli_escape_string($con,$_POST['user_id']);
	$password=mysqli_escape_string($con,$_POST['password']);
	$employee_address=mysqli_escape_string($con,$_POST['employee_address']);
	$update_employee_id=$_POST['update_employee_id'];
	 $emp_type=$_POST['emp_type'];


	$query=mysqli_query($con,"update tbl_employee set employee_name='$employee_name',employee_contact='$employee_contact',employee_email='$employee_main',user_id='$user_id',password='$password',employee_address='$employee_address',employee_type='$emp_type' where employee_id=$update_employee_id");

	 		if($query)
			{
				header('location:employee_list.php?update_employee=success');
			}
			else
			{
			
		
				header('location:employee_list.php?wrongeupdatemployee=wrong');
			}
}
/////////////////////////////////////////////////  change status
if(isset($_GET['emp_status']))
{
	$emp_status=$_GET['emp_status'];
	$status=$_GET['status'];
	if(is_numeric($emp_status))
	{
		$query=mysqli_query($con,"update tbl_employee set emp_status='$status' where employee_id=$emp_status");
		 if($query)
			{
				header('location:employee_list.php?status_employee=success');
			}
			else
			{
				
				header('location:employee_list.php?wrongstatusemployee=wrong');
			}
	}
}

///////////////////////////////////////////////////////// add purchase
if(isset($_POST['btn_add_purchase']))
{
	
		$supplier_id=mysqli_escape_string($con,$_POST['supplier_id']);
		$purchase_date=mysqli_escape_string($con,$_POST['purchase_date']);
		$item_id=$_POST['item_id'];
		

	$i=0;
   foreach($_POST['item_id'] as $val)
   {

   	$qty=$_POST['qty'];
   	$qty=$qty[$i];
	$rate=$_POST['rate'];
	$rate=$rate[$i];
	$amt=$_POST['amt'];
	$amt=$amt[$i];

      $query=mysqli_query($con,"insert into tbl_purchase(supplier_id,purchase_date,item_id,qty,rate,amount,user_id) values ('$supplier_id','$purchase_date','$val','$qty','$rate','$amt','".$_SESSION['user_id']."')");
      $i++;
    }

           if($query)
			{
				header('location:add_purchase.php?add_purchase=success');
			}
			else
			{
				
				header('location:add_purchase.php?wrongadd_purchase=wrong');
			}
    



}
//////////////////////////////////////////////////// del purchase
if(isset($_GET['purchase_del']))
{
	$purchase_del=mysqli_escape_string($con,base64_decode($_GET['purchase_del']));
	if(is_numeric($purchase_del))
	{
		$query=mysqli_query($con,"update tbl_purchase set status=0 where purchase_id=$purchase_del");

		  if($query)
			{
				header('location:purchase_list.php?del_purchase=success');
			}
			else
			{
				
				header('location:purchase_list.php?wrongdel_purchase=wrong');
			}
	}
}

//////////////////////////////////////////////////////////////// update purchase
if(isset($_POST['btn_update_purchase']))
{
	    $supplier_id=mysqli_escape_string($con,$_POST['supplier_id']);
		$purchase_date=mysqli_escape_string($con,$_POST['purchase_date']);
		$item_id=$_POST['item_id'];
		$update_id=$_POST['update_id'];
		

	
   	$qty=$_POST['qty'];
   
	$rate=$_POST['rate'];
	
	$amt=$_POST['amt'];


      $query=mysqli_query($con,"update  tbl_purchase set supplier_id='$supplier_id',purchase_date='$purchase_date',item_id='$item_id',qty='$qty',rate='$rate',amount='$amt',user_id='".$_SESSION['user_id']."' where purchase_id='$update_id'");
    

           if($query)
			{
				header('location:purchase_list.php?update_purchase=success');
			}
			else
			{
				
				header('location:purchase_list.php?wrongupdate_purchase=wrong');
			}
    
}

///////////////////////////////////////////////// add department
if(isset($_POST['btn_add_department']))
{
		$department_name=mysqli_escape_string($con,$_POST['department_name']);
		$printer_name=mysqli_escape_string($con,$_POST['printer_name']);

		$query=mysqli_query($con,"insert into tbl_department (department_name,printer_name) values ('$department_name','$printer_name')");
		  if($query)
			{
				header('location:add_department.php?add_department=success');
			}
			else
			{

				header('location:add_department.php?wrongadd_department=wrong');
			}

}

////////////////////////////////////////// delete department
if(isset($_GET['department_del']))
{

	$department_del=mysqli_escape_string($con,base64_decode($_GET['department_del']));
	if(is_numeric($department_del))
	{
		$query=mysqli_query($con,"update tbl_department set status=0 where department_id=$department_del");

		  if($query)
			{
				header('location:list_department.php?del_department=success');
			}
			else
			{
				
				header('location:list_department.php?wrongdel_department=wrong');
			}
	}


}
///////////////////////////////////////////////////// update department
if(isset($_POST['btn_update_department']))
{
	$department_name=mysqli_escape_string($con,$_POST['department_name']);
	$update_id=mysqli_escape_string($con,$_POST['update_id']);
	$printer_name=mysqli_escape_string($con,$_POST['printer_name']);
	if(is_numeric($update_id))
	{
		$query=mysqli_query($con,"update tbl_department set department_name='$department_name',printer_name='$printer_name' where department_id=$update_id");

		  if($query)
			{
				header('location:list_department.php?update_department=success');
			}
			else
			{
				
				header('location:list_department.php?wrongupdate_department=wrong');
			}
	}

}

///////////////////////////////////////////////////// create maaping
if(isset($_POST['btn_add_mapping']))
{
	$user_id=mysqli_escape_string($con,$_POST['user_id']);
	$location_id=$_POST['location_id'];
	foreach ($_POST['location_id'] as $val) {
		$query=mysqli_query($con,"insert into  tbl_location_map (location_id,emp_id,user_id)  values('$val','$user_id','".$_SESSION['user_id']."')");
	}

	if($query)
			{
				header('location:create_mapping.php?add_mapping=success');
			}
			else
			{
				
				header('location:create_mapping.php?wrongadd_mapping=wrong');
			}
	
}

///////////////////////////////////////////////////////////////// delete mapping 
if(isset($_GET['del_mapping']))
{
	$del_mapping=mysqli_escape_string($con,base64_decode($_GET['del_mapping']));
	if(is_numeric($del_mapping))
	{
		$query=mysqli_query($con,"update tbl_location_map set status=0 where mapping_id=$del_mapping");

		  if($query)
			{
				header('location:mapping_list.php?del_mapping=success');
			}
			else
			{
				
				header('location:mapping_list.php?wrongdel_mapping=wrong');
			}
	}
}
/////////////////////////////////////////////////////////////////////////// update mapping
if(isset($_POST['btn_update_mapping']))
{
	$user_id=mysqli_escape_string($con,$_POST['user_id']);
	$location_id=$_POST['location_id'];
	$update_mapping=$_POST['update_mapping'];
	foreach ($_POST['location_id'] as $val) {
		$query=mysqli_query($con,"update   tbl_location_map set location_id='$val',emp_id='$user_id',user_id='".$_SESSION['user_id']."' where mapping_id=$update_mapping");
	}

	if($query)
			{
				header('location:mapping_list.php?update_mapping=success');
			}
			else
			{
				
				header('location:mapping_list.php?wrongupdate_mapping=wrong');
			}
}
///////////////////////////////////////////////////////////// update order status
if(isset($_POST['update_order_status']))
{
	$user_id=$_SESSION['user_id'];
	$status_type=mysqli_escape_string($con,$_POST['status_type']);
	$remarks=mysqli_escape_string($con,$_POST['remarks']);
	$order_id=$_POST['order_id'];

   echo "update tbl_order_management set order_status='$status_type',order_remarks='$remarks',user_id='".$_SESSION['user_id']."' where order_no='$order_id'";
	$query=mysqli_query($con,"update tbl_order_management set order_status='$status_type',order_remarks='$remarks',user_id='$user_id' where order_no='$order_id'");
	

	      if($query)
			{
				header('location:success_order.php?update_order=success');
			}
			else
			{
				
				header('location:success_order.php?wrongupdate_order=wrong');
			}


}
/////////////////////////////////////////////////////// add assign  pickup
if(isset($_POST['btn_assign_pickup']))
{
	$pickupuser_id=mysqli_escape_string($con,$_POST['pickup_user_id']);
		$rideruser_id=mysqli_escape_string($con,$_POST['rider_user_id']);


	foreach ($_POST['order_id'] as $val) {


		$query=mysqli_query($con,"insert into tbl_delivery_assign (order_id,pickup_employee_id,rider_employee_id,user_id) values('$val','$pickupuser_id','$rideruser_id','".$_SESSION['user_id']."')");
		mysqli_query($con,"update tbl_order_management set assign_status='1' where order_id=$val");
	}

			if($query)
			{
				header('location:assign_pickup.php?add_pickup=success');
			}
			else
			{
			
				header('location:assign_pickup.php?wrongadd_pickup=wrong');
			}

}

////////////////////////////////////////////////////////  Delete Assign pickup
if(isset($_GET['del_assign_order']))
{
	$del_assign_order=mysqli_escape_string($con,base64_decode($_GET['del_assign_order']));
	if(is_numeric($del_assign_order))
	{
		$query=mysqli_query($con,"update tbl_delivery_assign set status=0 where delivery_assign_id =$del_assign_order");

		  if($query)
			{
				header('location:assign_pickup_list.php?del_pickup=success');
			}
			else
			{
				
				header('location:assign_pickup_list.php?wrongdel_pickupt=wrong');
			}
	}
}
////////////////////////////////////////////////////////////////// update assign pickup
if(isset($_POST['btn_update_assign']))
{
	$user_id=mysqli_escape_string($con,$_POST['user_id']);
	$update_assign_pickup=$_POST['update_assign_pickup'];



	foreach ($_POST['order_id'] as $val) {
		$query=mysqli_query($con,"update tbl_delivery_assign set order_id='$val',employee_id='$user_id',user_id='".$_SESSION['user_id']."' where delivery_assign_id ='$update_assign_pickup'");
	}

			if($query)
			{
				header('location:assign_pickup_list.php?update_pickup=success');
			}
			else
			{
				
				header('location:assign_pickup_list.php?wrongupdate_pickup=wrong');
			}

}

/////////////////////////////////////////// Add home Banner 
if(isset($_POST['btn_add_homebanner']))
{   
    $name=mysqli_escape_string($con,$_POST['name']);
	$img='Biorganic'.'_'.rand('100','10000').'_'.$_FILES['banner_img']['name'];
    $tmp=$_FILES['banner_img']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");

    $query=mysqli_query($con,"insert into  tbl_home_banner (name,image) values('$name','$img')");
    if($query)
    {
    	header('location:add_banner.php?action=success');
    }
    else
    {
    	header('location:add_banner.php?actionwrong=wrong');
    }

}

//////////////////////////////////////////////////// add middle banner
if(isset($_POST['btn_add_middlebanner']))
{
	$img='Biorganic'.'_'.rand('100','10000').'_'.$_FILES['middlebanner_img']['name'];
    $tmp=$_FILES['middlebanner_img']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");

    $query=mysqli_query($con,"insert into  tbl_left_banner (image,status) values('$img',1)");
    if($query)
    {
    	header('location:middle_banner.php?action=success');
    }
    else
    {
    	header('location:middle_banner.php?actionwrong=wrong');
    }
}

//////////////////////////////////////////////////// add bottom banner
if(isset($_POST['btn_add_bottombanner']))
{
	$img='Biorganic'.'_'.rand('100','10000').'_'.$_FILES['bottombanner_img']['name'];
    $tmp=$_FILES['bottombanner_img']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");

    $query=mysqli_query($con,"insert into  tbl_right_banner (image,status) values('$img',1)");
    if($query)
    {
    	header('location:bottom_banner.php?action=success');
    }
    else
    {
    	header('location:bottom_banner.php?actionwrong=wrong');
    }
}

///////////////////////////////////////////////// add product images
if(isset($_POST['btn_add_product_image']))
{
	$img='Biorganic'.'_'.rand('100','10000').'_'.$_FILES['product_img']['name'];
    $tmp=$_FILES['product_img']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
    $product_id=$_POST['product_id'];
    $color=$_POST['color'];
    $title=mysqli_escape_string($con, $_POST['title']);
    $caption=mysqli_escape_string($con, $_POST['caption']);
    $description=mysqli_escape_string($con, $_POST['description']);
    
   // echo "insert into  tbl_product_gallery (image,product_id)values('$img','$product_id')";
    $query=mysqli_query($con,"insert into  tbl_product_gallery (image,product_id,no,title,caption,description)values('$img','$product_id','$color','$title','$caption','$description')");
    if($query)
    {
    	header('location:add_gallary.php?action=success&product_id='.$product_id);
    }
    else
    {
        echo mysqli_error($con);
        die();
    	header('location:add_gallary.php?actionwrong=wrong&product_id='.$product_id);
    }
}

////////////////////////////////// delete product image
                    if(isset($_GET['del_banner']))
                      {
                            $id=$_GET['del_banner'];
                            $product_id=$_GET['product_id'];
                            if(is_numeric($id))

                          
                           {
                            
                             $query=mysqli_query($con,"update tbl_product_gallery set status=0 where gallery_id='$id' and product_id='$product_id'");
                             
                              if($query)
                             {
                                	header("location:add_gallary.php?action=success&del_banner=$id&product_id=$product_id");
 
                         }
                        }
                      }

///////////////////////////////////////////////// add category images
if(isset($_POST['btn_add_category_image']))
{
	$img='Biorganic'.'_'.rand('100','10000').'_'.$_FILES['category_img']['name'];
    $tmp=$_FILES['category_img']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
    $category=$_POST['category_id'];
   
    
    // echo "insert into  tbl_category_gallery (image,category_id)values('$img','$category')";
    $query=mysqli_query($con,"insert into  tbl_category_gallery (image,category_id)values('$img','$category')");
    if($query)
    {
    	header('location:add_image.php?action=success&category_id='.$category);
    }
    else
    {
        echo mysqli_error($con);
        die();
    	header('location:add_image.php?actionwrong=wrong&category_id='.$category);
    }
}
////////////////////////////////// delete category image
                    if(isset($_GET['del_cate']))
                      {
                            $id=$_GET['del_cate'];
                            $category=$_GET['category_id'];
                            if(is_numeric($id))

                          
                           {
                            
                             $query=mysqli_query($con,"update tbl_category_gallery set status=0 where gallery_id='$id' and category_id='$category'");
                             
                              if($query)
                             {
                                	header("location:add_image.php?action=success&del_cate=$id&category_id=$category");
 
                         }
                        }
                      }

                      
//////////////////////////////////////// Add pin code
if(isset($_POST['btn_add_pin']))
{
    $pin_code=$_POST['pin_code'];
    $shipping_charge=$_POST['shipping_charge'];
    $sql=mysqli_query($con,"insert into tbl_pin (pin_code,shipping_charge) values ('$pin_code','$shipping_charge')");
    if($sql)
    {
            header('location:add_pin.php?action=success');

    }
}

//////////////////////////////////////// delete pin code
if(isset($_GET['pin_del']))
{
    $pin_code=$_POST['pin_del'];
    $sql=mysqli_query($con,"update  tbl_pin set status=0  where pin_id='$pin_code')");
    if($sql)
    {
            header('location:add_pin.php?action=success');

    }
    
}
////////////////////////////////////////////////////////////// add price
if (isset($_POST['enter_age'])) {
	$product_id=$_POST['product_id'];
    $product_size=$_POST['age'];
    $product_price=$_POST['price'];
    $shipping=$_POST['shipping'];
    $regular_price=$_POST['regular_price'];
    
     $sql_price=mysqli_query($con,"INSERT into tbl_price(product_id,age,price,shipping,regular_price)values('$product_id','$product_size','$product_price','$shipping','$regular_price')");

     if ($sql_price) {
     header("location:update_size.php?update_price=update_price&product_id=$product_id");
     }


}

////////////////////// update price
if(isset($_POST['btn_update_price']))
{
    $product_id=$_POST['product_id'];
    $product_size=$_POST['age'];
    $product_price=$_POST['price'];
    $price_id=$_POST['price_id'];
    $shipping=$_POST['shipping'];
    $regular_price=$_POST['regular_price'];
    
     $sql_price=mysqli_query($con,"update tbl_price set age='$product_size',price='$product_price',shipping='$shipping',regular_price='$regular_price' where price_id='$price_id'");

     if ($sql_price) {
     header("location:update_size.php?update_price=update_price&product_id=$product_id");
     }
}
////////////////////////////////// delete price

if (isset($_GET['delete'])) {
	$delete=$_GET['delete'];
	$product_id=$_GET['product_id'];
    $delete_price=mysqli_query($con,"UPDATE tbl_price set price_status=0 where price_id='$delete'");
    if ($delete_price) {
    	 header("location:update_size.php?message=message&product_id=$delete&product_id=$product_id");
    }


}


//////////////////////////////update order status

if (isset($_POST['update_status'])) {
	 $order_no=strip_tags($_POST['order_no']);
	 $order_status=strip_tags($_POST['order_status']);
	 $order_remark=strip_tags($_POST['remarks']);
      
  
	 $sql_update=mysqli_query($con,"UPDATE tbl_order_management SET order_status='$order_status',order_remarks='$order_remark' WHERE order_no='$order_no'");

	 if ($sql_update) {
	       header("location:success_order.php?update_status=update_status");
	 }
	 else
	 {
	  header("location:success_order.php?success_error=success_error");   
	 }

}

///////////////////////// add color

if (isset($_POST['add_color'])) {
	$product_id=$_POST['product_id'];
	$color=$_POST['color_name'];
	$img='Biorganic'.'_'.rand('100','10000').'_'.$_FILES['color']['name'];
    $tmp=$_FILES['color']['tmp_name'];
    move_uploaded_file($tmp,"uploads/size/$img");
// echo "INSERT INTO tbl_color(product_id,color)values('$product_id','$img')";
// die();

	$sql_color=mysqli_query($con,"INSERT INTO tbl_color(product_id,color,color_name)values('$product_id','$img','$color')");

	if ($sql_color) {
		 header("location:color.php?success='success'&product_id=$product_id");
	}
}

//////////////// delete color

if (isset($_GET['delete_color'])) {
	  $delete_color=$_GET['delete_color'];
      $product_id=$_GET['product_id'];
	 $delete_color=mysqli_query($con,"UPDATE tbl_color set status=0 where color_id='$delete_color'");
	 if ($delete_color) {
	 	   header("location:color.php?delete='delete'&product_id=$product_id");
	 }
}

// admin password change
if(isset($_POST['admin_password']))
{
    $user_id=$_SESSION['user_id'];
    $old_pass=md5(mysqli_real_escape_string($con,$_POST['old_pass']));
    $new_pass=md5(mysqli_real_escape_string($con,$_POST['new_pass']));
     
   
         
   
     $fetch_admin=mysqli_num_rows(mysqli_query($con,"SELECT * FROM tbl_admin where user_id='$user_id' and password='$old_pass'"));
     if($fetch_admin>0)
     {

         $change=mysqli_query($con,"UPDATE tbl_admin set password='$new_pass' where user_id='$user_id'");
         if($change)
         {
             header("location:setting.php?success=success");
         }
         else
         {
	echo "<script>
	
		window.location.href='setting.php?wrong=wrong';
	</script>";
         }
     } 
     else
     {
        header('location:setting.php?action=wrong');
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
      header("location:../cart.php");   
    }
    else
    {
         $_SESSION['success_delete_cart_error']="Something Went Wrong";
      header("location:../cart.php"); 
        
    }
}

// place order
if(isset($_POST['checkout']))
{
   $address_id=$_POST['address_id']; 
   $customer_id=$_POST['customer_id'];
   if(isset($_POST['customer_id']) OR isset($_POST['address_id']))
   {
   $fetch_address=mysqli_fetch_array(mysqli_query($con,"select * from tbl_address where address_id='$address_id' and customer_id='$customer_id'"));

    $pin=$fetch_address['pin'];
    $landmark=$fetch_address['landmark'];
    $state=$fetch_address['state'];
    $city=$fetch_address['city'];
    $address=$fetch_address['address'];
   
   }
   
   
   
   else
   {
     $pin=$_POST['pin'];
    $landmark=$_POST['landmark'];
    $state=$_POST['state'];
    $city=$_POST['city'];
    $address=$_POST['address'];   
   }
    $mobile=$_POST['mobile'];
     $order_no=rand("100000","1000000");
    $email=$_POST['email'];
    $name=$_POST['name'];
    $total=$_POST['total'];
    $cookie=$_COOKIE['user'];
    $shipping_charge=50;
    $date=date("Y-m-d");
    $cart2=mysqli_query($con,"select * from tbl_cart where product_cookie='$cookie' and status=1");
    while($result_Cart=mysqli_fetch_array($cart2))
    {
        $product_id=$result_Cart['product_id'];
        $product_qty=$result_Cart['product_qty'];
         $cart_price=$result_Cart['cart_price'];

    $insert=mysqli_query($con,"insert into tbl_order_management(order_no,client_id,product_id,qty,product_price,total_amt,payment_mode,address,order_status,user_id,date,mobile,email,pin,state,city,payment_status,shipping_charge)values('$order_no','$name','$product_id','$product_qty','$cart_price','$total','cod','$address','Success','$customer_id','$date','$number','$email','$pin','$state','$city','success','$shipping_charge')");
    }
    if($insert)
    {
        header("location:../success.php");
    }
    else
    {
     header("location:../error.php");   
    }
}



////////////////////////add address////////////////////

if(isset($_POST['add_address']))
{
    $type=$_POST['type'];
    $customer_id=$_POST['customer_id'];
    $address=$_POST['address'];
    $city=$_POST['city'];
    $state=$_POST['state'];
    $landmark=$_POST['landmark'];
    $pin=$_POST['pin'];
    
    $num=mysqli_num_rows(mysqli_query($con,"select * from tbl_address where type='$type' and status=1"));
    if($num>0)
    {
     
     header("location:my-account.php?v=v");   
    }
    else
    {
    $insert=mysqli_query($con,"insert into tbl_address(address,city,state,country,pincode,customer_id,type)values('$address','$city','$state','$country','$pincode','$customer_id','$type')");
    if($insert)
    {
        $_SESSION['success']="Successfully Added Address";
        header("location:my-account.php");
    }
    else
    {
      $_SESSION['success']="Successfully Added Address";
      header("location:my-account.php");  
    }
}
}



/////////////////address delete/////////////////

if(isset($_GET['address_id']))
{
    $address_id=base64_decode($_GET['address_id']);
    $update=mysqli_query($con,"update tbl_address set status=0 where address_id='$address_id'");
    if($update)
    {
       $_SESSION['success_delete']="Successfully Deleted Address";
      header("location:my-account.php");   
    }
    else
    {
         $_SESSION['success_delete_error']="Something Went Wrong";
      header("location:my-account.php"); 
        
    }
}


//////////////////update address///////////////////

if(isset($_POST['update_data']))
{
    $email=$_POST['email'];
    $username=$_POST['username'];
    $name=$_POST['name'];
    $customer_id=$_POST['customer_id'];
   
   
    $insert=mysqli_query($con,"update tbl_customer set customer_email='$email',username='$username',name='$name' where user_id='$customer_id'");
    if($insert)
    {
        $_SESSION['success_update']="Successfully Updated Data";
        header("location:my-account.php");
    }
    else
    {
      $_SESSION['success_update_error']="Something Went wrong";
      header("location:my-account.php");  
    }
}

//////////////////////////////////////////////////// add extra banner
if(isset($_POST['btn_add_extrabanner']))
{
	$img='Biorganic'.'_'.rand('100','10000').'_'.$_FILES['extrabanner_img']['name'];
    $tmp=$_FILES['extrabanner_img']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");

    $query=mysqli_query($con,"insert into  tbl_extra_banner (image,type) values('$img',1)");
    if($query)
    {
    	header('location:extra_banner.php?action=success');
    }
    else
    {
    	header('location:extra_banner.php?actionwrong=wrong');
    }
}
if(isset($_GET['delete_enquiry'])){
    $id=$_GET['delete_enquiry'];
    $update=mysqli_query($con, "update tbl_enquiry set status='0' where id='$id'");
    if($update){
        header("location:enquiry.php?delete");
    }
}
if(isset($_GET['delete_enquiry_service'])){
    $id=$_GET['delete_enquiry_service'];
    $update=mysqli_query($con, "update tbl_service_enquiry set status='0' where id='$id'");
    if($update){
        header("location:service_request.php?delete");
    }
}

/////////////////////////////////  btn_add_blog
if(isset($_POST['btn_add_blog']))

{  
    $title=mysqli_escape_string($con,$_POST['title']);
    $author_name=mysqli_escape_string($con,$_POST['author_name']);
	$slug=strToLower(str_replace(" ","-",str_replace(str_split('\/:.()*?"<>!=_|$%^&*#{}[],+`~@'), '', $title)));
    $slug =  preg_replace('/-+/', '-', $slug);
    $slug= trim($slug,'-');
    $date=date("Y-m-d");
    $short_des=mysqli_escape_string($con,$_POST['short_des']);
    $description=mysqli_escape_string($con,$_POST['description']);
    $seo_title=mysqli_escape_string($con,$_POST['seo_title']);
    $seo_description=mysqli_escape_string($con,$_POST['seo_description']);
    $img=$title.'_'.rand('100','10000').'_'.$_FILES['blog_image']['name'];
    $tmp=$_FILES['blog_image']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
    
    $query=mysqli_query($con,"INSERT into tbl_blog(blog_name,slug,author_name,blog_date,blog_image,short_des,blog_description,blog_slug,seo_title,seo_description) values('$title','$slug','$author_name','$date','$img','$short_des','$description','$slug','$seo_title','$seo_description')");
    
    if($query)
    {
    	header('location:add_blog.php?success=success');
    }
    else
    {
        echo mysqli_error($con);
        die();
    	header('location:add_blog.php?success_error=success_error');
    }

}


/////////////////////////////////////////////////  btn_update_blog
if(isset($_POST['btn_update_blog']))

{  
    $update_id=mysqli_escape_string($con,$_POST['update_id']);
    $title=mysqli_escape_string($con,$_POST['title']);
    $author_name=mysqli_escape_string($con,$_POST['author_name']);
	$slug=strToLower(str_replace(" ","-",str_replace(str_split('\/:.()*?"<>!=_|$%^&*#{}[],+`~@'), '', $title)));
    $slug =  preg_replace('/-+/', '-', $slug);
    $slug= trim($slug,'-');
    $short_des=mysqli_escape_string($con,$_POST['short_des']);
    $description=mysqli_escape_string($con,$_POST['description']);
    $seo_title=mysqli_escape_string($con,$_POST['seo_title']);
    $seo_description=mysqli_escape_string($con,$_POST['seo_description']);
    if($_FILES['blog_image']['name']!='')
    {
    $img=$title.'_'.rand('100','10000').'_'.$_FILES['blog_image']['name'];
    $tmp=$_FILES['blog_image']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
    }
    else
    {
     $img=$_POST['old_blog_image'];   
    }
    $update=mysqli_query($con,"update tbl_blog set blog_name='$title',slug='$slug',author_name='$author_name',blog_image='$img',short_des='$short_des',blog_description='$description',blog_slug='$slug',seo_title='$seo_title',seo_description='$seo_description' where blog_id='$update_id'");
   
    if($update)
    {
    	header('location:manage_blog.php?update_success=update_success');
    }
    else
    {
    	header('location:manage_blog.php?update_success_error=update_success_error');
    }

}


////////////////////////////////////////////////////////// delete blog
if(isset($_GET['blog_id']))
{
    $id=base64_decode($_GET['blog_id']);
    $delete=mysqli_query($con,"UPDATE tbl_blog set status=0 where blog_id='$id'");
    if($delete)
    {
     header('location:manage_blog.php?delete_success=delete_success');   
    }
    else
    {
      header('location:manage_blog.php?delete_success_error=delete_success_error');   
    }
}




if(isset($_POST['btn_add_service']))

{  
    $title=mysqli_escape_string($con,$_POST['title']);
    // $author_name=mysqli_escape_string($con,$_POST['author_name']);
	$slug=strToLower(str_replace(" ","-",str_replace(str_split('\/:.()*?"<>!=_|$%^&*#{}[],+`~@'), '', $title)));
    $slug =  preg_replace('/-+/', '-', $slug);
    $slug= trim($slug,'-');
    $date=date("Y-m-d");
    // $short_des=mysqli_escape_string($con,$_POST['short_des']);
    $description=mysqli_escape_string($con,$_POST['description']);
    $seo_title=mysqli_escape_string($con,$_POST['seo_title']);
    $seo_description=mysqli_escape_string($con,$_POST['seo_description']);
    $img=$title.'_'.rand('100','10000').'_'.$_FILES['blog_image']['name'];
    $tmp=$_FILES['blog_image']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
    
    $query=mysqli_query($con,"INSERT into tbl_service(title,slug,image,description,seo_title,seo_description,status) values('$title','$slug','$img','$description','$seo_title','$seo_description','1')");
    
    if($query)
    {
    	header('location:add_service.php?success=success');
    }
    else
    {
        echo mysqli_error($con);
        die();
    	header('location:add_service.php?success_error=success_error');
    }

}


if(isset($_POST['btn_update_service']))

{  
    $update_id=mysqli_escape_string($con,$_POST['update_id']);
    $title=mysqli_escape_string($con,$_POST['title']);
    // $author_name=mysqli_escape_string($con,$_POST['author_name']);
	$slug=strToLower(str_replace(" ","-",str_replace(str_split('\/:.()*?"<>!=_|$%^&*#{}[],+`~@'), '', $title)));
    $slug =  preg_replace('/-+/', '-', $slug);
    $slug= trim($slug,'-');
    // $short_des=mysqli_escape_string($con,$_POST['short_des']);
    $description=mysqli_escape_string($con,$_POST['description']);
    $seo_title=mysqli_escape_string($con,$_POST['seo_title']);
    $seo_description=mysqli_escape_string($con,$_POST['seo_description']);
    if($_FILES['blog_image']['name']!='')
    {
    $img=$title.'_'.rand('100','10000').'_'.$_FILES['blog_image']['name'];
    $tmp=$_FILES['blog_image']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
    }
    else
    {
     $img=$_POST['old_blog_image'];   
    }
    $update=mysqli_query($con,"update tbl_service set title='$title',slug='$slug', image='$img', description='$description',seo_title='$seo_title',seo_description='$seo_description' where id='$update_id'");
   
    if($update)
    {
    	header('location:manage_service.php?update_success=update_success');
    }
    else
    {
    	header('location:manage_service.php?update_success_error=update_success_error');
    }

}


if(isset($_GET['service_id']))
{
    $id=base64_decode($_GET['service_id']);
    $delete=mysqli_query($con,"UPDATE tbl_service set status=0 where id='$id'");
    if($delete)
    {
     header('location:manage_service.php?delete_success=delete_success');   
    }
    else
    {
      header('location:manage_service.php?delete_success_error=delete_success_error');   
    }
}
if(isset($_POST['btn_add_brand']))

{  
    $title=mysqli_escape_string($con,$_POST['title']);
    // $author_name=mysqli_escape_string($con,$_POST['author_name']);
	$slug=strToLower(str_replace(" ","-",str_replace(str_split('\/:.()*?"<>!=_|$%^&*#{}[],+`~@'), '', $title)));
    $slug =  preg_replace('/-+/', '-', $slug);
    $slug= trim($slug,'-');
    $date=date("Y-m-d");
    // $short_des=mysqli_escape_string($con,$_POST['short_des']);
    $description=mysqli_escape_string($con,$_POST['description']);
    $seo_title=mysqli_escape_string($con,$_POST['seo_title']);
    $seo_description=mysqli_escape_string($con,$_POST['seo_description']);
    $img=$title.'_'.rand('100','10000').'_'.$_FILES['blog_image']['name'];
    $tmp=$_FILES['blog_image']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
    
    $query=mysqli_query($con,"INSERT into tbl_brand(title,slug,image,description,seo_title,seo_description,status) values('$title','$slug','$img','$description','$seo_title','$seo_description','1')");
    
    if($query)
    {
    	header('location:add_brand.php?success=success');
    }
    else
    {
        echo mysqli_error($con);
        die();
    	header('location:add_brand.php?success_error=success_error');
    }

}


if(isset($_POST['btn_update_brand']))

{  
    $update_id=mysqli_escape_string($con,$_POST['update_id']);
    $title=mysqli_escape_string($con,$_POST['title']);
    // $author_name=mysqli_escape_string($con,$_POST['author_name']);
	$slug=strToLower(str_replace(" ","-",str_replace(str_split('\/:.()*?"<>!=_|$%^&*#{}[],+`~@'), '', $title)));
    $slug =  preg_replace('/-+/', '-', $slug);
    $slug= trim($slug,'-');
    // $short_des=mysqli_escape_string($con,$_POST['short_des']);
    $description=mysqli_escape_string($con,$_POST['description']);
    $seo_title=mysqli_escape_string($con,$_POST['seo_title']);
    $seo_description=mysqli_escape_string($con,$_POST['seo_description']);
    if($_FILES['blog_image']['name']!='')
    {
    $img=$title.'_'.rand('100','10000').'_'.$_FILES['blog_image']['name'];
    $tmp=$_FILES['blog_image']['tmp_name'];
    move_uploaded_file($tmp,"uploads/$img");
    }
    else
    {
     $img=$_POST['old_blog_image'];   
    }
    $update=mysqli_query($con,"update tbl_brand set title='$title',slug='$slug', image='$img', description='$description',seo_title='$seo_title',seo_description='$seo_description' where id='$update_id'");
   
    if($update)
    {
    	header('location:manage_brand.php?update_success=update_success');
    }
    else
    {
    	header('location:manage_brand.php?update_success_error=update_success_error');
    }

}


if(isset($_GET['brand_id']))
{
    $id=base64_decode($_GET['brand_id']);
    $delete=mysqli_query($con,"UPDATE tbl_brand set status=0 where id='$id'");
    if($delete)
    {
     header('location:manage_brand.php?delete_success=delete_success');   
    }
    else
    {
      header('location:manage_brand.php?delete_success_error=delete_success_error');   
    }
}

if(isset($_POST['change_listing_btn'])){
    extract($_POST);
    $update=mysqli_query($con, "update tbl_category set category_number='$number' where category_id='$id'");
    if($update){
        header("location:category_list.php?change_number");
    }else{
        header("location:category_list.php?change_number_wrong");
    }
}

if(isset($_POST['add_qua_btn'])){
    extract($_POST);
    $remark=mysqli_escape_string($con, $_POST['remark']);
    $insert=mysqli_query($con, "INSERT INTO `tbl_pro_quantity`(`product_id`, `quantity`, `change_status`, `status`,remark) VALUES('$id','$quantity','add','1','$remark')");
    if($insert){
        $update=mysqli_query($con, "update tbl_product set opening_stock=opening_stock+'$quantity' where product_id='$id'");
        header("location:product_qua.php?success");
    }else{
      echo  mysqli_error($con);
        die();
        header("location:product_qua.php?wrong");
    }
}
if(isset($_POST['less_qua_btn'])){
    extract($_POST);
    $remark=mysqli_escape_string($con, $_POST['remark']);
    $insert=mysqli_query($con, "INSERT INTO `tbl_pro_quantity`(`product_id`, `quantity`, `change_status`, `status`,remark) VALUES('$id','$quantity','less','1','$remark')");
    if($insert){
        $update=mysqli_query($con, "update tbl_product set opening_stock=opening_stock-'$quantity' where product_id='$id'");
        header("location:product_qua.php?success");
    }else{
        header("location:product_qua.php?wrong");
    }
}

///////////////////////////////////////////////////ADD REVIEW

if(isset($_POST['rev_add'])){
    $title=mysqli_escape_string($con,$_POST['name']);
    $des=mysqli_escape_string($con,$_POST['description']);
    $date=date('d-m-y h:i:s');
 $img=$title.'_'.rand('100','100000000').'_'.$_FILES['profile_pic']['name'];
    $tmp=$_FILES['profile_pic']['tmp_name'];
    move_uploaded_file($tmp,"uploads/review/$img");
    $query = mysqli_query($con, "INSERT INTO tbl_adm_review(`review_id`, `name`, `image`, `description`, `status`, `created_at`)VALUES('', '$title', '$img', '$des', '1', '$date')");
    if($query){
        header('location:add_review.php?add_rev=success');
    }
    else{
        header('location:add_review.php?wrongrev=wrong');
    }
}

if(isset($_POST['rev_update'])){
    $id=base64_decode($_POST['id']);
    $title=mysqli_escape_string($con,$_POST['name']);
    $des=mysqli_escape_string($con,$_POST['description']);
    $date=date('d-m-y h:i:s');
    
     if($_FILES['profile_pic']['name']!='')
    {
   $img=$title.'_'.rand('100','100000000').'_'.$_FILES['profile_pic']['name'];
    $tmp=$_FILES['profile_pic']['tmp_name'];
    move_uploaded_file($tmp,"uploads/review/$img");
    }
    else
    {
     $img=$_POST['old_image'];   
    }
    
    $query = mysqli_query($con, "UPDATE tbl_adm_review SET name='$title', image='$img',description='$des' WHERE review_id='$id'");
    if($query){
        header('location:manage_reiview.php?update_rev=success');
    }
    else{
        header('location:manage_reiview.php?wrongupdaterev=wrong');
    }
}

if(isset($_GET['review_delete_id'])){
    $id=base64_decode($_GET['review_delete_id']);
    $query = mysqli_query($con, "UPDATE tbl_adm_review SET status='0' WHERE review_id='$id'");
    if($query){
        header('location:manage_reiview.php?del_rev=success');
    }
    else{
        header('location:manage_reiview.php?wrong_del_rev=wrong');
    }
}

if(isset($_POST['btn_update_video'])){
    $video1=mysqli_escape_string($con, $_POST['video1']);
    $video2=mysqli_escape_string($con, $_POST['video2']);
    $update=mysqli_query($con, "UPDATE `tbl_video` SET `video1`='$video1',`video2`='$video2'");
    if($update){
        header("location:update_video.php?success");
    }
    
}

?>