package kaspi;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "KaspiChange", value = "/KaspiChange")
public class KaspiChange extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    User ses = (User) request.getSession().getAttribute("em");
    request.setAttribute("ses",ses);
    request.getRequestDispatcher("JSP/kaspi/change.jsp").forward(request, response);
    }
}
