package Sprint_Task4_2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(value = "/YourProfile")
public class Profile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String idzxc=req.getParameter("id");
        int id=Integer.parseInt(idzxc);
        User user=DBShop.getUser(id);
        HttpSession session= req.getSession();
        session.setAttribute("id",user);
        req.getRequestDispatcher("/Sprint_task4.2/Profile.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session= req.getSession();
        session.removeAttribute("id");
        resp.sendRedirect("/Sprint_task4.2/SingIn.jsp");
    }
}
