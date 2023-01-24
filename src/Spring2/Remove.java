package Spring2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/Details")
public class Remove extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idshka=req.getParameter("id");
        int id=Integer.parseInt(idshka);
        Manager m=DBManager.getOneTask(id);
        req.setAttribute("Task",m);
        req.getRequestDispatcher("/remove.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String idshka=req.getParameter("id");
        long id=Long.parseLong(idshka);
        String name=req.getParameter("task_name");
        String desc=req.getParameter("task_descp");
        String deadline=req.getParameter("task_dead");
        String status=req.getParameter("task_status");
        String btn=req.getParameter("btn");

        if (btn.equals("Save")) {

            Manager m = new Manager();
            m.setId(id);
            m.setName(name);
            m.setDescription(desc);
            m.setDeadlineDate(deadline);
            m.setStatus(status);
            int ID = Integer.parseInt(idshka);
            DBManager.swapTask(ID - 1, m);

            resp.sendRedirect("/Main");
        } else if (btn.equals("Delete")) {
            int ID=Integer.parseInt(idshka);
            DBManager.removeTask(ID-1);
            resp.sendRedirect("/Main");
        }
    }
}
