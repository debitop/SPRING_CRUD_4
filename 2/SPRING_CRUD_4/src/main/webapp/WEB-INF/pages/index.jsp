<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Саша
  Date: 10.07.2018
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table cellpadding="1" cellspacing="1" border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>isAdmin</td>
        <td>age</td>
        <td>created date</td>
    </tr>

    <tr>
        <c:forEach var="user" items="${users}">
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.name}"/></td>
            <td><c:out value="${user.admin}"/></td>
            <td><c:out value="${user.age}"/></td>
            <td><c:out value="${user.createDate}"/></td>
            <td><a href="/del/${user.id}">Delete</a></td>
            <td><a href="/edit/${user.id}">Edit</a></td>

        </c:forEach>
    </tr>


</table>

<p><a href="/add">Add User</a></p>

</body>
</html>
