<%-- 
    Document   : Report
    Created on : Apr 26, 2016, 10:34:41 PM
    Author     : Jonathan
--%>

<%@page import="java.sql.Statement"%>
<%@page import="Connection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="Controller.ReviewDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <title>GetEat! | Report</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Food and Drink Ui Kit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/styleReport.css" rel='stylesheet' type='text/css' />
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
                                </div>-->


                                <div class="content-main">
                                    <div class="content-left">

                                        <div class="meal">
                                            <%

                                                Connection conn = DatabaseConnection.getDBConnection();
                                                ResultSet result;
                                                Statement statement = conn.createStatement();

                                                String que1 = "select * from review where idReview='" + session.getAttribute("id") + "'";
                                                ResultSet res = statement.executeQuery(que1);
                                                while (res.next()) {


                                            %>
                                            <div class="meal-left">
                                                <img src="<%=res.getString("Image")%>" alt="" />
                                                <div class="berger-top">
                                                    <h3><%=res.getString("Reviewer")%></h3>
                                                    <p>FOODHUNTER</p>
                                                    <span><%=res.getString("Namatenant")%></span>
                                                </div>
                                                <div class="berger-side">
                                                    <a href="#"><span></span></a>
                                                    <td><p><%=res.getString("rating")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger-sidetwo">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=res.getString("useful")%></td>
                                                    </p>
                                                </div>
                                                <div class="berger-sidethree">
                                                    <a href="#"><span></span></a>
                                                    <p>
                                                    <td><%=res.getString("funny")%></td>
                                                    </p>
                                                </div>

                                                <br>

                                                <div class="clearfix"> </div>
                                            </div>

                                            <div class="meal-middle">
                                                <table border="0" align="center">
                                                    <tr>
                                                        <td>
                                                            <%=res.getString("REVIEWDETAIL")%> 
                                                        </td>
                                                    </tr>
                                                </table>

                                            </div>

                                            <div class="meal-right">
                                                <div id="comment_form">
                                                    <% HttpSession s = request.getSession(true); %>
                                                    <form action="ReportServlet?id=<%=s.getAttribute("id")%>" method="post">
                                                        <div>
                                                            <textarea rows="10" name="report" id="report" placeholder="Report Details"></textarea>
                                                            <!-- memberi nilai atribut comment pada id_review tersebut  -->
                                                        </div>
                                                        <div align="right">
                                                            <input type="submit" name="submit" value="Report">
                                                            <!-- menyimpan comment yang diketik eaters pada review tersebut pada database-->
                                                            <!--<input type="submit" name="submit" value="Report">-->
                                                            <!-- jika klik akan masuk pada halaman report-->
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <%}%>
                                        </div>
                                    </div>
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
                                            <p>© 2016 GetEat!. All Rights Reserved</a> </p>
                                        </div>
                                    </div>
                                </div>
                                <!--footer-end-->	
                                </body>
                                </html>

