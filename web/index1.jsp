<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Item</title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css">
</head>
<body>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">BITLAB Shop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
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
<form action="/AddItem" method="post">
    <div class="col-6 mx-auto">
        <p class="mt-2">Name:</p>
        <input type="text" class="form-control" placeholder="ItemName" aria-label="Username"
               aria-describedby="addon-wrapping"  name="user_name">
    </div>
    <div class="col-6 mx-auto">
        <p class="mt-2">Price:</p>
        <input type="text" class="form-control" placeholder="Price" aria-label="Username"
               aria-describedby="addon-wrapping"  name="user_price">
    </div>
    <div class="col-6 mx-auto">
        <p class="mt-2">Amount:</p>
        <input type="text" class="form-control" placeholder="Amount" aria-label="Username"
               aria-describedby="addon-wrapping" name="user_amount">
    </div>
    <div class="col-6 mx-auto">
        <button class="btn bg-body-tertiary mt-4">Add Item</button>
    </div>
</form>
<script type="text/javascript" src="/js/bootstrap.bundle.js"></script>
</body>
</html>
