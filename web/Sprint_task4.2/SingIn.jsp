<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css">
    <title>SingIn</title>
</head>
<body>
<%@include file="NavBar.jsp" %>
<%
    Integer lol = 1;

    Integer zxc = (Integer) request.getAttribute("false");
%>
<form method="post" action="/SingIn">
    <div class="row col-4 mx-auto">
        <%
            if (zxc == lol) {
        %>
        <div class="mt-4 text-center">
            <div class="shadow p-3 mb-2 rounded" style="color: #ff0003; background-color: #ff7f70">USER IS NO FOUND</div>
        </div>
        <div class=" mx-auto">
            <p class="m-lg-1">Email: </p>
            <div class="input-group flex-wrap">
                <input type="text" class="form-control mt-2" placeholder="Email" aria-label="Username"
                       aria-describedby="addon-wrapping" name="user_mail">
            </div>
        </div>
        <div class=" mx-auto">
            <p class="m-lg-1">Password: </p>
            <div class="input-group flex-wrap">
                <input type="text" class="form-control mt-2" placeholder="Password" aria-label="Username"
                       aria-describedby="addon-wrapping" name="user_pass">
            </div>
            <button class="btn btn-primary mt-4" style="margin-left: 1px" name="btn">Login</button>
        </div>
        <%
        } else {
        %>
        <div class=" mx-auto">
            <p class="m-lg-1">Email: </p>
            <div class="input-group flex-wrap">
                <input type="text" class="form-control mt-2" placeholder="Email" aria-label="Username"
                       aria-describedby="addon-wrapping" name="user_mail">
            </div>
        </div>
        <div class=" mx-auto">
            <p class="m-lg-1">Password: </p>
            <div class="input-group flex-wrap">
                <input type="text" class="form-control mt-2" placeholder="Password" aria-label="Username"
                       aria-describedby="addon-wrapping" name="user_pass">
            </div>
            <button class="btn btn-primary mt-4" style="margin-left: 1px" name="btn">Login</button>
        </div>
        <%
            }
        %>
    </div>
    </div>
</form>
<script type="text/javascript" src="/js/bootstrap.bundle.js"></script>
</body>
</html>
