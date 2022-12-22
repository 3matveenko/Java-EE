
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create user</title>
    <%@include file="header.jsp"%>
</head>
  <body>
    <div style="display: flex; justify-content: space-between; margin-top: 50px">
      <div >
      </div>
      <form method="post" action="/KaspiCreateUser">
        <div class="mb-3">
          <label class="form-label">Email address</label>
          <input type="email" class="form-control" name="email" aria-describedby="emailHelp">
          <%
            Object email = request.getAttribute("em");
            if(email!=null){

          %>
          <div style="color:red" id="emailHelp" class="form-text" >login exists</div>
          <%
            }
          %>
        </div>
        <div class="mb-3">
          <label  class="form-label">Password</label>
          <input type="password" class="form-control" name="password" id="exampleInputPassword1">
        </div>
        <div class="mb-3">
          <label class="form-label">Nickname</label>
          <input name="nickname" class="form-control">
        </div>
        <button class="btn btn-primary">Add new user</button>
      </form>
      <div>
      </div>
    </div>
  </body>
</html>
