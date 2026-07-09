<?php include('header.php');
if(isset($_GET['blog']))
{
$slug=$_GET['blog'];
$get=mysqli_fetch_array(mysqli_query($con, "select * from tbl_blog where slug='$slug' and status=1"));
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
                                    <h2 class="text-capitalize font600 mb-10"><?php echo $get['blog_name'];?></h2>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb justify-content-center bg-transparent">
                                        <li class=""><a class="primary-color" href="index.php">Home</a></li>/
                                        <li class=" active text-capitalize" aria-current="page"><?php echo $get['blog_name'];?></li>
                                        </ol>
                                    </nav>
                                </div><!-- /page title -->
                            </div><!-- /col -->
                        </div><!-- /row -->
                    </div><!-- /container -->
                </div><!-- /single-slider -->
            </div>
            <!-- slider-area-end=  -->

       
            <!-- ====== product-area-start================================ -->
            <div class="blog-details-area mt-100 mb-100">
                <div class="container">
                        <div class="product-wrapper">
                            <div class="row">
                                <div class="col-xl-9  col-lg-9  col-md-12  col-sm-12 col-12">
                                    <div class="row">
                                        <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                            <div class="blog-content pr-50">
                                                
                                                    <img src="adm/uploads/<?=$get['blog_image'];?>" alt="" style="width: -webkit-fill-available;">
                                                
                                                </div>
                                                </div>
                                                <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                            <div class="blog-content pr-50">
                                                <h3 class="font600 light-black-color3 pb-15"><?=$get['blog_name'];?></h3>
                                                <p><?=$get['blog_description'];?>
                                                </p>
                                                <!--<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius in ipsam ratione facere vero iste repudiandae beatae quasi, voluptate mollitia iusto harum error reiciendis eligendi molestiae eum? Assumenda nesciunt odio, maxime ratione sint possimus quae, numquam laborum cum, voluptatem, aliquam obcaecati excepturi quidem ex praesentium commodi aperiam quis non voluptates iusto distinctio doloribus enim necessitatibus! Quae vel alias sequi?</p>-->
                                                <!--<p>velit veritatis voluptate ratione earum odio, porro, iste explicabo optio , hic voluptas eligendi cupiditate, itaque ab quas eveniet maiores in officiis aspernatur incidunt consequatur laboriosam quibusdam. Nesciunt possimus qui incidunt distinctio cumque?.</p>-->
                                               
                                            </div>
                                         
                                             
                                       
                                        </div><!-- /col -->
                                    </div>

                                   
                                   
                                </div><!-- /col -->
                                <div class="col-xl-3  col-lg-3  col-md-12  col-sm-12 col-12 pl-0">
                                    <div class="shop-sidebar-area blog-sidebar-area">
                                        <div class="row">
                                                <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
                                                    <div class="sidebar-widget mb-20">
                                                        <!--<h5 class="mb-15 title font600 sidebar-title d-inline-block position-relative pb-1">Blog Categories</h5>-->
                                                        <!--<ul>-->
                                                        <!--    <li class="pb-15 d-block"><a href="blog.html">Accessories<span> (2)</span></a></li>-->
                                                        <!--    <li class="pb-15 d-block"><a href="blog.html">Clothing <span>(8)</span></a></li>-->
                                                        <!--    <li class="pb-15 d-block"><a href="blog.html">Interior <span>(3)</span></a></li>-->
                                                        <!--    <li class="pb-15 d-block"><a href="blog.html">Lights <span>(4)</span></a></li>-->
                                                        <!--    <li class="pb-15 d-block"><a href="blog.html">Wheel <span>(9)</span></a></li>-->
                                                        <!--    <li class="pb-15 d-block"><a href="blog.html">Tires <span>(11)</span></a></li> -->
                                                        <!--</ul>-->
                                                    </div><!-- /sidebar-widget -->
                                                </div><!-- /col -->
                                                <div class="col-xl-12  col-lg-12  col-md-6  col-sm-12 col-12">
                                                    <div class="sidebar-widget ">
                                                        <h5 class="title font600 sidebar-title d-inline-block position-relative mb-25 pb-1">Recent Product</h5>
                                                          <?php 
                        $fetch_blog=mysqli_query($con,"select * from tbl_blog where status=1 order by blog_id  desc");
                        while($res_blog=mysqli_fetch_array($fetch_blog)){
                        ?>
                         
                                                        <div class="side-product mb-15">
                                                            <div class="side-pro-wrapper d-flex align-items-start mb-15">
                                                                <div class="side-pro-img border-gray1 mr-10">
                                                                    <a href="blog/<?=$res_blog['slug'];?>">
                                                                        <img src="adm/uploads/<?=$res_blog['blog_image'];?>" class="img-fluid" alt="<?=$res_blog['blog_image'];?>">
                                                                    </a>
                                                                </div>
                                                                <div class="side-pro-text">
                                                                    <h6 class="pb-10"><a href="blog/<?=$res_blog['slug'];?>"><?=$res_blog['blog_name'];?></a></h6>
                                                                    
                                                                </div>
                                                            </div>
                                                           
                                                          
                                                        </div>
                                                        <?php } ?>
                                                    </div><!-- /sidebar-widget -->
                                                </div><!-- /col -->
                                             
                                        </div><!-- /row -->
                                    </div><!-- /shop-sidebar-area -->
                                </div><!-- /col -->
                            </div><!-- /row -->
                        </div><!-- /product-wrapper -->
                </div><!-- /container -->
            </div>
            <!-- product-area-end  -->

        </main>
        
 <?php include('footer.php');?>