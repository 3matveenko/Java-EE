<%@ page import="baby.Item" %>
<%@ page import="baby.Country" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Input</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
          crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>
    <%@include file="header.jsp" %>
</head>
<body>

<%
    Item item = (Item) request.getAttribute("item");
    if(item!=null){
%>
<form action="/saveitem" method="post">
    <input type="hidden" name="id" value="<%=item.getId()%>">
    <div class="input-group input-group-lg mt-3">
        <span class="input-group-text">Name</span>
        <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="item_name" value="<%=item.getName()%>">
    </div>
    <select class="from-select" name="item_country">
        <%
            ArrayList<Country> countries = (ArrayList<Country>) request.getAttribute("strany");
            System.out.println(countries);
            if(countries!=null){
                for(Country cn : countries){
        %>
        <option value="<%=cn.getId()%>">
            <%=cn.getName() + "/" + cn.getCode()%>
        </option>
        <%
                }
            }
        %>
    </select>
    <div class="input-group input-group-lg mt-3">
        <span class="input-group-text" >price</span>
        <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="item_price" value="<%=item.getPrice()%>">
    </div>
    <div class="input-group input-group-lg mt-3">
        <span class="input-group-text" >amount</span>
        <input type="text" class="form-control"  aria-describedby="inputGroup-sizing-lg" name="item_amount" value="<%=item.getAmount()%>">
    </div>
    <div>
        <button class="btn btn-success" mt-2>Add</button>
        <button type="button" class="btn btn-danger ms-2" data-bs-toggle="modal" data-bs-target="#deleteModal">
            DELETE ITEM
        </button>
    </div>
</form>

<div class="modal fade" id="deleteModal" data-bs-backdrop="static" data-bs-keyboard="false"
     tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="deleteitem" method="post">
                <input type="hidden" name="id" value="<%=item.getId()%>">
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
    <%
        }else {
    %>
    <h1 class="text-center">ITEM NOT FOUND</h1>
    <%
        }
    %>


</div>
</body>
</html>
