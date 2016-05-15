<%@page import="DAO.ReviewDAO"%>
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
                    <div class="fresh-left">
                        <ul>
                            <li>
                                <div class="menu-top">
                                    <a href="#"><%=session.getAttribute("Username")%><span class="one"></span></a>
                                    <ul class="sub">
                                        <li><a href="UpdateProfile.jsp">My Profile</a></li>
                                        <li><a href="LogoutServlet">Logout</a></li>	
                                    </ul>
                                </div>
                            </li>
                            <li>
                                </div>
                                </div>

                                <div class="banner ban1">
                                    <div class="container">
                                        <div align="center" class="top-menu">
                                            <span class="menu"> alt=""/> </span>
                                            <ul>
                                                <li><a href="HomeEaters.jsp">home</a></li>
                                                <li><a href="about.html">about</a></li><!-- memberikan detail informasi GetEat! -->
                                                <li><a href="menu.html">menus</a></li>
                                                <li><a href="gallery.html">gallery</a></li>
                                                <li><a href="events.html">discount</a></li><!-- akan memanggil halaman berisi promo atau discount tenant -->
                                                <li><a href="contact.html">contact</a></li>
                                            </ul>
                                            <!-- script for menu -->

                                            <script>
                                                $("span.menu").click(function () {
                                                    $(".top-menu ul").slideToggle("slow", function () {
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
                                                <a href="Rating&Comment.jsp"><img src="images/berger-banner.jpg" alt="" /></a>
                                                <div class="berger-top">
                                                    <h3>Mystery Box Burger</h3>
                                                    <p>Step by step recipe</p>
                                                    <span>- 20 min</span>
                                                </div>
                                                <div class="berger-side">
                                                    <a href="#"><span></span></a>
                                                    <p><%
                                                        ReviewDAO rdao = new ReviewDAO();%>
                                                        <%=rdao.getRating("1111")%>
                                                    </p>
                                                </div>
                                                <div class="berger-sidetwo">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getUseful("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger-sidethree">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getFunny("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger">
                                                    <div class="callbacks_container">
                                                        <li>
                                                            <div align ="center" class="br1">
                                                                <!-- <h4>1</h4> -->
                                                                <p><a href="Halaman_Profil_Tenant.jsp"target="_blank">Go to Profile Tenant</a></p>	<!-- memanggil atribut dari class tenant yang reviewnya diklik -->			
                                                            </div>
                                                        </li>
                                                    </div>
                                                    <div class="clearfix"> </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="meal">
                                            <div class="meal-middle">
                                                <a href="Rating&Comment.jsp"><img src="images/berger-banner.jpg" alt="" /></a>
                                                <div class="berger-top">
                                                    <h3>Mystery Box Burger</h3>
                                                    <p>Step by step recipe</p>
                                                    <span>- 20 min</span>
                                                </div>
                                                <div class="berger-side">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                        <%=rdao.getRating("1111")%>
                                                    </p>
                                                </div>
                                                <div class="berger-sidetwo">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getUseful("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger-sidethree">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getFunny("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger">
                                                    <div class="callbacks_container">
                                                        <li>
                                                            <div align ="center" class="br1">
                                                                <!-- <h4>1</h4> -->
                                                                <p><a href="Halaman_Profil_Tenant.jsp"target="_blank">Go to Profile Tenant</a></p>
                                                            </div>
                                                        </li>
                                                    </div>
                                                    <div class="clearfix"> </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class"meal">
                                             <div class="meal-right">
                                                <a href="Rating&Comment.jsp"><img src="images/berger-banner.jpg" alt="" /></a>
                                                <div class="berger-top">
                                                    <h3>Mystery Box Burger</h3>
                                                    <p>Step by step recipe</p>
                                                    <span>- 20 min</span>
                                                </div>
                                                <div class="berger-side">
                                                    <a href="#"><span></span></a>
                                                    <p>                                                       
                                                        <%=rdao.getRating("1111")%>
                                                    </p>
                                                </div>
                                                <div class="berger-sidetwo">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getUseful("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger-sidethree">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getFunny("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger">
                                                    <div class="callbacks_container">
                                                        <li>
                                                            <div align ="center" class="br1">
                                                                <p><a href="Halaman_Profil_Tenant.jsp"target="_blank">Go to Profile Tenant</a></p>
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
                                                <a href="Rating&Comment.jsp"><img src="images/berger-banner.jpg" alt="" /></a>
                                                <div class="berger-top">
                                                    <h3>Mystery Box Burger</h3>
                                                    <p>Step by step recipe</p>
                                                    <span>- 20 min</span>
                                                </div>
                                                <div class="berger-side">
                                                    <a href="#"><span></span></a>
                                                    <p>                                                       
                                                        <%=rdao.getRating("1111")%>
                                                    </p>
                                                </div>
                                                <div class="berger-sidetwo">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getUseful("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger-sidethree">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getFunny("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger">
                                                    <div class="callbacks_container">
                                                        <li>
                                                            <div align ="center" class="br1">
                                                                <!-- <h4>1</h4> -->
                                                                <p><a href="Halaman_Profil_Tenant.jsp"target="_blank">Go to Profile Tenant</a></p>
                                                            </div>
                                                        </li>
                                                    </div>
                                                    <div class="clearfix"> </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="meal">
                                            <div class="meal-middle">
                                                <a href="Rating&Comment.jsp"><img src="images/berger-banner.jpg" alt="" /></a>
                                                <div class="berger-top">
                                                    <h3>Mystery Box Burger</h3>
                                                    <p>Step by step recipe</p>
                                                    <span>- 20 min</span>
                                                </div>
                                                <div class="berger-side">
                                                    <a href="#"><span></span></a>
                                                    <p>                                                       
                                                        <%=rdao.getRating("1111")%>
                                                    </p>
                                                </div>
                                                <div class="berger-sidetwo">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getUseful("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger-sidethree">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getFunny("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger">
                                                    <div class="callbacks_container">
                                                        <li>
                                                            <div align ="center" class="br1">
                                                                <!-- <h4>1</h4> -->
                                                                <p><a href="Halaman_Profil_Tenant.jsp"target="_blank">Go to Profile Tenant</a></p>
                                                            </div>
                                                        </li>
                                                    </div>
                                                    <div class="clearfix"> </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class"meal">
                                             <div class="meal-right">
                                                <a href="Rating&Comment.jsp"><img src="images/berger-banner.jpg" alt="" /></a>
                                                <div class="berger-top">
                                                    <h3>Mystery Box Burger</h3>
                                                    <p>Step by step recipe</p>
                                                    <span>- 20 min</span>
                                                </div>
                                                <div class="berger-side">
                                                    <a href="#"><span></span></a>
                                                    <p>                                                       
                                                        <%=rdao.getRating("1111")%>
                                                    </p>
                                                </div>
                                                <div class="berger-sidetwo">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getUseful("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger-sidethree">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getFunny("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger">
                                                    <div class="callbacks_container">
                                                        <li>
                                                            <div align ="center" class="br1">
                                                                <p><a href="Halaman_Profil_Tenant.jsp"target="_blank">Go to Profile Tenant</a></p>
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
                                                <a href="Rating&Comment.jsp"><img src="images/berger-banner.jpg" alt="" /></a>
                                                <div class="berger-top">
                                                    <h3>Mystery Box Burger</h3>
                                                    <p>Step by step recipe</p>
                                                    <span>- 20 min</span>
                                                </div>
                                                <div class="berger-side">
                                                    <a href="#"><span></span></a>
                                                    <p>                                                       
                                                        <%=rdao.getRating("1111")%>
                                                    </p>
                                                </div>
                                                <div class="berger-sidetwo">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getUseful("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger-sidethree">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getFunny("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger">
                                                    <div class="callbacks_container">
                                                        <li>
                                                            <div align ="center" class="br1">
                                                                <!-- <h4>1</h4> -->
                                                                <p><a href="Halaman_Profil_Tenant.jsp"target="_blank">Go to Profile Tenant</a></p>
                                                            </div>
                                                        </li>
                                                    </div>
                                                    <div class="clearfix"> </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="meal">
                                            <div class="meal-middle">
                                                <a href="Rating&Comment.jsp"><img src="images/berger-banner.jpg" alt="" /></a>
                                                <div class="berger-top">
                                                    <h3>Mystery Box Burger</h3>
                                                    <p>Step by step recipe</p>
                                                    <span>- 20 min</span>
                                                </div>
                                                <div class="berger-side">
                                                    <a href="#"><span></span></a>
                                                    <p>                                                       
                                                        <%=rdao.getRating("1111")%>
                                                    </p>
                                                </div>
                                                <div class="berger-sidetwo">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getUseful("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger-sidethree">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getFunny("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger">
                                                    <div class="callbacks_container">
                                                        <li>
                                                            <div align ="center" class="br1">
                                                                <!-- <h4>1</h4> -->
                                                                <p><a href="Halaman_Profil_Tenant.jsp"target="_blank">Go to Profile Tenant</a></p>
                                                            </div>
                                                        </li>
                                                    </div>
                                                    <div class="clearfix"> </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="meal">
                                            <div class="meal-right">
                                                <a href="Rating&Comment.jsp"><img src="images/berger-banner.jpg" alt="" /></a>
                                                <div class="berger-top">
                                                    <h3>Mystery Box Burger</h3>
                                                    <p>Step by step recipe</p>
                                                    <span>- 20 min</span>
                                                </div>
                                                <div class="berger-side">
                                                    <a href="#"><span></span></a>
                                                    <p>                                                       
                                                        <%=rdao.getRating("1111")%>
                                                    </p>
                                                </div>
                                                <div class="berger-sidetwo">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getUseful("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger-sidethree">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=rdao.getFunny("1111")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger">
                                                    <div class="callbacks_container">
                                                        <li>
                                                            <div align ="center" class="br1">
                                                                <p><a href="Halaman_Profil_Tenant.jsp"target="_blank">Go to Profile Tenant</a></p>
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
                                    $('.value-plus').on('click', function () {
                                        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                                        divUpd.text(newVal);
                                    });

                                    $('.value-minus').on('click', function () {
                                        var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                                        if (newVal >= 1)
                                            divUpd.text(newVal);
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
                                            <p>© 2016 GetEat!. All Rights Reserved </p>
                                        </div>
                                    </div>
                                </div>
                                <!--footer-end-->	
                                </body>
                                </html>