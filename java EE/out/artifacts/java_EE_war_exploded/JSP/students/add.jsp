
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

<form action="/addStudent" method="post">
    <div class="input-group input-group-lg mt-3">
        <span class="input-group-text">Name</span>
        <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="student_name">
    </div>
    <div class="input-group input-group-lg mt-3">
        <span class="input-group-text" >surname</span>
        <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="student_surname">
    </div>
    <div class="input-group input-group-lg mt-3">
        <span class="input-group-text" >birthdate</span>
        <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="student_birthdate">
    </div>
    <div class="input-group input-group-lg mt-3">
        <span class="input-group-text" >city ID</span>
        <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="student_city">
    </div>
    <button class="btn btn-success" mt-2>Add</button>
</form>
</div>
</body>
</html>
