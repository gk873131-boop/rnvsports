<?php include('header.php'); ?>

        <main>

            <!-- ======slider-area-start=========================================== -->
            <div class="slider-area over-hidden">
                <div class="single-slider page-height3 d-flex align-items-center" data-background="images/adolfo-felix-Yi9-QIObQ1o-unsplash.jpg">
                   <div class="container">
                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 d-flex align-items-center justify-content-center">
                                <div class="page-title mt-10 text-center">
                                    <h2 style="color: white;" class="text-capitalize font600 mb-10">Register</h2>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb justify-content-center bg-transparent">
                                        <li class=""><a class="primary-color" href="index.php" style="color: white;">Home</a></li>/
                                        <li class="active text-capitalize" aria-current="page" style="color: white;">Register</li>
                                        </ol>
                                    </nav>
                                </div><!-- /page title -->
                            </div><!-- /col -->
                        </div><!-- /row -->
                    </div><!-- /container -->
                </div><!-- /single-slider -->
            </div>
            <!-- slider-area-end  -->

            <!-- ====== login-register-area-start=============================================== --> 
            <div class="login-register-area mb-45">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <!-- login Area Strat-->
                            <section class="register-area pt-100 pb-55">
                                <div class="container">
                                    <div class="row justify-content-center">
                                        <div class="col-lg-8">
                                            <div class="basic-login">
                                                <h3 class="text-center mb-60">Register Here</h3>
                                                <form action="controller.php" method="post">
                                                    <?php
                                                    
                                if(isset($_GET['register'])){
                                    echo "<p style='color:green'><strong>Completed! </strong>This Successfully Registred...</p>";
                                }
                                if(isset($_GET['already'])){
                                    echo "<p style='color:red'><strong>Warning! </strong>Email Already Exits...</p>";
                                }
                                
                                 if(isset($_GET['register_error'])){
                                    echo "<p style='color:red'><strong>Warning! </strong>Something Went Wrong...</p>";
                                }
                            ?>
                                                    <label for="fname">First Name</label>
                                                    <input id="fname" type="text" name="fname" placeholder="First Name..." required/>
                                                    <label for="lname">Last Name</label>
                                                    <input id="lname" type="text" name="lname" placeholder="Last Name..." required/>
                                                    <label for="name">Email Address <span>**</span></label>
                                                    <input id="name" type="text" name="email" placeholder="Enter Username or Email address..." required/>
                                                    <label for="pass2">Password <span>**</span></label>
                                                    <input id="pass2" type="password" name="password" placeholder="Enter password..." required/>
                                                    <div class="login-action mb-20 fix">
                                                        <!--<span class="log-rem f-left">-->
                                                        <!--    <input id="remember2" type="checkbox" required/>-->
                                                        <!--    <label for="remember2">Remember me!</label>-->
                                                        <!--</span>-->
                                                        <!--<span class="forgot-login f-right">-->
                                                        <!--    <a href="login.php">Login</a>-->
                                                        <!--</span>-->
                                                    </div>
                                                    <button type="sumbit" class="bt-btn theme-btn-2 w-100" name="btn_register">Register Now</button>
                                                    <div class="or-divide"><span>or</span></div>
                                                    <!--<button class="bt-btn bt-btn-black w-100">Login Now</button>-->
                                                    <a href="login.php" class="bt-btn bt-btn-black w-100" style="text-align: center;">Login Now</a>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <!-- login Area End-->
                        </div>
                    </div><!-- /row -->
                </div><!-- /container -->
            </div>
            <!-- login-register-area-end -->

        </main>
        
 <?php include('footer.php');?>