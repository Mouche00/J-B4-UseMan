package controllers;

import DAOs.implementations.EmployeeDAOImpl;
import models.Department;
import models.Employee;
import services.implementations.EmployeeServiceImpl;
import services.interfaces.EmployeeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/")
public class EmployeeController extends HttpServlet {
    private EmployeeService employeeService;

    @Override
    public void init() {
        employeeService = new EmployeeServiceImpl(
                new EmployeeDAOImpl());
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        switch (request.getServletPath()) {
            case "/create":
                create(request, response);
                break;
            case "/save":
                save(request, response);
                break;
            case "/delete":
                delete(request, response);
                break;
            case "/edit":
                edit(request, response);
                break;
            case "/update":
                update(request, response);
                break;
            default:
                list(request, response);
                break;
        }
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        
    }

    private void save(HttpServletRequest request, HttpServletResponse response) {
        
    }

    private void create(HttpServletRequest request, HttpServletResponse response) {
        
    }

    protected void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        employeeService.save(new Employee());
        List<Employee> employees = employeeService.getAll();
        System.out.println("Employees list size: " + employees.size());
        request.setAttribute("employees", employees);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
