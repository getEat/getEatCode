<%-- 
    Document   : Comment
    Created on : Apr 19, 2016, 6:39:26 PM
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
        <title>GetEat! | Detail Review</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Food and Drink Ui Kit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/styleUsefulFunnyComment.css" rel='stylesheet' type='text/css' />
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

                                                String que1 = "select * from review where idReview='" + request.getParameter("id") + "'";
                                                ResultSet res = statement.executeQuery(que1);
                                                while (res.next()) {


                                            %>
                                            <div class="meal-left test1">
                                                <img src="<%=res.getString("Image")%>" alt="" />
                                                <div class="textbox">
                                                    <p>Posted by : </p>
                                                    <h4><%=res.getString("Reviewer")%></h4>
                                                    <p>FOODHUNTER</p>
                                                    <p><%=res.getString("Namatenant")%></p>
                                                </div>
                                                <div class="berger-side">
                                                    <a href="#"><span></span></a>
                                                    <td><p><%=res.getDouble("rating")%></td>
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
                                                        <table border="0" width="250px" height="40px" align="center">
                                                            <tr>
                                                                <td>
                                                                    <a href="UsefulServlet?id=<%=request.getParameter("id")%>"><img src="images/like2.png" width="50px" height="50px"></a>
                                                                    <!-- ketika di-klik akan menambah nilai atribut useful dengan 1 pada review tersebut-->
                                                                </td>
                                                                <td><p></p></td>
                                                                <td><p></p></td>
                                                                <td><p></p></td>
                                                                <td><p></p></td>
                                                                <td>
                                                                    <a href="FunnyServlet?id=<%=request.getParameter("id")%>"><img src="images/dislike2.png" width="50px" height="50px"></a>
                                                                    <!-- ketika di-klik akan menambah nilai atribut funny dengan 1 pada review tersebut-->
                                                                </td>
                                                                <td><p></p></td>
                                                                <td><p></p></td>
                                                                <td><p></p></td>
                                                                <td>
                                                                    <a href="RatingServlet?id=<%=request.getParameter("id")%>&rating=1"><img src="images/rate.png" width="25px" height="25px"></a>
                                                                    <!-- ketika di-klik akan menambah nilai atribut rating dengan 1 pada review tersebut-->
                                                                </td>
                                                                <td>
                                                                    <a href="RatingServlet?id=<%=request.getParameter("id")%>&rating=2"><img src="images/rate.png" width="25px" height="25px"></a>
                                                                    <!-- ketika di-klik akan menambah nilai atribut rating dengan 1 pada review tersebut-->
                                                                </td>
                                                                <td>
                                                                    <a href="RatingServlet?id=<%=request.getParameter("id")%>&rating=3"><img src="images/rate.png" width="25px" height="25px"></a>
                                                                    <!-- ketika di-klik akan menambah nilai atribut rating dengan 1 pada review tersebut-->
                                                                </td>
                                                                <td>
                                                                    <a href="RatingServlet?id=<%=request.getParameter("id")%>&rating=4"><img src="images/rate.png" width="25px" height="25px"></a>
                                                                    <!-- ketika di-klik akan menambah nilai atribut rating dengan 1 pada review tersebut-->
                                                                </td>
                                                                <td>
                                                                    <a href="RatingServlet?id=<%=request.getParameter("id")%>&rating=5"><img src="images/rate.png" width="25px" height="25px"></a>
                                                                    <!-- ketika di-klik akan menambah nilai atribut rating dengan 1 pada review tersebut-->
                                                                </td>
                                                            </tr>

                                                        </table>
                                                    </div>
                                                    <div class="clearfix"> </div>

                                                </div>
                                                <br>
                                                <div class="berger">
                                                    <div class="callbacks_container">
                                                        <table border="0" width="250px" height="40px" align="center">
                                                            <tr>
                                                                <td>
                                                                    <a href="http://www.facebook.com"><img src="images/fb2.png" width="50px" height="50px"></a>
                                                                    <!-- ketika di-klik akan menambah nilai atribut useful dengan 1 pada review tersebut-->
                                                                </td>
                                                                <td><p></p></td>
                                                                <td><p></p></td>
                                                                <td><p></p></td>
                                                                <td><p></p></td>
                                                                <td>
                                                                    <a href="http://www.twitter.com"><img src="images/tw2.png" width="50px" height="50px"></a>
                                                                    <!-- ketika di-klik akan menambah nilai atribut funny dengan 1 pada review tersebut-->
                                                                </td>
                                                                <td><p></p></td>
                                                                <td><p></p></td>
                                                                <td><p></p></td>
                                                                <td>
                                                                    <a href="http://www.pinterest.com"><img src="images/pi2.png" width="50px" height="50px"></a>
                                                                    <!-- ketika di-klik akan menambah nilai atribut rating dengan 1 pada review tersebut-->
                                                                </td>
                                                            </tr>

                                                        </table>
                                                    </div>
                                                    <div class="clearfix"> </div>

                                                </div>
                                                <br>
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
                                            <%}%>
                                            <div class="meal-right">

                                                <div id="comment_form">
                                                    <form action="CommentServlet?id=<%=request.getParameter("id")%>" method="post">
                                                        <div>
                                                            <textarea rows="10" name="comment" id="comment" placeholder="Comment"></textarea>
                                                            <!-- memberi nilai atribut comment pada id_review tersebut  -->
                                                        </div>

                                                        <div align="right">
                                                            <input type="submit" name="submit" value="Add Comment">
                                                            <!-- menyimpan comment yang diketik eaters pada review tersebut pada database-->
                                                            <!--<input type="submit" name="submit" value="Report">-->
                                                            <!-- jika klik akan masuk pada halaman report-->
                                                        </div>
                                                    </form>
                                                </div>
                                                <br>
                                                <div id="comment_form">
                                                    <form action="Report.jsp">
                                                        <%HttpSession s = request.getSession(true);
                                                            s.setAttribute("id", request.getParameter("id"));%>
                                                        <div align="right">
                                                            <input type="submit" name="submit" value="Report">
                                                            <!-- menyimpan comment yang diketik eaters pada review tersebut pada database-->
                                                            <!--<input type="submit" name="submit" value="Report">-->
                                                            <!-- jika klik akan masuk pada halaman report-->
                                                        </div>
                                                    </form>
                                                </div>
                                                <br>
                                                <%
                                                    Statement statement1 = conn.createStatement();

                                                    String que2 = "select * from COMMENTS where IDREVIEW='" + request.getParameter("id") + "'";
                                                    ResultSet res1 = statement1.executeQuery(que2);
                                                %>
                                                <div align="right">
                                                    <font color="white"><h3>Comments : </h3></font>
                                                    <br>
                                                    <% while (res1.next()) {
                                                    %>
                                                    <font color="white"><%=res1.getString("COMMENTDETAIL")%></font>
                                                    <hr>
                                                    <%}%>
                                                </div>
                                            </div>


                                        </div>



                                    </div>
                                </div>
                                </div>
                                <div class="clearfix"></div>

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
