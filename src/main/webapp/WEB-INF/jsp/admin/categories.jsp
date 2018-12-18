<%-- 
    Document   : categories
    Created on : Jun 10, 2018, 11:52:11 AM
    Author     : Noko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category</title>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <h1>Category</h1>
        <form method="post" action="updatecategory">
            <select onchange="if(this.value!=-1) window.location='./categories?id='+this.value" name="id">
                <option value="-1">Select category:</option>
                <c:forEach items="${categories}" var="category">
                    <option <c:if test="${category.id==selectedcategory.id}">selected=""</c:if> value="${category.id}">${category.name}</option>
                </c:forEach>
            </select></br>
            Name: <input type="text" name="name" value="${selectedcategory.name}"/></br>
            Description: <input type="text" name="description" value="${selectedcategory.description}"/></br>
            <input type="submit" name="update" value="UPDATE"/>
                   
        </form>
    </body>
</html>
