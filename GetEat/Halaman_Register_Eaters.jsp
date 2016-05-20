<%-- 
    Document   : Register
    Created on : Apr 13, 2016, 10:05:57 PM
    Author     : Jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>GetEat! | Register</title>

        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="css/styleRegister.css">
        <link rel="stylesheet" href="css/styleupload.css">
    </head>

    <div class="login-form">
            <h1>GetEat!</h1>
            <div id='login'>
                <form action="RegisterServlet" method="post">    
                    <div class="form-group ">
                        <input type="text" class="form-control" placeholder="Nama" name="Nama"> <!-- memasukkan atribut nama dan akan disimpan dalam atribut nama pada class Eaters -->
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="form-group ">
                        <input type="text" class="form-control" placeholder="Alamat" name="Alamat"> <!-- memasukkan atribut alamat dan akan disimpan dalam atribut alamat pada class Eaters -->
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="form-group ">
                        <input type="text" class="form-control" placeholder="Email" name="Email"> <!-- memasukkan atribut email dan akan disimpan dalam atribut email pada class Eaters -->
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="form-group ">
                        <input type="text" class="form-control" placeholder="Username" name="Username"> <!-- memasukkan atribut username dan akan disimpan dalam atribut username pada class Member status Eaters -->
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="form-group ">
                        <input type="password" class="form-control" placeholder="Password" name="Password"> <!-- memasukkan atribut password dan akan disimpan dalam atribut password pada class Member status Eaters -->
                        <i class="fa fa-user"></i>
                    </div>
                    <button type="button" id='register-button' class="log-btn" >Register</button>
                    <br>
                    <br>
                    <a href="Login.html"><button type="button" id='register-button' class="log-btn" >Back</button></a>
                </form>
            </div>
        </div>


                <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

                <script src="js/index.js"></script>
                <script>
                                    $(document).ready(function() {

                </script>


                </body>
                </html>

