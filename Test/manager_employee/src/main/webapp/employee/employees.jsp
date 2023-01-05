<%--
  Created by IntelliJ IDEA.
  User: johntoan98gmail.com
  Date: 23/12/2022
  Time: 09:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>PRODUCTS</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
<%--    <div class="row">--%>
<%--        <h2 class="col-9">Xin chào ${account.username}</h2>--%>
<%--        <c:if test="${sessionScope.account != null}">--%>
<%--            <a href="/logout" class="btn btn-danger col-3">Logout</a>--%>
<%--        </c:if>--%>
<%--    </div>--%>

    <a href="/employee/createEmployee.jsp" class="btn btn-success">Create</a>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>ADDRESS</th>
            <th>PHONE</th>
            <th>SALARY</th>
            <th>DEPARTMENT</th>
            <th>EDIT</th>
            <th>DELETE</th>
            <div class="search-bar">
                <form class="search-form d-flex align-items-center" method="get" action="/search">
                    <input type="text" name="search" placeholder="Enter name of student" title="Enter search keyword">
                    <button type="submit" title="Search"><i class="bi bi-search"></i>Search</button>
                </form>
            </div>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="s" items="${employees}">
            <tr>
                <td>${s.id}</td>
                <td>${s.name}</td>
                <td>${s.email}</td>
                <td>${s.address}</td>
                <td>${s.phone}</td>
                <td>${s.salary}</td>
                <td>${s.department}</td>
                <td><a href="edits?id=${s.id}" type="button" class="btn btn-warning">Edit</a></td>
                <td><a href="deletes?id=${s.id}" type="button" class="btn btn-danger">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>

