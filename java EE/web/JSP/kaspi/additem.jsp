<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Additem</title>
    <%@include file="header.jsp"%>
</head>
<body>

<form action="/KaspiAddItem" method="post">
    <div class="input-group input-group-lg mt-3">
        <span style="background-color:#e53b2c " class="input-group-text">Name</span>
        <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="add_name">
    </div>
    <div class="input-group input-group-lg mt-3">
        <span style="background-color:#e53b2c " class="input-group-text" >Price</span>
        <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="add_price">
    </div>
    <div class="input-group input-group-lg mt-3">
        <span style="background-color:#e53b2c " class="input-group-text" >Description</span>
        <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="add_description">
    </div>
    <div class="input-group input-group-lg mt-3">
        <span style="background-color:#e53b2c" class="input-group-text" >Category</span>
        <select class="form-select" aria-label="Default select example" name="add_category">
            <option selected value="1">
                Телефоны
            </option>
            <option value="2">
                Ноутбуки
            </option>
        </select>
    </div>
    <button style="margin-top: 15px; margin-left:800px; padding-left: 50px;padding-right: 50px;
    background-color: #e53b2c"
            class="btn">Add</button>
</form>
</div>
</body>
</html>
