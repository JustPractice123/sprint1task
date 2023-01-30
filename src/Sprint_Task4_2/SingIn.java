package Sprint_Task4_2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/SingIn")
public class SingIn extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/Sprint_task4.2/SingIn.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<User> users=DBShop.getUsers();
        User user=new User();

        String mail=request.getParameter("user_mail");
        String pass=request.getParameter("user_pass");
        user.setEmail(mail);
        user.setPassword(pass);
        Integer x=0;
        for (User u : users){
            if (u.email.equalsIgnoreCase(user.email) && u.password.equalsIgnoreCase(user.password)){
                user.setId(u.id);
                user.setFullName(u.FullName);
                x=0;
                break;
            }else {
                x=1;
            }
        }
        if (x==0){
            response.sendRedirect("/YourProfile?id="+user.getId());
        }else{
            request.setAttribute("false", x);
            request.getRequestDispatcher("/Sprint_task4.2/SingIn.jsp").forward(request,response);
        }
    }
}
