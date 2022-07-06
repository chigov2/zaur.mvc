<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<html>
<head>
    <title>Details</title>
</head>
<body>
<h2>Welcome!!!</h2>

<h4>Your name: ${employee.name}</h4>

<h4>Your surname: ${employee.surname}</h4>

<h4>Your salary: ${employee.salary}</h4>

<h4>Your department: ${employee.department}</h4>

<h4>Your car: ${employee.carBrand}</h4>

<h4>Languages:</h4>
<ul>

   <c:forEach var="lang" items="${employee.languages}">
       <li>
           ${lang}
       </li>
   </c:forEach>
</ul>

<h3>
    Phone Number:  ${employee.phoneNumber}
</h3>

<h3>
    E-mail:  ${employee.email}
</h3>

</body>
</html>
