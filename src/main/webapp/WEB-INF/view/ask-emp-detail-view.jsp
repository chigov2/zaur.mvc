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
    <br>
    <br>
    Surname <form:input path="surname"/>
    <br>
    <br>
    Salary <form:input path="salary"/>
    <br>
    <br>
    Department <form:select path="department">

    <form:options items="${employee.departments}"/></form:select>
    <br>


    <h3>        Witch car do you want?    </h3>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br>
    <br>

    Foreign language(s):
    <form:checkboxes path="languages" items="${employee.languageList}"/>

    <br>
    <input type="submit" value="OK">

</form:form>

</body>
</html>
