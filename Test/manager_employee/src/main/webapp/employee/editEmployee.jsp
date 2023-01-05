<%--
  Created by IntelliJ IDEA.
  User: johntoan98gmail.com
  Date: 23/12/2022
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit Employee</title>
</head>
<body>
<h1>Edit Employee</h1>
<form method="post">
  <input name="name" placeholder="nhập name" value="${e.name}"><br>
  <input name="email" placeholder="nhập email" value="${e.email}"><br>
  <input name="address" placeholder="nhập address" value="${e.address}"><br>
  <input name="phone" placeholder="nhập phone" value="${e.phone}"><br>
  <input name="salary" placeholder="nhập email" value="${e.salary}"><br>


  <select id="department" name="department" style="width: 170px">
    <option value="${e.department}" selected>${e.department}</option>
    <option value="c09">C09</option>
    <option value="c10">C10</option>
    <option value="c08">C08</option>
  </select><br>
  <button type="submit">Edit</button>
</form>
</body>
</html>
