<%--
  Created by IntelliJ IDEA.
  User: ivan
  Date: 12.12.2022
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chsnge</title>
    <%@include file="header.jsp" %>
</head>
<body>

<%
    User item = (User) session.getAttribute("ses");
    if (item != null) {
%>
<form action="/saveitem" method="post">
    <input type="hidden" name="id" value="<%=item.getId()%>">
    <div class="input-group input-group-lg mt-3">
        <span class="input-group-text">Email</span>
        <input type="text" class="form-control" aria-describedby="inputGroup-sizing-lg" name="item_name"
               value="<%=item.getEmail()%>">
    </div>
    <div class="input-group input-group-lg mt-3">
        <span class="input-group-text">Nickname</span>
        <input type="text" class="form-control" aria-describedby="inputGroup-sizing-lg" name="item_price"
               value="<%=item.getNickname()%>">
    </div>
    <div class="input-group input-group-lg mt-3">
        <span class="input-group-text">Password</span>
        <input type="password" class="form-control" aria-describedby="inputGroup-sizing-lg" name="item_price"
               value="<%=item.getPassword()%>">
    </div>
    <div style="margin-top: 20px">
        <button class="btn btn-success" mt-2>Add</button>
    </div>
</form>
<%
    }
%>


</div>
</body>
</html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
      rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
      crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>