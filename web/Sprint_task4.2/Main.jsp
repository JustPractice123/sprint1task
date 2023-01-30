<%@ page import="java.util.ArrayList" %>
<%@ page import="Sprint_Task4_2.Item" %>
<%@ page import="Sprint_Task4_2.DBShop" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BITLAB_Shop</title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css">
</head>
<body>
<%@include file="NavBar.jsp" %>
<div class="row">
    <div class="col-9 mx-auto" style="display: flex; flex-wrap: wrap">
        <%
            ArrayList<Item> items=(ArrayList<Item>)request.getAttribute("predmeti");
            if (items!=null){
                for (Item item : items){
        %>
        <div class="mt-4 mx-3">
            <div class="card text-center mb-3" style="width: 18rem; height: 250px">
                <div class="card-body">
                    <input type="hidden" value="<%=item.getId()%>">
                    <h5 class="card-title"><%=item.getName()%></h5>
                    <p class="card-text"><%=item.getPrice()%> $</p>
                    <div style="height: 80px">
                    <p class="card-text"><%=item.getDescription()%></p>
                    </div>
                    <button type="button" class="btn btn-primary">Buy Now</button>
                </div>
            </div>
        </div>
        <%
                }
            }
        %>
    </div>
</div>
<script type="text/javascript" src="/js/bootstrap.bundle.js"></script>
</body>
</html>
