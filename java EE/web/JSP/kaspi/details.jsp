<%@ page import="kaspi.Item" %>
<%@ page import="kaspi.Comment" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ivan
  Date: 20.12.2022
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>details</title>
    <%@include file="header.jsp" %>
</head>
<body>
<%
    Item item = (Item) request.getAttribute("item");
%>
<div class="d-flex justify-content-center">
    <div style="display: flex;justify-content: center;  flex-direction: column">
        <hr>
        <div class="d-flex justify-content-center">
            <%=item.getName()%>
        </div>
        <hr>
        <img width="600px" src="/JSP/kaspi/image/<%=item.getCategory().getName()%>.jpg">
        <hr>
        <div class="d-flex justify-content-center">
            <%=item.getPrice()%>$
        </div>
        <hr>
        <div class="d-flex justify-content-center">
            <%=item.getDescription()%>
        </div>
        <%
            User um = (User) request.getSession().getAttribute("em");
            if (um != null) {
        %>
        <hr>
        <form action="/addcomment" method="post">
            <input type="hidden" name="item_id" value="<%=item.getId()%>">
            <div class="d-flex justify-content-center">
                <textarea name="comment" style="width: 100%"></textarea>
            </div>
            <div style="margin-top: 30px" class="d-flex justify-content-center">
                <button class="btn" style="background-color: #e53b2c">Add Comment</button>
            </div>
        </form>

        <%
            }
            ArrayList<Comment> comments = (ArrayList<Comment>) request.getAttribute("comments");
            if (comments != null) {
                for (Comment gg : comments) {
        %>
        <hr>
        <h3><%=gg.getUser().getNickname()%> at <%=gg.getPostDate()%>
        </h3>
        <h4><%=gg.getComment()%>
        </h4>
        <%
            }
        }
        %>
    </div>
</div>

</body>
</html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
      rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
      crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>