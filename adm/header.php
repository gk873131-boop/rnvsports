<?php 
session_start();
include_once('connect.php');
if(!isset($_SESSION['is_login']))
{
    header('location:login.php');
}

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <!--<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
       
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<!--<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>-->
<!--<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/summernote/0.6.6/summernote.min.css'>-->
      <link href='css/flora.min.css' rel='stylesheet' type='text/css' />
      <!--<link href='https://cdn.jsdelivr.net/npm/froala-editor@latest/css/froala_editor.pkgd.min.css' rel='stylesheet' type='text/css' />-->
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel='stylesheet' href='css/multi.css'>
<link rel='stylesheet' href='css/multiselect.min.js'>
<link rel='stylesheet' href='css/select-2css.min.css'>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

       
       
    </head>
    
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.php">RNV Admin</a><button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button
            ><!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <!--<input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />-->
                    <div class="input-group-append">
                        <!--<button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>-->
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="setting.php">Settings</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="logout.php">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                           
                            <a class="nav-link" href="index.php"
                                ><div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard</a
                            >
                            <a class="nav-link" href="update_video.php"
                                ><div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Update Video</a
                            >
                          
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Product Category
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            >
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="add_category.php">Add Category</a><a class="nav-link" href="category_list.php">Manage Category</a>

                                     <!--<a class="nav-link" href="add_subcategory.php">Add SubCategory</a><a class="nav-link" href="subcategory_list.php">Manage SubCategory</a> -->
                                </nav>
                            </div>
                            

                             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts2" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Product
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts2" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">


                                    <a class="nav-link" href="add_product.php">Add product</a><a class="nav-link" href="product_list.php">Manage product</a>
                            </nav>
                            </div>
                            
                             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts21" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Total SKU
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts21" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">


                                    <a class="nav-link" href="product_qua.php">Add Product Quantity</a>
                            </nav>
                            </div>

                           

                           
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts3" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                 Promo Code
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts3" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="add_promo.php">Add Promo Code</a><a class="nav-link" href="promo_list.php">Manage Promo</a></nav>
                            </div>

                             <!-- <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts4" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Offer Zone
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts4" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="add_offer.php">Add Offer</a><a class="nav-link" href="offer_list.php">Manage Offer</a></nav>
                            </div> -->

                             <!--  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts5" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Location
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts5" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="add_location.php">Add Location</a><a class="nav-link" href="location_list.php">Manage Location</a></nav>
                            </div>
                            
                             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayoutspin" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Pin Servies
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayoutspin" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="add_pin.php">Add Pin</a>
                            </div> -->
                            
                            
<!-- 
                             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayoutsusr" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                               Mapping With Location
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayoutsusr" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="create_mapping.php">Create Mapping</a><a class="nav-link" href="mapping_list.php">Manage Location</a></nav>
                            </div> -->

                              <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayoutshome" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Home Banner
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayoutshome" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="add_banner.php">Add Banner</a>
<a class="nav-link" href="middle_banner.php">Add Left Banner</a>
<a class="nav-link" href="bottom_banner.php">Add Right Banner</a>
<!--<a class="nav-link" href="extra_banner.php">Extra Banner</a>-->
                                </nav>
                            </div>
                         

                              <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayoutshome1" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Blog
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayoutshome1" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="add_blog.php">Add Blog</a>
                                <a class="nav-link" href="manage_blog.php">Manage Blog</a>
                                </nav>
                            </div>
                              <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayoutshome12" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Brands
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayoutshome12" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="add_brand.php">Add Brand</a>
                                <a class="nav-link" href="manage_brand.php">Manage Brand</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayoutshome13" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                               Review
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayoutshome13" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="add_review.php">Add Review</a>
                                <a class="nav-link" href="manage_reiview.php">Manage Review</a>
                                </nav>
                            </div>
                             <!-- <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayoutshome3" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Services
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayoutshome3" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="add_service.php">Add Service</a>
                                <a class="nav-link" href="manage_service.php">Manage Service</a>
                                <a class="nav-link" href="service_request.php">Manage Service Requests</a>
                                </nav>
                            </div>-->
                         

                              <a class="nav-link" href="manage_customer.php"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Manage Customers</a
                            >
                            <a class="nav-link" href="newsletter.php"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Newsletter</a
                            >
                            
                             <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts6" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Order Management
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts6" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="success_order.php"> Order Manage</a>
                            <!--     <a class="nav-link" href="assign_pickup.php"> Assign Order to pickup</a>
                                <a class="nav-link" href="assign_pickup_list.php"> Assign Order pickup list</a> -->
                                </nav>
                            </div>

                          <!--    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts8" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                               Employee Section
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts8" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="add_employee.php">Add Employee</a><a class="nav-link" href="employee_list.php">Manage Employee</a>
                            <a class="nav-link" href="emp_auth.php">Emp Authencation</a>
                            <a class="nav-link" href="auth_list.php">Manage Authencation</a>
                           
                                </nav>
                            </div> -->
                          <!--    <a class="nav-link" href="manage_delivered.php"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Manage Delivered Items</a
                            >
 -->




 <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts7" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Report Section
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts7" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="sales_report.php">Sales Report</a>
                                <!--<a class="nav-link" href="order_report.php">Order Report</a>-->
                           <!--  <a class="nav-link" href="delivery_location_report.php">Delivery Loc Wise</a>
                            <a class="nav-link" href="item_wise.php">Item Wise</a>
                            <a class="nav-link" href="new_customer.php">New Customers</a>
                              <a class="nav-link" href="repeat_customer.php">Repeat Customers</a> -->
                                </nav>
                            </div>

 <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts70" aria-expanded="false" aria-controls="collapseLayouts"
                                ><div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Enquiry Section
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                            ></a>
                            <div class="collapse" id="collapseLayouts70" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="enquiry.php">Enquiries</a>
                                    <a class="nav-link" href="pro_enquiry.php">Product Enquiries</a>
                                <!--<a class="nav-link" href="order_report.php">Order Report</a>-->
                           <!--  <a class="nav-link" href="delivery_location_report.php">Delivery Loc Wise</a>
                            <a class="nav-link" href="item_wise.php">Item Wise</a>
                            <a class="nav-link" href="new_customer.php">New Customers</a>
                              <a class="nav-link" href="repeat_customer.php">Repeat Customers</a> -->
                                </nav>
                            </div>

                           
                      
                           



                          


                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth"
                                        >Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                                    ></a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="login.html">Login</a><a class="nav-link" href="register.html">Register</a><a class="nav-link" href="password.html">Forgot Password</a></nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError"
                                        >Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div
                                    ></a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="401.html">401 Page</a><a class="nav-link" href="404.html">404 Page</a><a class="nav-link" href="500.html">500 Page</a></nav>
                                    </div>
                                </nav>
                            </div>
                            
                    </div>
                    
                </nav>
            </div>