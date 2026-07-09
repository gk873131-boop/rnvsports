<?php include('header.php');?>



        <main>

            <!-- ======slider-area-start=========================================== -->
            <div class="slider-area over-hidden">
                <div class="single-slider page-height3 d-flex align-items-center" data-background="images/login.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12 d-flex align-items-center justify-content-center">
                                <div class="page-title mt-10 text-center">
                                    <h2 style="color: white;" class="text-capitalize font600 mb-10">Login & Register</h2>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb justify-content-center bg-transparent">
                                        <li class=""><a class="primary-color" href="index.php" style="color: white;">Home</a></li>/
                                        <li class="active text-capitalize" aria-current="page" style="color: white;">Login & Register</li>
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
                            <section class="login-area pt-100 pb-55">
                                <div class="container">
                                    <div class="row justify-content-center">
                                        <div class="col-lg-8">
                                            <div class="basic-login">
                                                <h3 class="text-center mb-60">Login From Here</h3>
                                                <form action="controller.php" method="post">
                                                    <?php
                               
                                if(isset($_GET['login_error'])){
                                    echo "<p style='color:red'><strong>Warning! </strong>Your Email is not registered...</p>";
                                }
                            ?>
                                                    <label for="email">Email Address <span>**</span></label>
                                                    <input id="email" type="text" name="email" placeholder="Enter Username or Email address..." required />
                                                    <label for="pass">Password <span>**</span></label>
                                                    <input id="pass" type="password" name="password"  placeholder="Enter password..." required />
                                                    <div class="login-action mb-20 fix">
                                                        <!--<span class="log-rem f-left">-->
                                                        <!--    <input id="remember" type="checkbox" />-->
                                                        <!--    <label for="remember">Remember me!</label>-->
                                                        <!--</span>-->
                                                        <!--<span class="forgot-login f-right">-->
                                                        <!--    <a href="#">Lost your password?</a>-->
                                                        <!--</span>-->
                                                    </div>
                                                    <button class="bt-btn theme-btn-2 w-100" name="btn_login">Login Now</button>
                                                    <div class="or-divide"><span>or</span></div>
                                                    <!--<button class="bt-btn bt-btn-black w-100">Register Now</button>-->
                                                    <a href="register.php" class="bt-btn bt-btn-black w-100" style="text-align: center;">Register Now</a>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <!-- login Area End-->
                        </div><!-- /col -->
                    </div><!-- /row -->
                </div><!-- /container -->
            </div>
            <!-- login-register-area-end -->

        </main>
        
  <?php include('footer.php');?>