package kaspi;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "KaspiDeleteBasketItem", value = "/KaspiDeleteBasketItem")
public class KaspiDeleteBasketItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Integer name = Integer.parseInt(request.getParameter("name"));
    DBBasket.deleteItem(name);
    response.sendRedirect("KaspiBasket");
    }
}
