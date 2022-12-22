<%@ page import="login.User" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body style="background:red">
        <div style="justify-content: center;margin-left: 750px">
            <%
                User em = (User) request.getSession().getAttribute("fail");
                if(em==null){
            %>
            <h1>Invalid Email</h1>
            <%
                }
            %>

            <%
                if(em!=null){
            %>
           <h1>Invalid password</h1>
            <%}%>
        </div>
        <form action="/" method="">
            <button style="background-color: chartreuse; width:300px;height:75px;
                margin-left: 750px">
                    try again
            </button>
        </form>
    </body>
</html>
