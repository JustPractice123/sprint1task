<%@ page import="Spring2.Manager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css">
    <title>Details</title>
</head>
<body>
<%@include file="NavBar.jsp" %>
<%
    Manager m=(Manager)request.getAttribute("Task");
    if (m!=null){
%>
<form action="/Details" method="post">
    <input type="hidden" name="id" value="<%=m.getId()%>">
<div class="row">
    <div class="col-6 mx-auto">
        <p class="m-lg-1">Name: </p>
        <div class="input-group flex-nowrap">
            <input type="text" class="form-control mt-2" placeholder="Name" aria-label="Username"
                   aria-describedby="addon-wrapping" name="task_name" value="<%=m.getName()%>">
        </div>
        <div class="mb-3">
            <label for="message-text" class="col-form-label">Description: </label>
            <textarea class="form-control" id="message-text" name="task_descp"><%=m.getDescription()%></textarea>
        </div>
        <p class="m-lg-1">DeadLine: </p>
        <div class="input-group flex-nowrap">
            <input type="date" class="form-control mt-2" placeholder="DeadLine" aria-label="Username"
                   aria-describedby="addon-wrapping" name="task_dead" value="<%=m.getDeadlineDate()%>">
        </div>
        <p class="m-lg-1">Status: </p>
        <select class="form-select" aria-label="Default select example" name="task_status" value="<%=m.getStatus()%>">
            <option <%=(m.getStatus().equals("Finished")? "selected":"") %> >Finished</option>
            <option <%=(m.getStatus().equals("On Work")? "selected":"") %> >On Work</option>
        </select>
    </div>
</div>
<div class="col-6 mx-auto"style="display:flex;justify-content: end">
    <button class="btn btn-secondary mt-4 " data-bs-dismiss="modal" style="margin-right: 20px" name="btn" value="Save">Save</button>
    <button class="btn btn-primary mt-4" style="margin-right: 5px" name="btn" value="Delete">Delete</button>
</div>
</form>
<%
    }else {
%>
<h1 class="text-center">Client not found</h1>
<%
    }
%>
<script type="text/javascript" src="/js/bootstrap.bundle.js"></script>
</body>
</html>
