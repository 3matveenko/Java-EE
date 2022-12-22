<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create user</title>
    <%@include file="header.jsp" %>
</head>
<body>
<div style="display: flex; justify-content: space-between; margin-top: 50px">
    <div>
    </div>
    <%
        User ses = (User) request.getSession().getAttribute("em");
        if (ses == null) {
    %>
    <%
        User pass = (User) request.getAttribute("email");
        if (pass == null) {
    %>
    <form method="post" action="/KaspiForgotPass">
        <div class="mb-3">
            <label class="form-label">Email address</label>
            <input type="email" class="form-control" name="email" aria-describedby="emailHelp">
            <%
                Object error = request.getAttribute("error");
                if (error != null) {
            %>
            <div style="color:red" id="emailHelp" class="form-text">login not exists</div>
            <%
                }
            %>
            <button style="margin-top: 10px" class="btn btn-primary">Add</button>
        </div>
    </form>
    <%
    } else {
    %>
    <h3>your passord: <%=pass.getPassword()%>
    </h3>
    <form action="/KaspiHome" method="get">
        <button class="btn btn-primary">Login</button>
    </form>
    <%
        }
    } else {%>
    <h1>Hello : <%=ses.getNickname()%>
    </h1>
    <div style="display: flex">
        <form action="/KaspiUpdateUser" method="get">
            <button style="border: none;
                                background-color:#e53b2c;">Update
            </button>
        </form>
    </div>
    <%
        }
    %>

    <div>
    </div>
</div>
</body>
</html>
