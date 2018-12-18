<%-- 
    Document   : products
    Created on : Jun 12, 2018, 6:55:31 PM
    Author     : Noko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <br/>
        <h4><a href="./new_product">New product</a></h4>
        <table border="1">
            <tr>
                <td>Id </td> <td>Name </td> <td>Price </td> <td> Photo</td><td>Description </td>
            </tr>

            <c:forEach items="${products}" var="product">
                <tr>
                    <td>${product.id}</td> <td>${product.name} </td> <td>${product.price} </td> <td><img src="../resources/images/${product.photo}"/> </td><td>${product.description} </td><td><a href="updateproduct?id=${product.id}">edit</a></td>
                </tr>

            </c:forEach>
                        <tr><td colspan="6">
                                
                                <c:forEach begin="1" end="${totalpages+1}" varStatus="counter">
                                  <a href="products?page=${counter.count}">${counter.count}</a> 
                                </c:forEach>
                                
                    </td></tr>
        </table>


    </body>
</html>
