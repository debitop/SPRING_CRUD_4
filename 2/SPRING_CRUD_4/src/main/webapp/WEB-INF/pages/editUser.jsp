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

<form:form method="post" action="/edit" modelAttribute="user">
    <table>
        <tr>
            <td><form:label path="id">id</form:label></td>
            <td><form:input path="id" disabled="true"></form:input></td>
        </tr>
        <tr>
            <td><form:label path="name">name</form:label></td>
                <%--"name" из модели  --%>
            <td><form:input path="name"></form:input></td>
        </tr>
        <tr>
            <td><form:label path="isAdmin">isAdmin</form:label></td>
            <td><form:checkbox path="admin"></form:checkbox></td>
        </tr>
        <tr>
            <td><form:label path="age">age</form:label></td>
            <td><form:input path="age"></form:input></td>
        </tr>
    </table>
    <input type="submit" value="Save">
</form:form>


</body>
</html>
