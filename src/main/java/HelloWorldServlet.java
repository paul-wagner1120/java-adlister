import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    int count = 0;
    String name;
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {

        String prevName = name;
        name = req.getParameter("name");
        if(!Objects.equals(prevName, name)){
            count = 0;
        }
        String reset = (req.getParameter("reset"));
        if(Objects.equals(reset, "yes")){
            count = 0;
        }
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        count++;
        if (name == null) {
            out.println("<div><h1>" + count + "</h1><div><h1>Hello, World!</h1>");
        } else {

            out.println("<h1>" + count + "</h1><h1>Hello, " + name + "!</h1>");
        }

    }
}
