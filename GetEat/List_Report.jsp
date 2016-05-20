<%-- 
    Document   : newjsp
    Created on : Apr 13, 2016, 9:19:55 AM
    Author     : ASUS-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>GetEat! | Admin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/admin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
                    <li><a href="List_Member">List Member</a></li>
                    <li><a class="selected" href="List_Review">List Report</a></li>
                    
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>

            </div>

            <div class="content">
                <h1>List Review</h1>

                <div id="box">
                    <div class="box-top">List Review</div>
                    <div class="box-panel">
                        <table class="table table-condensed">
                            <thead>
                                <TR>
                                    <td span style="font-weight:bold" align="center">Id Review</td>
                                    <td span style="font-weight:bold" align="center">Useful</td>
                                    <td span style="font-weight:bold" align="center">Funny</td>
                                    <td span style="font-weight:bold" align="center">Rating</td>
                                    <td span style="font-weight:bold" align="center">Comment</td>
                                    <td span style="font-weight:bold" align="center">Status</td>
                                    <td span style="font-weight:bold" align="center">Report Details</td>
                                </TR>
                            </thead>
                            <c:forEach items="${List_Review}" var="p">
                                <tbody>
                                    <TR>
                                        <td align="center"> ${p.idReview}</td>
                                        <td align="center"> ${p.useful}</td>
                                        <td align="center"> ${p.funny}</td>
                                        <td align="center"> ${p.rating}</td>
                                        <td align="center" > ${p.comment}</td>
                                        <td align="center" > ${p.status}</td>
                                        <td align="center" > ${p.reportDetails}</td>
                                        
                                    </TR>
                                </tbody>
                            </c:forEach>
                        </table> 



                    </div>
                </div>

                <div id="box">
                    <div class="box-top">List Report</div>
                    <div class="box-panel">
                        <table class="table table-condensed">
                            <thead>
                                <TR>
                                    <td span style="font-weight:bold" align="center">Id Review</td>
                                    <td span style="font-weight:bold" align="center">Useful</td>
                                    <td span style="font-weight:bold" align="center">Funny</td>
                                    <td span style="font-weight:bold" align="center">Rating</td>
                                    <td span style="font-weight:bold" align="center">Comment</td>
                                    <td span style="font-weight:bold" align="center">Status</td>
                                    <td span style="font-weight:bold" align="center">Report Details</td>
                                </TR>
                            </thead>
                            <c:forEach items="${List_Report}" var="p">
                                <tbody>
                                    <TR>
                                        <td align="center"> ${p.idReview}</td>
                                        <td align="center"> ${p.useful}</td>
                                        <td align="center"> ${p.funny}</td>
                                        <td align="center"> ${p.rating}</td>
                                        <td align="center" > ${p.comment}</td>
                                        <td align="center" > ${p.status}</td>
                                        <td align="center" > ${p.reportDetails}</td>
                                        <td><a href="Hapus_Review?id=${p.idReview}">Hapus</a></td>
                                    </TR>
                                </tbody>
                            </c:forEach>
                        </table> 



                    </div>
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
