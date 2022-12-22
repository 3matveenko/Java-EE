package kaspi;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "KaspiBasket", value = "/KaspiBasket")
public class KaspiBasket extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    ArrayList<Item> items = DBBasket.getItems();
    request.setAttribute("basket",items);
    request.getRequestDispatcher("/JSP/kaspi/basket.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id_basket = request.getParameter("id_basket");
        int id = 0;
        try {
            id = Integer.parseInt(id_basket);
        } catch (Exception e){
            e.printStackTrace();
        }
        Item item = DBUtil_items.getItem(id);
        DBBasket.addItem(item);
        response.sendRedirect("/KaspiSession");
    }
}
