<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Max2
  Date: 05.07.2022
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Please enter your details</title>
</head>
<body>
<h2>Please enter your details</h2>
<br>

<form:form action="showDetails" modelAttribute="employee">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br>
    <br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br>
    <br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br>
    <br>
    Department: <form:select path="department">

    <form:options items="${employee.departments}"/>
    </form:select>
    <br>


    <h3>        Witch car do you want?    </h3>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br>
    <br>

    <h3>Foreign language(s):</h3>
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br>
    <br>
    Phone Number: <form:input path="phoneNumber" placeholder="38-067-430-89-88"/>
    <form:errors path="phoneNumber"/>
    <br>
    <br>
    E-mail <form:input path="email"/>
    <form:errors path="email"/>
    <br>

    <br>
    <input type="submit" value="OK">

</form:form>

</body>
</html>
