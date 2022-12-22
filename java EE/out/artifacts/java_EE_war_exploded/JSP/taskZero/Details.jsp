<%@ page import="Task_begin.Task" %><%--
  Created by IntelliJ IDEA.
  User: danov
  Date: 21.11.2022
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<head>
    <title>Details</title>
    <%@include file="NavBarTask4.jsp"%>
</head>
<body>
<%Task task=(Task) request.getAttribute("task");
%>

<form method="post" action="/home4?action=save&idid=<%=task.getId()%>">

         <div class="container" input-group>
             <label for="nameOfInput" class="mt-3 mb-1">
                 Наименование:
             </label>
             <div class="mb-3">
                 <input type="text" class="form-control" aria-label="Вводит название task-a" aria-describedby="inputGroup-sizing-default" value="<%=task.getName()%>" name="name" id="nameOfInput">
             </div>
             <label for="descriptionOfInput" class="mb-1">
                 Содержание:
             </label>
             <div class="mb-3">
                 <textarea class="form-control" aria-label="Вводит содержание task-a" name="context" id="descriptionOfInput"><%=task.getDescription()%></textarea>
             </div>
             <label for="dateOfInput" class="mb-1">
                 Крайний срок:
             </label>
             <div class="mb-3">
                <input type="date" class="form-control " aria-label="Вводит дату task-a" value="<%=task.getDeadlineDate()%>" id="dateOfInput" name="date">
             </div>
             <label for="nameOfPerfomance" class="mb-1">
                 Выполнено:
             </label>
             <div class="mb-3">
                 <select class="form-select" id="nameOfPerfomance" name="perfomance">
                     <%if (task.getPerformance().equals("YES")){
                         %>
                         <option value="YES" selected>Yes</option>
                         <option value="NO">No</option>
                     <%
                     } else {
                     %>
                         <option value="YES">Yes</option>
                        <option value="NO" selected>No</option>
                     <%
                     }
                     %>
                 </select>
             </div>
         </div>
         <div class="container" style="display: flex">
             <div>
                     <%
                     %>
                     <button  class="btn btn-success ms-2 me-2 ps-4 pe-4">Save</button>
                 </form>
             </div>
             <div>
                 <form method="post" action="/home4?action=dele&idid=<%=task.getId()%>">
                     <button class="btn btn-danger ms-2 me-2 ps-4 pe-4" >Delete</button>
                 </form>
            </div>
         </div>


</body>
</html>
