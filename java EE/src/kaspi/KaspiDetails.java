package kaspi;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "KaspiDetails", value = "/KaspiDetails")
public class KaspiDetails extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int id = Integer.parseInt(request.getParameter("id"));
    Item item = DBUtil_items.getItem(id);
        ArrayList<Comment> comments = DBUtil_items.getComment(id);
    request.setAttribute("item",item);
    request.setAttribute("comments", comments);
    request.getRequestDispatcher("/JSP/kaspi/details.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
