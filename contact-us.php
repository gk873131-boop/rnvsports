<?php include('header.php');?>


        <main>

            <!-- ======slider-area-start=========================================== -->
            <div class="slider-area over-hidden">
                <div class="single-slider page-height3 d-flex align-items-center" data-background="images/contact.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 d-flex align-items-center justify-content-center">
                                <div class="page-title mt-10 text-center">
                                    <h2 style="color: white;" class="text-capitalize font600 mb-10">Contact us</h2>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb justify-content-center bg-transparent">
                                        <li class=""><a class="primary-color" href="index.php" style="color: white;">Home</a></li>/
                                        <li class="active text-capitalize" aria-current="page" style="color: white;">Contact us</li>
                                        </ol>
                                    </nav>
                                </div><!-- /page title -->
                            </div><!-- /col -->
                        </div><!-- /row -->
                    </div><!-- /container -->
                </div><!-- /single-slider -->
            </div>
            <!-- slider-area-end  -->

            <!-- ====== map-area-start=============================================== -->
            <div class="map-area mt-100">
                <div class="container">
                    <div class="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3500.0971492757258!2d77.19035977444773!3d28.686740381618797!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d02759837398d%3A0x1a97eef160947fb4!2sRana%20Pratap%20Bagh%20Rd%2C%20Vir%20Nagar%20Jain%20Colony%2C%20Block%20D%2C%20Rana%20Pratap%20Bagh%2C%20Ashok%20Vihar%2C%20Delhi%2C%20110007!5e0!3m2!1sen!2sin!4v1685174823051!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div><!-- /map -->
                </div><!-- /container -->
            </div>
            <!-- map-area-end -->

            <!-- ====== contact-area-start================================ -->
            <div class="contact-area">
                <div class="container">
                    <div class="row pb-100">
                        <div class="col-xl-6  col-lg-6  col-md-12  col-sm- col-">
                            <div class="contact-form-left mt-60">
                                <div class="section-title text-left">
                                    <h4 class="c-title mb-35 font600 title d-inline-block position-relative">Our Main Office</h4>
                                    <p>For Any Help Please Contact</p>
                                    <ul class="hot-line d-flex align-items-center mt-25 pb-25">
                                        <li>
                                            <span class="h2-theme-color d-block mr-15"><i class="fal fa-headset"></i></span>
                                        </li>
                                        <li>
                                            <p class="mb-1">Call Us:</p>
                                            <a href="tel:+919873170681" class="light-black-color2 font600">
                                                +91-9911820202
                                            </a>
                                        </li>
                                    </ul>
                                </div><!-- /section-title -->
                                <div class="c-contact d-sm-flex">
                                    <span class="primary-color pr-1">Address: </span>
                                    <p>C3/14, basement Near Aditya Medical Centre Rana Pratap Bagh Delhi-110007</p>
                                </div>
                              
                             
                                <div class="c-social-link d-sm-flex align-items-center mt-15">
                                    <span class="primary-color d-inline-block pr-10">Social Share:</span>
                                    <ul class="social-link d-flex  align-items-center">
                                        <li>
                                            <a href="#"><i class="fab fa-twitter"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fab fa-google-plus-g"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                                        </li>
                                    </ul>
                                </div><!-- /c-social-link -->
                            </div>
                        </div><!-- /col -->
                        <div class="col-xl-6  col-lg-6  col-md-12  col-sm-12 col-12">
                            <div class="contact-form-right mt-60">
                                 <?php
                           if(isset($_GET['success'])){
                               echo "<div class='alert alert-success'>Your Message send successfully</div>";
                           }
                           ?>
                                <h4 class="c-title mb-35 font600 title d-inline-block position-relative">Drop Us A Message</h4>
                                <form action="controller.php" method="post">
                                    <div class="contact-form">
                                        <label>Name</label>
                                        <div class="name">
                                            <input type="text" class="form-control primary-bg2 border-0 mt-2 py-2" name="name" id="r-name">
                                        </div>
                                        <label class="mt-25">Email</label>
                                        <div class="email">
                                            <input type="email" class="form-control primary-bg2 border-0 mt-2  py-2" name="email" id="r-email">
                                        </div>
                                        <label class="mt-25">Your Message</label>
                                        <textarea name="message" class="form-control primary-bg2 border-0 mt-2 pt-30 pb-30" id="message"></textarea>
                                    </div><!-- /name-and-email -->
                                    <!--<a href="#" class="web-btn h2-theme-border1 d-inline-block text-capitalize white mt-40 rounded-0 h2-theme-color h2-theme-bg position-relative over-hidden pl-60 pr-60 ptb-17">send message</a>-->
                                    <button type="submit" class="web-btn h2-theme-border1 d-inline-block text-capitalize white mt-40 rounded-0 h2-theme-color h2-theme-bg position-relative over-hidden pl-60 pr-60 ptb-17" name="send_message">send message</button>
                                </form>
                            </div>
                        </div>
                    </div><!-- /row -->
                </div><!-- /container -->
            </div>

            <!-- contact-area-end  -->

        </main>
        
        <!-- ====== footer-area-start ============================================== -->
      <?php include 'footer.php'; ?>