<%@ page import="kaspi.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
              crossorigin="anonymous">
        <nav style="background-color: #e53b2c" class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <form action="/KaspiSession" method="get">
                    <button style="border: none;
                            background-color:#e53b2c;margin-right: 30px;margin-top: 10px ">Kaspi Shop</button>
                </form>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <%
                            User em = (User) request.getSession().getAttribute("em");
                            if(em!=null){
                        %>
                        <li class="nav-item">
                            <form action="/KaspiBasket" method="get">
                                <div>
                                    <button style="border: none;
                            background-color:#e53b2c;margin-right: 30px;margin-top: 10px ">Basket</button>
                                </div>
                            </form>
                        </li>
                        <%
                            }
                        %>
                    </ul>
                    <%
                    if(em!=null){
                        if(em.getAccess()==2){
                    %>
                    <form action="/KaspiForgotPass" method="get">
                        <div>
                            <button style="border: none;
                            background-color:#e53b2c;margin-right: 30px ">Account</button>
                        </div>
                    </form>
                    <%
                        }
                        if(em.getAccess()==1){
                    %>
                    <form action="KaspiAddItem" method="get">
                        <div>
                            <button style="border: none;
                            background-color:#e53b2c;margin-right: 30px ">Add item</button>
                        </div>
                    </form>
                    <%
                        }
                    %>
                    <form method="get" action="KaspiLogout" >
                        <div>
                            <button style="border: none;
                            background-color:#e53b2c;margin-right: 30px ">logout</button>
                        </div>
                    </form>
                    <%}%>
                </div>
            </div>
        </nav>
    </head>
<body>

</body>
</html>
