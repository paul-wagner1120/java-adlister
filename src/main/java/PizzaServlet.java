
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet (name = "PizzaServlet", urlPatterns = "/pizza-order")
public class PizzaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/pizza-order.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String crust = req.getParameter("crust");
        String sauce = req.getParameter("sauce");
        String size = req.getParameter("size");
        String[] toppings = req.getParameterValues("toppings");
        String address = req.getParameter("address");
        String newline = System.lineSeparator();

        System.out.format("You have ordered a pizza with the following options: %s Crust: %s %s Sauce: %s %s Size: %s %s Toppings: %s %s Address: %s", newline, crust, newline, sauce, newline, size, newline, Arrays.toString(toppings), newline, address);

    }
}
