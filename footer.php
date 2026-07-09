  <footer> 
            <div class="footer-area footer2 footer-bg">
                <div class="footer-top">
                    <div class="container">
                        <div class="row d-flex border-b-gray1 pb-40 pt-90">
                            <div class="col-xxl-5 col-xl-5  col-lg-6  col-md-12  col-sm-12 col-12 pl-0">
                                <div class="row">
                                    <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12 ">
                                        <div class="footer-widget pb-30">
                                             <ul class="footer-account">
                                                 <li>
                                                <?php 
                                                if(isset($_SESSION['customer_id']))
                                        { ?>    
                                               
                                                    
                                                    <a href="dashboard.php" class="position-relative d-inline-block">My Account</a>
                                               
                                                <?php }
                                                else
                                                { ?>
                                                 <a href="login.php" class="position-relative d-inline-block">My Account</a>    
                                                <?php  }
                                                ?>
                                                 </li>
                                                <li>
                                                    <a href="shop.php" class="position-relative d-inline-block">Shop</a>
                                                </li>
                                                <li>
                                                    <a href="login.php" class="position-relative d-inline-block">Login</a>
                                                </li>
                                                <li>
                                                    <a href="register.php" class="position-relative d-inline-block">Register</a>
                                                </li>
                                                <li>
                                                    <a href="return-and-exchange.php" class="position-relative d-inline-block">Return & Exchange</a>
                                                </li>
                                              
                                            </ul>
                                        </div>
                                    </div><!-- /col -->
                                    <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12 pl-xl-0">
                                        <div class="footer-widget pb-30">
                                          <ul class="footer-account">
                                                <li>
                                                    <a href="about-us.php" class="position-relative d-inline-block">About Us</a>
                                                </li>
                                                <li>
                                                    <a href="contact-us.php" class="position-relative d-inline-block">Contact Us</a>
                                                </li>
                                                
                                                 <li>
                                                    <a href="privacy-page.php" class="position-relative d-inline-block">Privacy Policy</a>
                                                </li>
                                                <li>
                                                    <a href="terms-and-condition.php" class="position-relative d-inline-block">Terms & Conditions</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div><!-- /col -->
                                </div><!-- /row -->
                            </div><!-- /col -->
                            <div class="col-xxl-7 col-xl-7  col-lg-6  col-md-12  col-sm-12 col-12">
                            <div class="row">   
                                <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12 pl-0">
                                    <div class="footer-widget f-adress pb-30 pr-60 ml--35">
                                        <ul class="footer-address">
                                            <li>
                                                <a class="footer-phone" href="tel:+919873170681">
                                                    <span><small>+91</small></span>
                                                9911820202</a>
                                            </li>
                                            <li class="office-time pt-22 pb-20 gray-b-border1">
                                                <span class="d-block mb-10">Monday - Saturday : 11:00AM to 07:00PM</span>
                                            </li>
                                          
                                            
                                        </ul>
                                    </div>
                                </div><!-- /col -->
                                <div class="col-xl-6  col-lg-6  col-md-6  col-sm-6 col-12 pl-xl-0">
                                    <div class="footer-widget pb-30 f-link ml--3">
                                        <p class="font500"><i class="fas fa-map-marker-alt" style="margin-right: 8px; color:#ff5b30"></i> C 3/14, Basement Floor, Near Aditya Medical Centre, Rana Pratap 
                                        Bagh, Delhi-110007, INDIA </p>
                                          <p class="font500"><a style="color:#fff" href="mailto:hiralalsurgicals@gmail.com"><i class="far fa-envelope" style="margin-right: 8px; color:#ff5b30"></i> hiralalsurgicals@gmail.com</a></p>
                                          <p class="font500"><a style="color:#fff" href="tel:45660202"><i class="fas fa-phone-alt" style="margin-right: 8px; color:#ff5b30"></i> 011-45660202</a></p>
                                        <div class="f-social mt-20">
                                            <img src="https://devsnews.com/template/stepmeds/stepmeds/images/footer/Social.png/" alt="">
                                        </div>
                                        <div class="copyright-text d-sm-flex justify-content-center align-items-center mt-50">
                                            <p class="mb-0">© 2023. All rights reserved.</p>
                                        </div>
                                    </div>
                                </div><!-- /col -->
                            </div><!-- /row -->
                            </div><!-- /col -->
                        </div><!-- /row -->
                    </div><!-- /container -->
                </div>
                <div class="footer-bottom pt-25">
                    <div class="container">
                        <div class="row align-items-center justify-content-center">
                                <!-- ====== service-area-start ========================================= -->
                            <div class="col-xl-7  col-lg-7  col-md-12  col-sm-12 col-12">
                                <div class="service-area">
                                    <ul>
                                        <li class="d-inline-block mr-50">
                                            <div class="single-service d-flex align-items-center mb-25">
                                                <div class="s-ser-icon mr-15">
                                                    <span class="h2-theme-color"><i class="fal fa-shipping-fast"></i></span>
                                                </div>
                                                <div class="s-ser-content">
                                                    <p class="mb-0">15 Days To Return & Exchange</p>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li class="d-inline-block mr-50" style="margin-bottom: 24px;">
                                            <div class="single-service d-flex align-items-center mb-25">
                                                <div class="s-ser-icon mr-15">
                                                    <span class="h2-theme-color"><i class="fal fa-gift"></i></span>
                                                </div>
                                                <div class="s-ser-content">
                                                    <p class="mb-0">Shipping within 24 Hours</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div><!-- /col -->
                            <div class="col-md-2">
                                 <a href="https://play.google.com/store/apps/details?id=com.rnvsports&pcampaignid=web_share&pli=1">
                                <img src="images/google-play.png" alt="google-play" style="margin: 0px 0px 24px;"> </a>
                            </div>
                            <div class="col-xl-3  col-lg-3  col-md-12  col-sm-12 pr-0 col-12 d-flex justify-content-lg-end">
                                <div class="footer-widget f-payment pb-25">
                                    <div class="footer-payment">
                                        <img src="images/payment.png" alt="">
                                    </div>
                                </div>
                            </div><!-- /col -->
                        </div><!-- /row -->
                    </div><!-- /container -->
                </div>
            </div>
        </footer>

            <!-- back top -->
            <div class="scroll-up" id="scroll">
                <a href="#" class="h2-theme-bg white d-block text-center position-fixed">
                    <span class="icon-chevrons-up"></span>
                </a>
            </div>




        <!-- All js here -->
        <script src="js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="js/vendor/jquery-3.6.0.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.inputarrow.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.elevateZoom-3.0.8.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/jquery.meanmenu.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/countdown.min.js"></script>
        <script src="js/main.js"></script>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
 <script src="autocomplete/jquery-ui.js"></script>
 
 <script>
       // Preeloader 
    $(window).on("load", function () {
        $("#status").fadeOut();
        $("#preloader")
            .delay(350)
            .fadeOut("slow");
    });
 </script>
 
<script type="text/javascript">
	$(document).ready(function(){
	   
		$("#search_product").autocomplete({
			source: 'ajax/search.php',
			minLength: 0,
			select: function(event, ui) {
            doSearch(ui.item.id, ui.item.value);
        }
		});
	});
	
	function doSearch(term, location) {
    window.location.href = 'search.php?q=' + term + '&loc=' + location;
}
</script>


<script type="text/javascript">
	$(document).ready(function(){
	   
		$("#search_product_new").autocomplete({
			source: 'ajax/search.php',
			minLength: 0,
			select: function(event, ui) {
            doSearch(ui.item.id, ui.item.value);
        }
		});
	});
	
	function doSearch(term, location) {
    window.location.href = 'search.php?q=' + term + '&loc=' + location;
}
</script>

<script type="text/javascript">
	$(document).ready(function(){
	   
		$("#search_product_new").autocomplete({
			source: 'ajax/search.php',
			minLength: 0,
			select: function(event, ui) {
            doSearch(ui.item.id, ui.item.value);
        }
		});
	});
	
	function doSearch(term, location) {
    window.location.href = 'search.php?q=' + term + '&loc=' + location;
}


$(document).ready(function(){
  $('.main-menu-1 li').click(function(){
    $('.main-menu-1 li').removeClass("current-menu-item");
    $(this).addClass("active");
});
});

</script>






       
    </body>

</html>