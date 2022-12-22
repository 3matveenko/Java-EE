<%--
  Created by IntelliJ IDEA.
  User: ivan
  Date: 30.11.2022
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <nav class="navbar navbar-expand-lg bg-Primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">BitLab Shop</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarScroll">
                <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/">All</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/addStudent">Add new student</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/AddSities">All cities</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</head>
<body>

</body>
</html>
