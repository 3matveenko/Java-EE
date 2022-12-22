package kaspi;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "KaspiSession", value = "/KaspiSession")
public class KaspiSession extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Item> items = DBUtil_items.getItems();
        request.setAttribute("tovary",items);
        request.getRequestDispatcher("JSP/kaspi/shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession session = request.getSession();
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    User em = DBUtill_users.getUser(email);
    String error = null;
        if (em==null){
            error = "1";
            request.setAttribute("error", error);
            request.getRequestDispatcher("/JSP/kaspi/login.jsp").forward(request,response);
        } else if (!password.equals(em.getPassword())) {
            error = "2";
            request.setAttribute("error", error);
            request.getRequestDispatcher("/JSP/kaspi/login.jsp").forward(request,response);
        } else{
                session.setAttribute("em",em);
             response.sendRedirect("/KaspiSession");
        }
    }
}
