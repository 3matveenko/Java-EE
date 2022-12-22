package kaspi;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Addcomment", value = "/addcomment")
public class Kaspi_addcomment extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User um = (User) request.getSession().getAttribute("em");
        if(um!=null){
            String comment = request.getParameter("comment");
            int itemId = Integer.parseInt(request.getParameter("item_id"));
            Item item = DBUtil_items.getItem(itemId);
            if(item!=null){
                Comment comment1 = new Comment();
                comment1.setUser(um);
                comment1.setComment(comment);
                comment1.setItem(item);
                DBUtil_items.addComment(comment1);
                response.sendRedirect("/KaspiDetails?id="+itemId);
            }
        }
    }
}
