<!DOCTYPE html>
<html>
    <head>
        <title>GetEat! | Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Food and Drink Ui Kit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/styleHomeEaters.css" rel='stylesheet' type='text/css' />
        <link href="css/styleMenu.css" rel='stylesheet' type='text/css' />
        <link href="css/styleProfile.css" rel='stylesheet' type='text/css' />

        <script src="js/jquery.min.js"></script>
        <!--Calender-->
        <link rel="stylesheet" href="css/clndr.css" type="text/css" />
        <script src="js/underscore-min.js"></script>
        <script src= "js/moment-2.2.1.js"></script>
        <script src="js/clndr.js"></script>
        <script src="js/site.js"></script>
        <!--End Calender-->
    </head>
    <body>
        <!--content-starts-->
        <div class="content">
            <div class="wrap">
                <div class="content-head">
                    <h1>GetEat!</h1>
                     <h6><a href="HomeEaters.html">Hello, Jonathan |</a> 
<!--                    <div id="dd" class="wrapper-dropdown-2" tabindex="1">Jonathan<span><img src="images/menu2.png"/></span>
							<ul class="dropdown">
							
									<li><a href="#">your settings <span class="icon"> </span></a></li>
									<li><a href="#">user stats<span class="icon stat"> </span></a></li>
									<li><a href="#">direct message<span class="icon msg"> </span></a></li>
									<li><a href="#">sign out<span class="icon signout"> </span></a></li>
							</ul>
					</div>-->
					<script type="text/javascript">
							function DropDown(el) {
								this.dd = el;
								this.initEvents();
							}
							DropDown.prototype = {
								initEvents : function() {
									var obj = this;
				
									obj.dd.on('click', function(event){
										$(this).toggleClass('active');
										event.stopPropagation();
									});	
								}
							}
							$(function() {
				
								var dd = new DropDown( $('#dd') );
				
								$(document).click(function() {
									// all dropdowns
									$('.wrapper-dropdown-2').removeClass('active');
								});
				
							});
			</script>
			<!-- </div> -->
                    </h6>
                </div>
               
                <div class="banner ban1">
                <div class="container">
                    <div align="center" class="top-menu">
                    <span class="menu"> alt=""/> </span>
                        <ul>
                            <li><a  href="HomeEaters.html">home</a></li>
                            <li><a  href="about.html">about</a></li><!-- memberikan detail informasi GetEat! -->
                            <li><a  href="menu.html">menus</a></li>
                            <li><a  href="gallery.html">gallery</a></li>
                            <li><a  href="events.html">discount</a></li><!-- akan memanggil halaman berisi promo atau discount tenant -->
                            <li><a  href="contact.html">contact</a></li>
                        </ul>
                        <!-- script for menu -->
                                    
                             <script>
                             $("span.menu").click(function(){
                             $(".top-menu ul").slideToggle("slow" , function(){
                             });
                             });
                             </script>
                        <!-- //script for menu -->
                    
                   </div>
                </div>
            </div>
            <br>

        <!--end-banner-->
        <!-- SEARCHING berdasarkan kota, nama tenant, nama menu -->
            <div class="banner-bottom">
                <div class="container">
                <div class="droop-down">
                    <div class="col-md-3 droop">
                            <div class="sort-by">
                    <label>City</label>
                    <select>
                                    <option value="">
                           Yogyakarta              </option>
                                    <option value="">
                         Malang              </option>
                                    <option value="">
                           Bandung               </option>
                                        <option value="">
                           Pare-Pare               </option>
                           
                    </select>
                </div>
                    </div>
                    <div class="col-md-3 droop">
                            <div class="sort-by">
                    <label>Name</label>
                    <select>
                                    <option value="">
                          Susi Tei              </option>
                                    <option value="">
                           Katineung Group               </option>
                                    <option value="">
                           Nasgor 212              </option>
                                 <option value="">
                           Sari Eco              </option>
                                 <option value="">
                           Legend Cafe              </option>
                    </select>
                </div>
                    </div>
                    <div class="col-md-3 droop">
                            <div class="sort-by">
                    <label>Food</label>
                    <select>
                                    <option value="">
                            Sushi              </option>
                                    <option value="">
                          Nasi Omelet              </option>
                                    <option value="">
                            Nasi Goreng              </option>
                              <option value="">
                        Bakmi Goreng              </option>
                              <option value="">
                            Coffee             </option>
                    </select>
                </div>
                    </div>
                    <div class="col-md-3 search">
                    <form>
                    <input type="submit" value="search">
                    </form>             
                    </div>
                    <div class="clearfix"></div>
                    </div>
                </div>
            </div>

                <!-- Review - review yang diambil dari review yang telah dipost foodhunter -->
                <div class="content-main">
                    <div class="content-left">

                        <div class="meal">
                            <div class="meal-left">
                                    <img src="images/berger-banner.jpg" alt="" />
                                    <div class="berger-top">
                                        <h3>Mystery Box Burger</h3>
                                        <p>Step by step recipe</p>
                                        <span>- 20 min</span>
                                    </div>
                                    <div class="berger-side">
                                        <a href="#"><span></span></a>
                                        <p>4.8</p>
                                    </div>
                                    <div class="berger">
                                        <div class="callbacks_container">
                                                <li>
                                                    <div align ="center" class="br1">
                                                        <!-- <h4>1</h4> -->
                                                        <p>Go to Profile Tenant</p>	<!-- memanggil atribut dari class tenant yang reviewnya diklik -->			
                                                    </div>
                                                </li>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
							</div>
                        </div>

                        <div class="meal">
                            <div class="meal-middle">
                                    <img src="images/berger-banner.jpg" alt="" />
                                    <div class="berger-top">
                                        <h3>Mystery Box Burger</h3>
                                        <p>Step by step recipe</p>
                                        <span>- 20 min</span>
                                    </div>
                                    <div class="berger-side">
                                        <a href="#"><span></span></a>
                                        <p>4.8</p>
                                    </div>
                                    <div class="berger">
                                        <div class="callbacks_container">
                                                <li>
                                                    <div align ="center" class="br1">
                                                        <!-- <h4>1</h4> -->
                                                        <p>Go to Profile Tenant</p>								
                                                    </div>
                                                </li>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
							</div>
                        </div>

 						<div class"meal">
                            <div class="meal-right">
                                <img src="images/berger-banner.jpg" alt="" />
                                    <div class="berger-top">
                                        <h3>Mystery Box Burger</h3>
                                        <p>Step by step recipe</p>
                                        <span>- 20 min</span>
                                    </div>
                                    <div class="berger-side">
                                        <a href="#"><span></span></a>
                                        <p>4.8</p>
                                    </div>
                                    <div class="berger">
                                        <div class="callbacks_container">
                                                <li>
                                                    <div align ="center" class="br1">
                                                        <p>Go to Profile Tenant</p>								
                                                    </div>
                                                </li>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="meal">
                            <div class="meal-left">
                                    <img src="images/berger-banner.jpg" alt="" />
                                    <div class="berger-top">
                                        <h3>Mystery Box Burger</h3>
                                        <p>Step by step recipe</p>
                                        <span>- 20 min</span>
                                    </div>
                                    <div class="berger-side">
                                        <a href="#"><span></span></a>
                                        <p>4.8</p>
                                    </div>
                                    <div class="berger">
                                        <div class="callbacks_container">
                                                <li>
                                                    <div align ="center" class="br1">
                                                        <!-- <h4>1</h4> -->
                                                        <p>Go to Profile Tenant</p>								
                                                    </div>
                                                </li>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
							</div>
                        </div>

                        <div class="meal">
                            <div class="meal-middle">
                                    <img src="images/berger-banner.jpg" alt="" />
                                    <div class="berger-top">
                                        <h3>Mystery Box Burger</h3>
                                        <p>Step by step recipe</p>
                                        <span>- 20 min</span>
                                    </div>
                                    <div class="berger-side">
                                        <a href="#"><span></span></a>
                                        <p>4.8</p>
                                    </div>
                                    <div class="berger">
                                        <div class="callbacks_container">
                                                <li>
                                                    <div align ="center" class="br1">
                                                        <!-- <h4>1</h4> -->
                                                        <p>Go to Profile Tenant</p>								
                                                    </div>
                                                </li>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
							</div>
                        </div>

 						<div class"meal">
                            <div class="meal-right">
                                <img src="images/berger-banner.jpg" alt="" />
                                    <div class="berger-top">
                                        <h3>Mystery Box Burger</h3>
                                        <p>Step by step recipe</p>
                                        <span>- 20 min</span>
                                    </div>
                                    <div class="berger-side">
                                        <a href="#"><span></span></a>
                                        <p>4.8</p>
                                    </div>
                                    <div class="berger">
                                        <div class="callbacks_container">
                                                <li>
                                                    <div align ="center" class="br1">
                                                        <p>Go to Profile Tenant</p>								
                                                    </div>
                                                </li>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>

						<div class="meal">
                            <div class="meal-left">
                                    <img src="images/berger-banner.jpg" alt="" />
                                    <div class="berger-top">
                                        <h3>Mystery Box Burger</h3>
                                        <p>Step by step recipe</p>
                                        <span>- 20 min</span>
                                    </div>
                                    <div class="berger-side">
                                        <a href="#"><span></span></a>
                                        <p>4.8</p>
                                    </div>
                                    <div class="berger">
                                        <div class="callbacks_container">
                                                <li>
                                                    <div align ="center" class="br1">
                                                        <!-- <h4>1</h4> -->
                                                        <p>Go to Profile Tenant</p>								
                                                    </div>
                                                </li>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
							</div>
                        </div>

                        <div class="meal">
                            <div class="meal-middle">
                                    <img src="images/berger-banner.jpg" alt="" />
                                    <div class="berger-top">
                                        <h3>Mystery Box Burger</h3>
                                        <p>Step by step recipe</p>
                                        <span>- 20 min</span>
                                    </div>
                                    <div class="berger-side">
                                        <a href="#"><span></span></a>
                                        <p>4.8</p>
                                    </div>
                                    <div class="berger">
                                        <div class="callbacks_container">
                                                <li>
                                                    <div align ="center" class="br1">
                                                        <!-- <h4>1</h4> -->
                                                        <p>Go to Profile Tenant</p>								
                                                    </div>
                                                </li>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
							</div>
                        </div>

 						<div class"meal">
                            <div class="meal-right">
                                <img src="images/berger-banner.jpg" alt="" />
                                    <div class="berger-top">
                                        <h3>Mystery Box Burger</h3>
                                        <p>Step by step recipe</p>
                                        <span>- 20 min</span>
                                    </div>
                                    <div class="berger-side">
                                        <a href="#"><span></span></a>
                                        <p>4.8</p>
                                    </div>
                                    <div class="berger">
                                        <div class="callbacks_container">
                                                <li>
                                                    <div align ="center" class="br1">
                                                        <p>Go to Profile Tenant</p>								
                                                    </div>
                                                </li>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>					

					</div> 
                            <div class="clearfix"></div>
                    </div> 

                        
                </div> 
			</div> 

	<!--content-end-->
	<!--quantity-->
	<script>
    $('.value-plus').on('click', function(){
    	var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
    	divUpd.text(newVal);
    });

    $('.value-minus').on('click', function(){
    	var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
    	if(newVal>=1) divUpd.text(newVal);
    });
	</script>
	<!--quantity-->
	<!--Slider-Starts-Here-->
				<script src="js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: false,
			        nav: true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			  <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 3
			      $("#slider3").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: false,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!--End-slider-script-->
	<!--footer-starts-->
	<div class="footer">
		<div class="container">
			<div class="footer-text">
				<p>© 2016 GetEat!. All Rights Reserved</a> </p>
			</div>
		</div>
	</div>
	<!--footer-end-->	
</body>
</html>