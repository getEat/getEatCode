<%-- 
    Document   : Report
    Created on : Apr 26, 2016, 10:34:41 PM
    Author     : Jonathan
--%>

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
        <link href="css/styleUsefulFunnyComment.css" rel='stylesheet' type='text/css' />
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
                <div class="content-main">
                    <div class="content-left">

                        <div class="meal">
                            <div class="meal-left">
                                <img src="images/berger-banner.jpg" alt="" />
                                <div class="berger-top">
                                    <h3>Mystery Box Burger</h3>
                                    <p>Step by step recipe</p>
                                    <span>- 20 min</span>
                                </div>
                                <div class="berger-side">
                                    <a href="#"><span></span></a>
                                    <p>4.8</p>
                                </div>
                                <div class="berger">
                                    <div class="callbacks_container">
                                        <li>
                                            <div align ="center" class="br1">
                                                <!-- <h4>1</h4> -->
                                                <p>Go to Profile Tenant</p>								
                                            </div>
                                        </li>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>

                                <br>
                                
                                <div class="clearfix"> </div>


                                <div id="comment_form">

                                    <form action="ReportServlet" method="post">
                                        <div>
                                            <textarea rows="10" name="report" id="report" placeholder="Report Details"></textarea>
                                            <!-- memberi nilai atribut comment pada id_review tersebut  -->
                                        </div>
                                        <div>
                                            <input type="submit" name="submit" value="Report">
                                            <!-- menyimpan comment yang diketik eaters pada review tersebut pada database-->
                                            <!--<input type="submit" name="submit" value="Report">-->
                                            <!-- jika klik akan masuk pada halaman report-->
                                        </div>
                                    </form>
                                </div>

                            </div>
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

