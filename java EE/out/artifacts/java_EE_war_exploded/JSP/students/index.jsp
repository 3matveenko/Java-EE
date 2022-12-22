<%@ page import="java.util.ArrayList" %>
<%@ page import="baby.Item" %>
<%@ page import="students.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        Title
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
          crossorigin="anonymous">
    <%@include file="header.jsp" %>
</head>
    <body>
    <% String success = request.getParameter("success");
        if(success!=null){
    %>
    <div class="alert alert-info" role="alert">
        Mission complete!
    </div>
    <%
        }
    %>

    <% ArrayList<Student> students = (ArrayList<Student>) request.getAttribute("studenty");
        if(students!=null){%>
        <table class="table table-striped table-hover">
            <tbody>
            <thead>
            <th>ID</th>
            <th>NAME</th>
            <th>SURNAME</th>
            <th>BIRTHDATE</th>
            <th>CITY</th>

            </thead>
            <%
                for (Student it: students){
            %>
            <tr>
                <td><%=it.getId()%></td>
                <td><%=it.getName()%></td>
                <td><%=it.getSurname()%></td>
                <td><%=it.getBirthdate()%></td>
                <td><%=it.getCity().getNamecity() + " / " + it.getCity().getCodecity()%></td>
                <td>
                    <a href="/StudentDetails?id=<%=it.getId()%>" class="btn btn-success btn-sm">DETAILS</a>
                </td>
            </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
    </body>
</html>
