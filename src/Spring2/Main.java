package Spring2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/Main")
public class Main extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Manager> tasks=DBManager.getTask();
        request.setAttribute("vopros",tasks);
        request.getRequestDispatcher("/MainMain.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name=request.getParameter("task_name");
        String descp=request.getParameter("task_descp");
        String deadline=request.getParameter("task_dead");
        String status=request.getParameter("task_status");

        Manager mgr=new Manager();
        mgr.name=name;
        mgr.description=descp;
        mgr.deadlineDate=deadline;
        mgr.status=status;

        DBManager.addTask1(mgr);
        response.sendRedirect("/Main");
    }
}
