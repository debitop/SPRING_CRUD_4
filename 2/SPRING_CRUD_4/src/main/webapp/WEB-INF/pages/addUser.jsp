<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<form method="post" action="/add">
    <table border="1" cellspacing="1" cellpadding="1">
        <tr>
            <td>Name</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>isAdmin?</td>
            <td><input type="checkbox" name="admin"></td>
        </tr>
        <tr>
            <td>Age</td>
            <td><input type="text" name="age"></td>
        </tr>
    </table>
    <input type="submit" value="OK">
</form>
</body>
</html>
