<%-- 
    Document   : confirm
    Created on : Jul 12, 2018, 9:23:59 PM
    Author     : Noko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <h3>
            You enter this product:
        </h3>
        <h1>name:${name}</h1>
        <h1>price:${price}</h1>
        <h1>photo:${photo}</h1>
        <h1>category:${category}</h1>
        <h1>manufacturer:${manufacturer}</h1>
        <h1>description: ${description}</h1>
    </body>
</html>
