<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/18/2023
  Time: 11:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create new Staff</title>
  <style>
      .message{
          color: green;
      }
  </style>
</head>
<body>
<h1>Create new Staff</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/StaffServlet">Back to Staff List</a>
</p>
<form method="post">
    <fieldset>
        <legend>Staff information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Birthday: </td>
                <td><input type="text" name="birthday" id="birthday"></td>
            </tr>
            <tr>
                <td>Sex: </td>
                <td><input type="text" name="sex" id="sex"></td>
            </tr>
            <tr>
                <td>Phone: </td>
                <td><input type="text" name="phonenumber" id="phonenumber"></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input type="text" name="email" id="email"></td>
            </tr>
            <tr>
                <td>Address: </td>
                <td><input type="text" name="address" id="address"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create Staff"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
