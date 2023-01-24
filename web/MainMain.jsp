<%@ page import="java.util.ArrayList" %>
<%@ page import="Spring2.Manager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TaskManager</title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css">
</head>
<body>
<%@include file="NavBar.jsp"%>
<button type="button" class="btn btn-primary mt-2 m-lg-2" data-bs-toggle="modal" data-bs-target="#staticBackdrop"
        style="background-color: darkblue; color: #dee2e6">
    + Add Task
</button>
<form action="/Main" method="post">
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Add Task</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p class="m-lg-1">Name: </p>
                <div class="input-group flex-nowrap">
                    <input type="text" class="form-control mt-2" placeholder="Name" aria-label="Username" aria-describedby="addon-wrapping" name="task_name">
                </div>
                <div class="mb-3">
                    <label for="message-text" class="col-form-label">Description: </label>
                    <textarea class="form-control" id="message-text" name="task_descp"></textarea>
                </div>
                <p class="m-lg-1">DeadLine: </p>
                <div class="input-group flex-nowrap">
                    <input type="date" class="form-control mt-2" placeholder="DeadLine" aria-label="Username" aria-describedby="addon-wrapping" name="task_dead">
                </div>
                <p class="m-lg-1">Status: </p>
                <select class="form-select" aria-label="Default select example" name="task_status">
                    <option value="Finished">Finished</option>
                    <option value="On Work">On Work</option>
                </select>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button class="btn btn-primary">Add Task</button>
            </div>
        </div>
    </div>
</div>
</form>
<table class="table table-hover">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>DeadLine</th>
        <th>Status</th>
        <th>Details</th>
    </tr>
    </thead>
    <tbody>
    <% ArrayList<Manager> tasks = (ArrayList<Manager>) request.getAttribute("vopros");
        if (tasks != null) {
            for (Manager m : tasks) {
    %>
    <tr>
        <td><%=m.getId()%>
        </td>
        <td><%=m.getName()%>
        </td>
        <td><%=m.getDescription()%>
        </td>
        <td><%=m.getDeadlineDate()%>
        </td>
        <td><%=m.getStatus()%>
        </td>
        <td><a href="/Details?id=<%=m.getId()%>" class="btn btn-primary btn-sm">Details</a>
        </td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
<script type="text/javascript" src="/js/bootstrap.bundle.js"></script>
</body>
</html>
