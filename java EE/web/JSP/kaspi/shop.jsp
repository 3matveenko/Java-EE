<%@ page import="java.util.ArrayList" %>
<%@ page import="kaspi.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Shop</title>
    <%@include file="header.jsp" %>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
      rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
      crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="/JSP/kaspi/image/iphoneb.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="/JSP/kaspi/image/note.webp" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="/JSP/kaspi/image/content.jpg" class="d-block w-100" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Предыдущий</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Следующий</span>
    </button>
</div>
<div class=" d-flex justify-content-center">
    <div class="col-8 text-center">
        <div class="row text-center">
            <%
                ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("tovary");
                if (items != null) {
                    for (Item it : items) {%>
            <div class="mt-3 mb-3 d-flex justify-content-center col-4">
                <div class="card" style="width: 18rem;">
                    <img src="/JSP/kaspi/image/<%=it.getCategory().getName()%>.jpg">
                    <div class="card-body">
                        <h5 class="card-title"><%=it.getName()%>
                        </h5>
                        <p class="card-text"><%=it.getDescription()%>
                        </p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><%=it.getPrice()%>$</li>
                    </ul>
                    <div style="display: flex" class="card-body">
                        <form action="/KaspiBasket" method="post">
                            <input type="hidden" name="id_basket" value="<%=it.getId()%>">
                            <button style="margin-top: 10px;margin-left: 40px; background-color: #e53b2c"
                                    class="btn">By now
                            </button>
                        </form>
                        <form action="/KaspiDetails" method="get">
                            <input type="hidden" name="id" value="<%=it.getId()%>">
                            <button style="margin-top: 10px;margin-left: 40px;background-color: #e53b2c"
                                    class="btn" name="id">Details
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            <%
                    }
                }
            %>
        </div>
    </div>
</div>
</body>
</html>
