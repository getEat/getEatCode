<%-- 
    Document   : Halaman_Home_Tenant
    Created on : Apr 4, 2016, 10:41:16 PM
    Author     : tommynmanoppo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>GetEat!</title>
        <link href="css/styleProfile.css" rel="stylesheet" type="text/css" media="all"/>
        
        <link href="css/styleMenu.css" rel="stylesheet" type="text/css" media="all"/>
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
                    <h1>GetEat!</h1>
                </div>
<!--                 link to tenant home, profie editing and promotion page-->
                <div class="banner ban1">
                <div class="container">
                    <div align="center" class="top-menu">
                    <span class="menu"> alt=""/> </span>
                        <ul>
                            <li><a  href="index.html">home</a></li>
                            <li><a  href="about.html">about</a></li> 
                            <li><a  href="menu.html" class="active">menus</a></li>
                            <li><a  href="gallery.html">gallery</a></li>
                            <li><a  href="events.html">discount</a></li> 
                            <li><a  href="contact.html">contact</a></li>
                        </ul>
                       
                                    
                             <script>
                             $("span.menu").click(function(){
                             $(".top-menu ul").slideToggle("slow" , function(){
                             });
                             });
                             </script>
<!--                         //script for menu -->
                    
                   </div>
                </div>
                    </div>
                <br>
                <br>
                
                
                <!-- logout button -->
                <h2 font weight="normal" text align="right" style="color:red"><img src="images/profiledefault.jpg" alt="" /> Welcome,  <input type="submit" name="logout" value="logout"> </h2> 

                <br>

                <div class="content-main">
                    <div class="menu-offer">
                        <div class="container">
                            <div class="menu-head">
                                <center><h3 font size="14" font weight="normal" style="color:red">Your List Review</h3></center>
                                <center><p>This is all about your foods history reviews from foodhunters</p>
                                    <font size="2" color ="red"> *Review isn't relate with admin </font>
                                </center>
                            </div>
                            <br>
                            <br>
                            <div class="review-top">
                                <h3>Latest Reviews</h3>
                             <!-- looping for tenant related list review include photo, foodhunter names, foods name, the review and rating -->
                                <ul>
                                    <li class="left">
                                        <img src="images/ReviewPhotoDefault.jpg" alt="" />
                                        <div class="review-text">
                                            <h4>Sinta Jojo</h4>
                                            <p>Nama Makanan yang direview</p>
                                        </div>
                                    </li>
                                    <li class="right"><a href="#">(Rating)</a></li>
                                    <div class="clear"></div>
                                </ul>
                                <p class="rew"><font size="3" font weight="normal" style="color:white">Foodhunter Says  : </font>  This is places to foodhunters reviewed the foods and places.</p>
                                <ul>
                                    <li class="left">
                                        <img src="images/ReviewPhotoDefault.jpg" alt="" />
                                        <div class="review-text">
                                            <h4>Bu Siti</h4>
                                            <p>Nama Makanan yang direview</p>
                                        </div>
                                    </li>
                                    <li class="right"><a href="#">(Rating)</a></li>
                                    <div class="clear"></div>
                                </ul>
                                <p class="rew"><font size="3" font weight="normal" style="color:white">Foodhunter Says  : </font>  This is places to foodhunters reviewed the foods and places.</p>
                                <ul>
                                    <li class="left">
                                        <img src="images/ReviewPhotoDefault.jpg" alt="" />
                                        <div class="review-text">
                                            <h4>Balvier</h4>
                                            <p>Nama Makanan yang direview</p>
                                        </div>
                                    </li>
                                    <li class="right"><a href="#">(Rating)</a></li>
                                    <div class="clear"></div>
                                </ul>
                                <p class="rew"><font size="3" font weight="normal" style="color:white">Foodhunter Says  : </font>  This is places to foodhunters reviewed the foods and places.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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

