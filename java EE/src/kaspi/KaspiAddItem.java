package kaspi;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "KaspiAddItem", value = "/KaspiAddItem")
public class KaspiAddItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.getRequestDispatcher("/JSP/kaspi/additem.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String name = request.getParameter("add_name");
    String price = request.getParameter("add_price");
    String description = request.getParameter("add_description");
    int category = Integer.parseInt(request.getParameter("add_category"));
    Category category1 = DBUtil_items.getCategory(category);
    Item item = new Item();
    item.setName(name);
    item.setPrice(Integer.parseInt(price));
    item.setDescription(description);
    item.setCategory(category1);
    DBUtil_items.addItem(item);
    response.sendRedirect("/KaspiAddItem");

    }
}
