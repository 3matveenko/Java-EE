package kaspi;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "KaspiForgotPass", value = "/KaspiForgotPass")
public class KaspiForgotPass extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.getRequestDispatcher("/JSP/kaspi/forgot.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        User pass = DBUtill_users.getUser(email);
        if (pass != null) {
            request.setAttribute("email", pass);
            request.getRequestDispatcher("/JSP/kaspi/forgot.jsp").forward(request, response);

        } else {
            String error = "error";
            request.setAttribute("error",error);
            request.getRequestDispatcher("/JSP/kaspi/forgot.jsp").forward(request, response);
        }
    }
}
