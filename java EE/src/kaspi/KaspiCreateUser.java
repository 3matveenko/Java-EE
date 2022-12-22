package kaspi;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "KaspiCreateUser", value = "/KaspiCreateUser")
public class KaspiCreateUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.getRequestDispatcher("/JSP/kaspi/create.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String nickname = request.getParameter("nickname");
        User em = DBUtill_users.getUser(email);
        if (em == null) {
            User user = new User();
            user.setEmail(email);
            user.setPassword(password);
            user.setNickname(nickname);
            DBUtill_users.addUser(user);
            response.sendRedirect("/");
        } else {
            request.setAttribute("em",em);
            request.getRequestDispatcher("/JSP/kaspi/create.jsp").forward(request,response);
        }
    }
}
