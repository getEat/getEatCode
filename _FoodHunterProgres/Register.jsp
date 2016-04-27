<%-- 
    Document   : Register
    Created on : Apr 11, 2016, 8:40:54 PM
    Author     : Jonathan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>GetEat! | Register</title>

        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="css/styleRegister.css">
        <link rel="stylesheet" href="css/styleupload.css">

    </head>

    <body background="images/background3.jpg"> 
        <div class="register-form">
            <h1>GetEat!</h1>
            
            <div id='login'>
                <form action="RegisterServlet2" method="post">    
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
                    <br>

<!--                    <script>
                        function upload() {
                            document.getElementById("image_src").click();
                        }

                    </script>
                    <div class="container">
                        <center>
                            <img id="images" src="images/upload3.png" width="150" height="150" onclick="upload()" alt="hello"/>
                            <input type="file" name="image_src" id="image_src" />
                        </center>
                    </div>-->
                    <br>
                    <br>

                    <!--<button type="submit" class="log-btn">Register</button>  simpan semua atribut dalam database -->
                    
                    <input type="submit" name="Register" value="Register">
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

