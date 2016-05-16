<%-- 
    Document   : index
    Created on : May 13, 2016, 5:42:22 PM
    Author     : tommynmanoppo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <jsp:forward page="/tenantServlet?action=listReview" />
    </body>
</html>
