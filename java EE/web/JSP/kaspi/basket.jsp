<%@ page import="java.util.ArrayList" %>
<%@ page import="kaspi.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
    <title>Basket</title>
    <%@include file="header.jsp"%>
    <!-- JavaScript Bundle with Popper -->



</head>
<body>
<table class="table table-striped table-hover">
<tr>
    <th>Name</th>
    <th>Price</th>
    <th>Description</th>
    <th>Delete</th>
</tr>
    <% ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("basket");
    if(items!=null){
        for (Item gg: items){%>

        <tr>
        <td><%=gg.getName()%></td>
        <td><%=gg.getPrice()%></td>
        <td><%=gg.getDescription()%></td>
        <td>
<%--                <input type="hidden" name="name" value="<%=gg.getName()%>">--%>
            <button type="button" class="btn btn-danger ms-2" data-bs-toggle="modal" data-bs-target="#g<%=gg.getId()%>">
                DELETE
            </button>
        </td>
        </tr>
    <div class="modal fade" id="g<%=gg.getId()%>" data-bs-backdrop="static" data-bs-keyboard="false"
         tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="/KaspiDeleteBasketItem" method="post">
                    <input type="hidden" name="name" value="<%=gg.getId()%>">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Confirm Delete</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Are you shure?
                    </div>
                    <div class="modal-footer">
                        <button  class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                        <button  class="btn btn-primary">Yes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

<% if(gg.getName()==null){%>
    <div>
        <h1>Корзина пуста</h1>
    </div>
    Чтобы найти необходимые товары, воспользуйтесь поиском или каталогом.
    <form>
        <button>На главную</button>
    </form>
    <%
}
    }
}
%>
</table>
</body>
</html>
