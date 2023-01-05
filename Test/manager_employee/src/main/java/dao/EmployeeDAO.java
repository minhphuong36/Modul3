package dao;

import model.Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {
    static Connection connection = ConnectionMySql.getConnection();

    public List<Employee> getAll() {
        List<Employee> employees = new ArrayList<>();
        String sql = "Select * from employees";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                int phone = resultSet.getInt("phone");
                double salary = resultSet.getInt("salary");
                String department = resultSet.getString("department");
                employees.add(new Employee(id, name, email, address,phone,salary,department));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return employees;
    }

    public boolean save(Employee employee) {
        String sql = "insert into employees( name, email, address,phone,salary,department) value (?,?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, employee.getName());
            preparedStatement.setString(2, employee.getEmail());
            preparedStatement.setString(3, employee.getAddress());
            preparedStatement.setInt(4, employee.getPhone());
            preparedStatement.setDouble(5, employee.getSalary());
            preparedStatement.setString(6, employee.getDepartment());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public Employee findById(int id) {
        String sql = "select * from employees where id = " + id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            String name = resultSet.getString("name");
            String email = resultSet.getString("email");
            String address = resultSet.getString("address");
            int phone = resultSet.getInt("phone");
           double salary = resultSet.getDouble("salary");
            String department = resultSet.getString("department");

            return new Employee(id, name, email, address,phone,salary,department);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void delete(int id) {
        String sql = "delete FROM employees where id = " + id;
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean edit(Employee employee) {
        String sql = "update employees set name=?,email=?, address=?,phone=?,salary=?,department=?  where id=?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(7, employee.getId());
            preparedStatement.setString(1,employee.getName());
            preparedStatement.setString(2, employee.getEmail());
            preparedStatement.setString(3, employee.getAddress());
            preparedStatement.setInt(4, employee.getPhone());
            preparedStatement.setDouble(5, employee.getSalary());
            preparedStatement.setString(6, employee.getDepartment());

            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }



    public static List<Employee> getSearch(String search) {
        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT * FROM employees WHERE  upper(employees.name) like  '%" + search.toUpperCase() + "%'";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                int phone = resultSet.getInt("phone");
                double salary = resultSet.getDouble("salary");
                String department = resultSet.getString("department");
                employees.add(new Employee(id, name, email, address, phone, salary, department));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return employees;
    }



}
