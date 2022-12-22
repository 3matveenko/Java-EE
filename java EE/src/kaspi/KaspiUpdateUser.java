package kaspi;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "KaspiUpdateUser", value = "/KaspiUpdateUser")
public class KaspiUpdateUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/JSP/kaspi/update.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String nickname = request.getParameter("nickname");
        User em = DBUtill_users.getUser(email);
            em.setEmail(email);
            em.setPassword(password);
            em.setNickname(nickname);
            DBUtill_users.updateUser(em);
            HttpSession session = request.getSession();
            session.setAttribute("em", em);
            request.getRequestDispatcher("/JSP/kaspi/forgot.jsp").forward(request,response);

    }
}
