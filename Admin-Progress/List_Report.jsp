<%-- 
    Document   : newjsp
    Created on : Apr 13, 2016, 9:19:55 AM
    Author     : ASUS-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <title>GetEat! | Admin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/admin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,600,400italic,600italic,700' rel='stylesheet' type='text/css'>
    </head>
    <body>

        <div id="header">
            <div class="logo">
                <a href="#">Get<span>Eat!</span></a>
            </div>

        </div>


        <a class="mobile">MENU</a>


        <div id="container">

            <div class="sidebar">
                <ul id="nav">
                    <li><a href="Dashboard.jsp">Home</a></li>
                    <li><a href="List_Member.jsp">List Member</a></li>
                    <li><a class="selected"  href="List_Report.jsp">List Report</a></li>
                    <li><a href="Tambah_Tenant.jsp">Tambah Tenant</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>

            </div>

            <div class="content">
 
            </div>


        </div><!-- #container -->

        <script type="text/javascript">

            $(document).ready(function () {
                $("a.mobile").click(function () {
                    $(".sidebar").slideToggle('fast');
                });

                window.onresize = function (event) {
                    if ($(window).width() > 480) {
                        $(".sidebar").show();
                    }
                };


            });

        </script>

    </body>
</html>
