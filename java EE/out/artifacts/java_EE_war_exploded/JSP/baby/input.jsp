<%@ page import="java.util.ArrayList" %>
<%@ page import="baby.Country" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Input</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
          crossorigin="anonymous">
    <%@include file="header.jsp" %>
</head>
<body>

<form action="/additem" method="post">
<div class="input-group input-group-lg mt-3">
    <span class="input-group-text">Name</span>
    <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="item_name">
</div>
    <div class="input-group input-group-lg mt-3">

    <select class="form-select" aria-label="Default select example" name="item_counry">
        <%
            ArrayList<Country> countries = (ArrayList<Country>) request.getAttribute("strany");
            if(countries!=null){
                for(Country cn : countries){
        %>
        <option selected value="<%=cn.getId()%>">
            <%=cn.getName() + "/" + cn.getCode()%>
        </option>

        <%
                }
            }
        %>
        <option value="1">One</option>
        <option value="2">Two</option>
        <option value="3">Three</option>
    </select>
    </div>
<div class="input-group input-group-lg mt-3">
    <span class="input-group-text" >price</span>
    <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="item_price">
</div>
<div class="input-group input-group-lg mt-3">
    <span class="input-group-text" >amount</span>
    <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="item_amount">
</div>
        <button class="btn btn-success" mt-2>Add</button>
    </form>
    <form action="/AddItemServlet" method="post">
        <button class="btn btn-danger" mt-2>Danger</button>
</form>
    </div>
</body>
</html>



