package controllers;

import model.Employee;
import service.EmployeeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/create")
public class Create extends HttpServlet {
    EmployeeService employeeService = new EmployeeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("c",employeeService.getAll());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/employee/createEmployee.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
       String email = req.getParameter("email");
        String address = req.getParameter("address");

        int phone = Integer.parseInt(req.getParameter("phone"));
        double salary = Double.parseDouble(req.getParameter("salary"));
        String department = req.getParameter("department");

        employeeService.save(new Employee(name,email,address,phone,salary,department));
        resp.sendRedirect("/create");
    }
}
