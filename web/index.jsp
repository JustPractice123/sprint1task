<%@ page import="java.util.ArrayList" %>
<%@ page import="Task2.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Items</title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">BITLAB Shop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/Items">ALL ITEMS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/AddItem">ADD ITEM</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<table class="table">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Price</th>
        <th scope="col">Amount</th>
        <th scope="col">Details</th>
    </tr>
    </thead>
    <tbody>
    <%
        ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("Items");
        int number=0;
        if (items != null) {
            for (Item i : items) {
                number++;
    %>
    <tr>
        <th scope="row"><%=number%></th>
        <td><%=i.getName()%></td>
        <td><%=i.getPrice()%></td>
        <td><%=i.getAmount()%></td>
        <td><button type="button" class="btn btn-light">Details</button></td>
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
