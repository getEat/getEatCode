<%@page import="Connection.DatabaseConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="Controller.ReviewDAO"%>
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
                    <h1><a href="HomeEaters.jsp">GetEat!</a></h1>
                    <div class="fresh-left">
                        <ul>
                            <li>
                                <div class="menu-top">
                                    <a href="#"><%=session.getAttribute("Username")%><span class="one"></span></a>
                                    <ul class="sub">
                                        <li><a href="UpdateProfile.jsp">My Profile</a></li>
                                        <li><a href="logout.jsp">Logout</a></li>	
                                    </ul>
                                </div>
                            </li>
                            <li>
                                </div>
                                </div>
                                <br>
                                <br>
                                <!--                                <div class="banner ban1">
                                                                    <div class="container">
                                                                        <div align="center" class="top-menu">
                                                                            <span class="menu"> alt=""/> </span>
                                                                            <ul>
                                                                                <li><a href="HomeEaters.jsp">home</a></li>
                                                                                <li><a href="about.html">about</a></li> memberikan detail informasi GetEat! 
                                                                                <li><a href="menu.html">menus</a></li>
                                                                                <li><a href="gallery.html">gallery</a></li>
                                                                                <li><a href="events.html">discount</a></li> akan memanggil halaman berisi promo atau discount tenant 
                                                                                <li><a href="contact.html">contact</a></li>
                                                                            </ul>
                                                                             script for menu 
                                
                                                                            <script>
                                                                                $("span.menu").click(function () {
                                                                                    $(".top-menu ul").slideToggle("slow", function () {
                                                                                    });
                                                                                });
                                                                            </script>
                                                                             //script for menu 
                                
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <br>-->

                                <!--end-banner-->
                                <!-- SEARCHING berdasarkan kota, nama tenant, nama menu -->
                                <div class="banner-bottom">
                                    <div class="container">
                                        <div class="droop-down">
                                            <form action="SearchResult.jsp">
                                                <div class="col-md-3 droop">
                                                    <div class="sort-by">
                                                        <label>City</label>
                                                        <input type="text" name="city" id="city" placeholder="Restaurant Location...">
                                                    </div>
                                                </div>
                                                <div class="col-md-3 droop">
                                                    <div class="sort-by">
                                                        <label>Name</label>
                                                        <input type="text" name="tenantname" id="tenantname" placeholder="Restaurant Name...">
                                                    </div>
                                                </div>
                                                <div class="col-md-3 droop">
                                                    <div class="sort-by">
                                                        <label>Food</label>
                                                        <input type="text" name="kategori" id="kategori" placeholder="Food Category...">
                                                        <!--                                                    <select>
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
                                                                                                            </select>-->
                                                    </div>
                                                </div>
                                                <div class="col-md-3 search">
                                                    <input type="submit" value="search">
                                                </div>
                                                <div class="clearfix"></div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <!-- Review - review yang diambil dari review yang telah dipost foodhunter -->
                                <div class="content-main">
                                    <div class="content-left">

                                        <div class="meal">
                                            <%
                                                int counter = 1;
                                                Connection conn = DatabaseConnection.getDBConnection();
                                                ResultSet result;
                                                Statement statement = conn.createStatement();

                                                String que1 = "select * from review";
                                                ResultSet res = statement.executeQuery(que1);
                                                while (res.next()) {

                                                    if (counter == 1) {
                                            %>

                                            <div class="meal-left test1">
                                                <%  counter = 2;
                                                } else if (counter == 2) {
                                                %>  

                                                <div class="meal-middle test1">
                                                    <%
                                                        counter = 3;
                                                    } else if (counter == 3) {
                                                    %>  

                                                    <div class="meal-right test1">
                                                        <%
                                                                counter = 1;
                                                            }
                                                        %>
                                                        <img src="<%=res.getString("Image")%>"></img>
                                                        <a href="Rating&Comment.jsp?id=<%=res.getString("idReview")%>">
                                                            <div class="textbox">
                                                                <p>Posted by : </p>
                                                                <h4><%=res.getString("Reviewer")%></h4>
                                                                <p>FOODHUNTER</p>
                                                                <p><%=res.getString("Namatenant")%></p>
                                                            </div>
                                                        </a>
                                                        <div class="berger-side">
                                                            <a href="#"><span></span></a>
                                                            <p><%=res.getDouble("rating")%>
                                                            </p>
                                                        </div>
                                                        <div class="berger-sidetwo">
                                                            <a href="#"><span></span></a>
                                                            <p>
                                                            <td><%=res.getInt("useful")%></td>
                                                            </p>
                                                        </div>
                                                        <div class="berger-sidethree">
                                                            <a href="#"><span></span></a>
                                                            <p>
                                                            <td><%=res.getInt("funny")%></td>
                                                            </p>
                                                        </div>
                                                        <div class="berger">
                                                            <div class="callbacks_container">
                                                                <li>
                                                                    <div align ="center" class="br1">
                                                                        <!-- <h4>1</h4> -->
                                                                        <p><a href="tenantServlet?action=view&idtenant=<%=res.getString("idtenant")%>" target="_blank">Go to Profile Tenant</a></p>	<!-- memanggil atribut dari class tenant yang reviewnya diklik -->			
                                                                    </div>
                                                                </li>
                                                            </div>
                                                            <div class="clearfix"> </div>
                                                        </div>
                                                        <br>
                                                    </div>
                                                    <%}%>

                                                </div>

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
                                                <div align="right">
                                                    <a href="#"><img src="images/up.png"></a>
                                                </div>
                                                <p>© 2016 GetEat!. All Rights Reserved </p>
                                            </div>
                                        </div>
                                    </div>
                                    <!--footer-end-->	
                                    </body>
                                    </html>