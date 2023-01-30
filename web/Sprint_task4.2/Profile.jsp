<%@ page import="Sprint_Task4_2.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css">
    <title>Title</title>
</head>
<body>
<%@include file="NavBar.jsp" %>
<form action="/YourProfile" method="post">
<div class="row  col-6 mx-auto">
    <div class="text-center">
        <h1>Hello <span><%=user.getFullName()%></span></h1>
        <h5>This is your profile page</h5>
    </div>
    <div class="mt-2 text-center">
        <button class="btn btn-primary mt-4" style="margin-left: 1px" name="btn">Log out</button>
    </div>
</div>
</form>
<script type="text/javascript" src="/js/bootstrap.bundle.js"></script>
</body>
</html>
