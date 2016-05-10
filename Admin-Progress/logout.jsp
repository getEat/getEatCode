<%-- 
    Document   : logout.jsp
    Created on : May 10, 2016, 3:26:20 PM
    Author     : ASUS-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%session.invalidate();%>
        <%response.sendRedirect("Login.html");%>
    </body>
</html>
