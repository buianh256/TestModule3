<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: ad
  Date: 29/11/2023
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/list.css" />" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <div class="col-12 col-md-12">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6 title-text">
                        Student Management
                        <a href="/student?action=addStudent" class="btn btn-success">Add new</a>
                    </div>
                    <div class="col-md-6">
                        <form action="/student" method="get">
                            <input type="text" name="keyword" value="<c:out value="${keyword}"/>"/>
                            <button type="submit">Search</button>
                        </form>
                    </div>
                </div>


            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">DateOfBirth</th>
                        <th scope="col">Email</th>
                        <th scope="col">Address</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Classroom</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${students}" var="student">
                        <tr>
                            <td>${student.getId()}</td>
                            <td>${student.getName()}</td>
                            <td>${student.getDateOfBirth()}</td>
                            <td>${student.getEmail()}</td>
                            <td>${student.getAddress()}</td>
                            <td>${student.getPhone()}</td>
                            <td>${student.getClassroom()}</td>
                            <td>
                                <a onclick="return confirm('Are you sure?')" href="${pageContext.request.contextPath}/student?action=delete&id=<c:out value="${student.getId()}"/>" class="btn btn-danger">Delete</a>
                                <a href="${pageContext.request.contextPath}/student?action=update&id=<c:out value="${student.getId()}"/>" class="btn btn-primary">Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>