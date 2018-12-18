
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Product</title>
    </head>
    <body>
        <h3>Please enter a new product!</h3>
        <form:form action="./new_product" method="post" commandName="product">

            <div>
                <form:label path="name">Product name:</form:label><br/>
                <form:input path="name"/><br/>
            </div>

            <div>
                <form:label path="price">Product price:</form:label><br/>
                <form:input path="price"/><br/>
            </div>

            <div>
                <form:label for="photo" path="photo">Product photo:</form:label><br/>
                <form:input path="photo"/><br/>
            </div>

            <form:label path="category">Product category:</form:label><br/>
            <form:select path="category">
                <c:forEach items="${categoryes}" var="category">
                <option value="${category.id}">
                    ${category.name}
                </option>
            </c:forEach>
        </form:select><br/>
    </div>
    <div>
        <form:label path="manufacturer">Product manufacturer:</form:label><br/>
           <form:select path="manufacturer">
                <c:forEach items="${manufacturers}" var="manufacturer">
                <option value="${manufacturer.name}">
                    ${manufacturer.name}
                </option>
            </c:forEach>
        </form:select><br/>
    </div>

    <div>
        <form:label path="description">Product description:</form:label><br/>
        <form:textarea path="description"/><br/>
    </div>
    <input type="submit" value="Potvrdi unos"/>
</form:form>
</body>
</html>
