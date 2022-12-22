<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="shop.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Shop</title>
        <%@include file="header.jsp"%>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
              crossorigin="anonymous">
    </head>
    <body>
            <div style="justify-content: space-between; display: flex; margin-top: 10px" >
                <form action="SessionShop?id=item 1 Price 10$" method="post">
                    <div class="card" style="width: 18rem;">
                        <img src="..." class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">item 1</h5>
                            <p class="card-text">Самый лучший item из всех items стоит всего 10$</p>
                            <button class="btn btn-primary">Хочу купить</button>
                        </div>
                    </div>
                </form>
                <form action="SessionShop?id=item 2 Price 20$" method="post">
                    <div class="card" style="width: 18rem;">
                        <img src="..." class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">item 1</h5>
                            <p class="card-text">Самый лучший item из всех items</p>
                            <button class="btn btn-primary">Хочу купить</button>
                        </div>
                    </div>
                </form>
                <form action="SessionShop?id=item 3 Price 30$" method="post">
                    <div class="card" style="width: 18rem;">
                        <img src="..." class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">item 1</h5>
                            <p class="card-text">Самый лучший item из всех items</p>
                            <button class="btn btn-primary">Хочу купить</button>
                        </div>
                    </div>
                </form>
                <form action="SessionShop?id=item 4 Price 40$" method="post">
                    <div class="card" style="width: 18rem;">
                        <img src="..." class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">item 1</h5>
                            <p class="card-text">Самый лучший item из всех items</p>
                            <button class="btn btn-primary">Хочу купить</button>
                        </div>
                    </div>
                </form>
                <form action="SessionShop?id=item 5 Price 50$" method="post">
                    <div class="card" style="width: 18rem;">
                        <img src="..." class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">item 1</h5>
                            <p class="card-text">Самый лучший item из всех items</p>
                            <button class="btn btn-primary">Хочу купить</button>
                        </div>
                    </div>
                </form>
            </div>


<%      ArrayList<String> itemm = (ArrayList<String>) session.getAttribute("itemname");
        if(itemm!=null){
        for(String dd: itemm){%>
            <%=dd%><br>
<%        }
}
%>

    </body>
</html>
