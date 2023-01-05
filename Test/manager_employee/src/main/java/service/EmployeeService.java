package service;

import dao.EmployeeDAO;
import model.Employee;

import java.util.List;

public class EmployeeService {
    EmployeeDAO employeeDAO = new EmployeeDAO();

    public List<Employee> getAll() {
        return employeeDAO.getAll();
    }

    public  boolean save(Employee employee){
        return employeeDAO.save(employee);
    }

    public Employee findById(int id){
        return employeeDAO.findById(id);
    }

    public void delete(int id){
        employeeDAO.delete(id);
    }

    public void edit(Employee employee){
        employeeDAO.edit(employee);
    }

}