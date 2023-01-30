package Sprint_Task4_2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/YourProfile")
public class Profile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idzxc=req.getParameter("id");
        int id=Integer.parseInt(idzxc);
        User user=DBShop.getUser(id);
        req.setAttribute("id",user);
        req.getRequestDispatcher("/Sprint_task4.2/Profile.jsp").forward(req,resp);
    }
}
