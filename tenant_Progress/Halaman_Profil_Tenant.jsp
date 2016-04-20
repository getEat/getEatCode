<%-- 
    Document   : Halaman_Profil_Tenant
    Created on : Apr 5, 2016, 2:24:41 PM
    Author     : tommynmanoppo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <title>GetEat!</title>
        <link href="css/styleProfile.css" rel="stylesheet" type="text/css" media="all"/>
        <!-- Custom Theme files -->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        
        <meta name="keywords" content="Flat Reviews Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free web designs for Nokia, Samsung, LG, sony ericsson, Motorola web design" />
        <link href='//fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Titillium+Web:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900' rel='stylesheet' type='text/css'>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Food and Drink Ui Kit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/style.css" rel='stylesheet' type='text/css' />
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
                    <h1>Profile </h1>
                </div>
                <br>
                <br>
                <!-- link to tenant home, editing profile, and promotion -->
                <center> <font size ="+2" color ="white">  <a href="home.jsp" style="color:white">HOME</a> | <a href="" style="color:white">PROFILE</a> | <a href="" style="color:white">PROMOTION</a> </font> </center>
                <!-- logout button -->
                

                <br>
                
                    <div class="header">
                        
                        <div class="text">
                            <!-- get data tenant -->
                           
                             <img src="images/profiledefault.jpg" alt="" />
                            <div class="text-left">
                                 
                                <h2>Ayam Penyet</h2>
                                <p>
                                    Owner : Cak Koplo</p>
                            </div>
                            <div class="text-left2">
                                 <input type="submit" name="logout" value="logout">
                            </div>
                               </div>
                        <div class="text1">
<!-- edit data tenant include photo, name, address, username, password -->
                            <input type="file" name="browse" value="BROWSE">
                        </div>
                         <!--<div class="sap_tabs">-->	
                        <!--<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">-->

                            <div class="resp-tabs-container">
                                
                                    <div class="facts">
                                        <div class="review">
                                            <div class="login">
                                                
                                                <br>
                                               
                                                <form method="post" action="tenantServlet" name="uptenant">
                                                    
                                                    <p style="margin-left: 5px">ID Tenant     : <input type="text" readonly="readonly" name="idtenant" value="<c:out value="${ten.idtenant}" />">
                                                        Username   : <input type="text" name="user" value="<c:out value="${ten.user}" />"></p>
                                                    <br>
                                                    <p style="margin-left: 5px">Name     : <input type="text" name="nama" value="<c:out value="${ten.nama}" />">
                                                     Password     : <input type="password" name="password" value="<c:out value="${ten.password}" />"></p>
                                                    <br>
                                                    <p style="margin-left: 5px">Address  : <input type="text" name="address" value="<c:out value="${ten.address}" />">
                                                        Owner     : <input type="text" name="owner" value="<c:out value="${ten.owner}" />" ></p>
                                                    <br>
                                                   <p class="submit"><input type="submit" name="commit" value="Save"></p>
                                                    <div class="clearfix"> </div>
                                                </form>

                                            </div>
                                            <!--					<form>
                                                                                        <h3>Edit Profile  </h3>
                                                                                        <br>
                                                                                    
                                                                                 
                                                                                 
                                                                                            <table style="text-align: left; margin-left: auto; margin-right: auto; border-spacing: 40px 10px;">
                                                                                                
                                                                                                <tr>               
                                                                            <td >Name  </td><td>: </td><td><input placeholder="Tenant/Brand Name's" type="text" name="name" size='27px'></td>
                                                                                                </tr> 
                                                                                                
                                                                         <tr>
                                                                            <td>Address </td><td width="3">: </td><td><input placeholder="Tenant Address" type="text" name="address" size='27px'></td>
                                                                        </tr>
                                                                        
                                                                         <tr>
                                                                            <td>Owner </td><td width="3">: </td><td><input placeholder="Tenant Owner" type="text" name="owner" size='27px'></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Username </td><td width="3">: </td><td><input placeholder="username" type="text" name="username" size='27px'></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Password </td><td width="3">: </td><td><input placeholder="password" type="text" name="password" size='27px'></td>
                                                                        </tr>
                                                                        <tr>
                                                                            
                                                                            <td>
                                                                            <input type='submit' name='daftar' value='Save'>	
                                                                            </td>
                                                                        </tr>
                                                                                               
                                                                                            </table>
                                                                                            
                                                                                                    
                                                                                            
                                                                                 </form>	-->

                                        <!--</div>-->	
                                    <!--</div>-->

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
<!--footer-starts-->
<div class="footer">
    <div class="container">
        <div class="footer-text">
            
            <p>© 2016 GetEat! </p>
       
        </div>
    </div>
</div>
<!--footer-end-->
</body>
</html>