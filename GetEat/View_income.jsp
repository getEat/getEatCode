<%@page import="Connection.DatabaseConnection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.swing.text.html.parser.Entity"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE HTML>
<html>
<head>
<title>GetEat! | Income FoodHunter</title>
<link href="css_foodhunter/foodhunter_bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css_foodhunter/styleHomeEaters.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js_foodhunter/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="css_foodhunter/foodhunter_style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }>
</script>
<meta name="keywords" content="User Interface Ui Kit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
					});
				});
		</script>
<!--Calender-->
 
		<link rel="stylesheet" href="css_foodhunter/foodhunter_clndr.css" type="text/css" />
		<script src="js_foodhunter/underscore-min.js"></script>
		<script src= "js_foodhunter/moment-2.2.1.js"></script>
		<script src="js_foodhunter/clndr.js"></script>
		<script src="js_foodhunter/site.js"></script>
  <!--End Calender-->
	</head>
	<body>
		<!--container-->
		<div class="container">
		  <!--main-content-->
                        <h1>GET EAT!</h1>
		        <h1>Home FoodHunter</h1>
		  <div class="main-content">
		    <!--top-header-->
				<div class="top-header">
				 <!--top-nav-->
					<div class="col-md-8 top-nav">
					  <span class="menu"> <img src="images/icon.png" alt=""></span>
						<ul class="res">
							<li><a href="View_Home_Foodhunter.jsp"> Home </a></li>
                                                        <li><a href="View_income.jsp"> Income </a></li>
                                                        
						</ul>
			<!-- script-for-menu -->
						 <script>
						   $( "span.menu" ).click(function() {
							 $( "ul.res" ).slideToggle( 300, function() {
							 // Animation complete.
							  });
							 });
						</script>
						<!-- /script-for-menu -->
				   </div>
				    <div class="col-md-4 serch1">
				    
			     </div>
				 <div class="clearfix"> </div>
				<!--top-nav-->
		 </div>
		  <!--top-header-->
		   <!--inner-content-->
		    <div class="inner-content">
			  <!--web-forms-->
			    <div class="web-forms">
				 <!--first-one-->
				 <div class="col-md-8 first-one">
                                     
				  <div class="first-one-inner">
                                      <form action="ServletIncome" method="post">
                                       Masukan Bulan : <select name="bulan"> 
  <option value="01">Januari</option>
  <option value="02">Februari</option>
  <option value="03">Maret</option>
  <option value="04">April</option>
  <option value="05">Mei</option>
  <option value="06">Juni</option>
  <option value="07">Juli</option>
  <option value="08">Agustus</option>
  <option value="09">September</option>
  <option value="10">Oktober</option>
  <option value="11">September</option>
  <option value="12">Desember</option>
                                       </select>
                                       Masukan Tahun : <select name="tahun"> 
  <option value="2016">2016</option>
  <option value="2017">2017</option>
  <option value="2018">2018</option>
  <option value="2019">2019</option>
  <option value="2020">2020</option>
                                       </select>
                                       <button type="submit" class="log-btn" >OK</button>
                                       </form>
                                           <br>
                                            <br>
                                       <table border="3" style="color: black">
                                          
            <tr>
                <td align="center"><font color="black"> Information </font></td>
                <td align="center"><font color="black"> Income </font></td>
                <td align="center"><font color="black"> Date </font></td>
            </tr>
            <%
//            Connection conn = koneksi.open();
//            ResultSet result;
//            Statement statement = conn.createStatement();
//                if (request.getParameter("bulan")!=null){
//                String que1 = "SELECT * FROM `income` WHERE DATE_FORMAT(Date, '%m-%Y')='"+request.getParameter("bulan")+"-"+request.getParameter("tahun")+"' and idMember='123456'";
//                ResultSet res = statement.executeQuery(que1);
//                while (res.next()) {
            %>
       
   <c:forEach items="${View_income}" var="p">
            <tr>
                <td align="center">${p.information}</td>
                <td align="center">${p.income}</td>
                <td align="center">${p.date}</td>
            </tr>
       
            </c:forEach>
            <%
//                }
//                }
            %>
        </table>
				   </div>
				   
			      </div>
                            </div>
                    </div>
				   <!--second-one-->
				 <div class="col-md-4 second-one">
				  
				         
			      </div>
				   <!--//second-one-->
				   <!--/third-one-->
				   <div class="col-md-4 first-one">
					    <div class="first-one-inner lost">
						      <%
                                        HttpSession s= request.getSession(true);
                                        
                                        
                Connection conn = DatabaseConnection.getDBConnection();
                Statement statement = conn.createStatement();
                if(s.getAttribute("Username")!= null){
                String que1 ="SELECT * FROM foodhunter f, member m WHERE m.username='"+s.getAttribute("Username")+"'";
                ResultSet res = statement.executeQuery(que1);
                while (res.next()) {
            %>
						    <div class="here">
								<div class="here-bottom">
                                                                    <img src="images_foodhunter/foto.jpg" alt="" height="90" width="90">
										<h4><%=res.getString("nama")%></h4>
										<h6><%=res.getString("tipe")%></h6>
                                                                                <br><h6 ><a href="View_Profile_FoodHunter.jsp">Lihat Profile</a></h6>
                                                                                <h6><a href="view_EditProfile_Foodhunter.jsp">Edit Profile</a></h6>
								</div>
							</div>
                                                    
                                                    
                                                     <% }
                
                }
            %>
					     </div>
						 <div class="deals">
							<div class="sap_tabs">	
									
									<script src="js_foodhunter/easyResponsiveTabs.js" type="text/javascript"></script>
									<script type="text/javascript">
										$(document).ready(function () {
											$('#horizontalTab').easyResponsiveTabs({
												type: 'default', //Types: default, vertical, accordion           
												width: 'auto', //auto or any width like 600px
												fit: true   // 100% fit in a container
											});
										});
									   </script>	
							</div>				
				         </div>
				      </div>
					  	<div class="clearfix"></div>
				   <!--//third-one-->
			    </div>
				  
			     </div>
				<!--main-content-->
				<!--start-copyright-->
				<div class="copy-right">
						<p>Copyright &copy; 2016 USer Interface Ui Kit. All rights  Reserved | Template by <a href="http://w3layouts.com">W3layouts</a></p>
				</div>
	<!--//end-copyright-->

		
	 <!--//container-->
	</body>
</html>
