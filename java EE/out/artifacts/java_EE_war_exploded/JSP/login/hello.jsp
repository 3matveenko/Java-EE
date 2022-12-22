<%@ page import="java.util.ArrayList" %>
<%@ page import="login.User" %>
<%@include file="header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
<% User e = (User) request.getSession().getAttribute("hello");

%>  <h1>Welcome!</h1>
    <h1>Name: <%=e.getFull_name()%></h1>
    </body>
</html>
