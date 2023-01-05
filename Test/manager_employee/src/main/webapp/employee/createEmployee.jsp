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
    <title>Create Employee</title>
</head>
<body>
<h1>Create Employee</h1>
<a href="/employees" class="btn btn-warning">Back to List Employee</a>
<form method="post" action="/create">
    <input name="name" placeholder="nhập name"><br>
    <input name="email" placeholder="nhập email"><br>
    <input name="address" placeholder="nhập address"><br>
    <input name="phone" placeholder="nhập phone"><br>
    <input name="salary" placeholder="nhập salary"><br>



    <select id="department" name="department" style="width: 170px">
        <option value="department" selected>Department</option>
        <option value="c09">C09</option>
        <option value="c10">C10</option>
        <option value="c08">C08</option>
    </select><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
