<%@page import="Connection.DatabaseConnection"%>
<%@page import="Model.Member"%>
<%@page import="Model.Eaters"%>
<%@page import="Controller.UpdateProfileServlet"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>GetEat! | Profile Eaters</title>
        <!-- Custom Theme files -->


        <!-- Custom Theme files -->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
        <meta name="keywords" content="Flat Reviews Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free web designs for Nokia, Samsung, LG, sony ericsson, Motorola web design" />
        <link href="css/styleProfile.css" rel="stylesheet" type="text/css" media="all"/>
        <link href='//fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Titillium+Web:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900' rel='stylesheet' type='text/css'>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/script.js"></script>
    </head>
    <body>
        <%
            Connection conn = DatabaseConnection.getDBConnection();
            Eaters e = new Eaters();
            Member m = new Member();
            String user = (String) session.getAttribute("Username");
            try {
                String sqla = "select * from member where userName='" + user + "'";
                Statement stmt0 = conn.createStatement();
                ResultSet rs0 = stmt0.executeQuery(sqla);
                while (rs0.next()) {
                    m.setIdMember(rs0.getString("idMember"));
                }
                String sql = "select * from member where idMember='" + m.getIdMember() + "'";
                Statement stmt1 = conn.createStatement();
                ResultSet rs = stmt1.executeQuery(sql);
                while (rs.next()) {
                    m.setUserName(rs.getString("userName"));
                    m.setPassword(rs.getString("password"));
                }
                String sql2 = "select * from eaters where idMember='" + m.getIdMember() + "'";
                Statement stmt2 = conn.createStatement();
                ResultSet rs2 = stmt2.executeQuery(sql2);
                while (rs2.next()) {
                    e.setNama(rs2.getString("Nama"));
                    e.setAlamat(rs2.getString("alamat"));
                    e.setEmail(rs2.getString("email"));
                }
                HttpSession se = request.getSession(true);
                se.setAttribute("id", m.getIdMember());
            } catch (SQLException ex) {
                Logger.getLogger(UpdateProfileServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        %>
        <div class="head">
            <div class="head-text">
                <h1>Profile</h1>
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


            <div class="login">
                <div class="header">
                    <div class="text">
                        <img src="images/men1.jpg" alt="" />
                        <div class="text-left">
                            <h2><%=session.getAttribute("Username")%></h2>
                            <p>EATERS</p>
                            <h4><a href="logout.jsp">Logout</a></h4>	
                        </div>
                    </div>
                </div>
                <div class="sap_tabs">	
                    <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                        <ul class="resp-tabs-list">
                            <li class="resp-tab-item  item" aria-controls="tab_item-0" role="tab"><i class="tre"> </i><span>Reviews</span></li>
                            <li class="resp-tab-item item" aria-controls="tab_item-1" role="tab"><i class="two"> </i><span> Followers</span></li>
                            <li class="resp-tab-item item item1" aria-controls="tab_item-2" role="tab"><i class="one"> </i><span>Gallery</span></li>
                            <div class="clearfix"></div>
                        </ul>				  	 
                        <div class="resp-tabs-container">
                            <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Product Description</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
                                <div class="facts">
                                    <div class="review">
                                        <!-- Edit profile yang nantinya setelah klik tombol Edit akan mengubah profile Eaters tersebut di database -->
                                        <div class="review-top" align="center">
                                            <form action="UpdateProfileServlet" method="post">
                                                <h4>Nama</h4>
                                                <input type="text" value="<%=e.getNama()%>" id="Nama" name="Nama" style="width:500px">
                                                <br>
                                                <br>
                                                <h4>Alamat</h4>
                                                <input type="text" value="<%=e.getAlamat()%>" id="Alamat" name="Alamat" style="width:500px">
                                                <br>
                                                <br>
                                                <h4>Email</h4>
                                                <input type="text" value="<%=e.getEmail()%>" id="Email" name="Email" style="width:500px">
                                                <br>
                                                <br>
                                                <h4>Username</h4>
                                                <input type="text" value="<%=m.getUserName()%>" id="Username" name="Username" style="width:500px">
                                                <br>
                                                <br>
                                                <h4>Password</h4>
                                                <input type="text" value="<%=m.getPassword()%>" id="Password" name="Password" style="width:500px">
                                                <br>
                                                <br>
                                                <input type="submit" name="Update" value="Update">
                                            </form>    
                                        </div>
                                        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

                                        <script src="js/index.js"></script>
                                        <script>
                            $(document).ready(function() {

                                        </script>
                                    </div>

                                </div>
                            </div>	
                        </div>
                        <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>Additional Information</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                            <div class="facts">
                                <div class="review">
                                    <div class="review-top">
                                        <h3>Our Followers</h3>	
                                    </div>
                                    <div class="follower">
                                        <div class="f1">
                                            <img src="images/f1.jpg" alt="" />
                                            <h4>John Doe</h4>
                                            <p>Proin et eleifend</p>
                                        </div>
                                        <div class="f1">
                                            <img src="images/f2.jpg" alt="" />
                                            <h4>Thomson</h4>
                                            <p>Proin et eleifend</p>
                                        </div>
                                        <div class="f1">
                                            <img src="images/f3.jpg" alt="" />
                                            <h4>Nelson</h4>
                                            <p>Proin et eleifend</p>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>	
                        </div>									
                        <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>Reviews</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                            <div class="facts">
                                <div class="review">

                                    <div class="gallery g1">
                                        <h3>Gallery</h3>
                                        <ul>
                                            <li><img src="images/1.jpg" alt="" /></li>
                                            <li><img src="images/2.jpg" alt="" /></li>
                                            <li><img src="images/3.jpg" alt="" /></li>
                                            <li><img src="images/4.jpg" alt="" /></li>
                                            <li><img src="images/5.jpg" alt="" /></li>
                                            <div class="clear"></div>
                                        </ul>
                                        <ul>
                                            <li><img src="images/6.jpg" alt="" /></li>
                                            <li><img src="images/7.jpg" alt="" /></li>
                                            <li><img src="images/8.jpg" alt="" /></li>
                                            <li><img src="images/9.jpg" alt="" /></li>
                                            <li><img src="images/10.jpg" alt="" /></li>
                                            <div class="clear"></div>
                                        </ul>
                                    </div>
                                </div>
                            </div>	
                        </div>
                    </div>
                </div>
            </div>	

        </div>	
    </div>	
    <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
    <script type="text/javascript">
                                    $(document).ready(function () {
                            $('#horizontalTab').easyResponsiveTabs({
                            type: 'default', //Types: default, vertical, accordion           
                                    width: 'auto', //auto or any width like 600px
                                    fit: true   // 100% fit in a container
                            });
                            });
    </script>	

    <div class="footer">
        <p>© 2016 GetEat!. All Rights Reserved</a> </p>
    </div>
</body>
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            