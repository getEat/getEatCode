<%-- 
    Document   : View_Registrasi_Foodhunter
    Created on : Apr 6, 2016, 7:20:32 AM
    Author     : Putra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>GetEat! | Register Food Hunter</title>



        <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="css/RegisFHstyle.css">
    </head>
    <body>
        <div class="login-form">
            <h1>GetEat!</h1>
            <h3>Register FoodHunter!</h3>
            <div id='Register'>
                <form action="ServletRegister" method="get">
                <div class="form-group ">
                    <input type="text" class="form-control" placeholder="Id Member" id="IdMember" name="id">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="User Name" id="UserName" name="nama">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Sosial Media" id="SosialMedia" name="sm">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Email" id="Email" name="email">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Password" id="Password" name="pass">
                </div>

                <!--      <span class="alert">Password Salah</span>-->
                <br><button type="submit" class="log-btn" >OK</button><br>

                <br>
                <a href = ""> <button type="button" id='register-button' class="log-btn" >BACK</button> </a>
                <br>
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
