<%@ page import="java.util.ArrayList" %>
<%@ page import="Task_begin.Task" %><%--
  Created by IntelliJ IDEA.
  User: danov
  Date: 21.11.2022
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<i class="bi bi-search"></i>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<head>
    <title>TasksManager</title>
    <%@include file="NavBarTask4.jsp" %>
</head>
<body>
<div class="container">
    <!-- Кнопка-триггер модального окна -->
    <button type="button" class="btn btn-success mt-2 mb-2" data-bs-toggle="modal" data-bs-target="#exampleModal">
        Add new task
    </button>
    <!-- Модальное окно -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form method="post" action="/ServletDetails">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Adding new task</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
                    </div>
                    <div class="modal-body">
                        <div class="container" input-group>
                            <label for="nameOfInput" class="mt-3 mb-1">
                                Наименование:
                            </label>
                            <div class="mb-3">
                                <input type="text" class="form-control" aria-label="Вводит название task-a"
                                       aria-describedby="inputGroup-sizing-default"
                                       name="name" id="nameOfInput">
                            </div>
                            <label for="descriptionOfInput" class="mb-1">
                                Содержание:
                            </label>
                            <div class="mb-3">
                                        <textarea class="form-control" aria-label="Вводит содержание task-a" name="context"
                                                  id="descriptionOfInput"></textarea>
                            </div>
                            <label for="dateOfInput" class="mb-1">
                                Крайний срок:
                            </label>
                            <div class="mb-3">
                                <input type="date" class="form-control " aria-label="Вводит дату task-a"
                                       id="dateOfInput" name="date">
                            </div>
                            <label for="nameOfPerfomance" class="mb-1">
                                Выполнено:
                            </label>
                            <div class="mb-3">
                                <select class="form-select" id="nameOfPerfomance" name="perfomance">
                                    <option value="YES" selected>Yes</option>
                                    <option value="NO">No</option>
                                </select>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                            Закрыть
                                        </button>
                                        <button class="btn btn-primary">Сохранить изменения</button>
                                    </div>

                </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <table class="table text-center">
        <thead style="background-color: #e3fce1">
        <tr>
            <th scope="col">
                ID
            </th>
            <th scope="col">
                Наименование
            </th>
            <th scope="col">
                Крайний срок
            </th>
            <th scope="col">
                Выполнено
            </th>
            <th scope="col">
                Детали
            </th>
        </tr>
        </thead>
        <tbody>
        <%
            ArrayList<Task> tasks = (ArrayList<Task>) request.getAttribute("tasks");
            for (Task task : tasks) {
        %>
        <tr>
            <td scope="row">
                <%=task.getId()%>
            </td>
            <td scope="row">
                <%=task.getName()%>
            </td>
            <td scope="row">
                <%=task.getDeadlineDate()%>
            </td>
            <td scope="row">
                <%=task.getPerformance()%>
            </td>
            <td scope="row">
                <a type="button" class="btn btn-primary"
                   href="/ServletDetails?id=<%=task.getId()%>">Details</a>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous">
</script>
</body>
</html>
