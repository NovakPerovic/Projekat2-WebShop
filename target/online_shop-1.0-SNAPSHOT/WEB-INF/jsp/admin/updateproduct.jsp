<%-- 
    Document   : updateproduct
    Created on : Jun 12, 2018, 10:37:22 PM
    Author     : Noko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update product</title>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <h3>
            <form method="post" action="updateproduct" enctype="multipart/form-data">
                <input type="hidden" name="id" value="${product.id}"/>
                Name:<input type="text" name="name" value="${product.name}"/></br>
                Price:<input type="text" name="price" value="${product.price}"/><br/>
                Select category:<br/>
                <select name="category">

                    <c:forEach items="${categories}" var="category">
                        <option <c:if test="${category.id==product.category}">selected=""</c:if> value="${category.id}">${category.name}</option>
                    </c:forEach>
                </select></br>
                <input type="file" name="photo"/><br/>
                
                <input type="submit" name="update" value="UPDATE PRODUCT"/>


            </form>
        </h3>
    </body>
</html>
