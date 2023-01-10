package com.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.employeeDao.EmployeeDao;
import com.employee.model.Employee;


@Service
public class EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;
	
	public void createEmployee(Employee employee) {
		this.employeeDao.createUser(employee);
	}

	public List<Employee> getAllData() {
		List<Employee> employee = this.employeeDao.getEmployee();
		return employee;
	}

	public void deleteEmployee(int id) {
		this.employeeDao.deleteEmployee(id);
	}

	public Employee getEmpById(int id) {
		Employee emp = this.employeeDao.getData(id);
		return emp;
	}

	public void updateEmployee(int id, Employee employee) {
		this.employeeDao.updateEmployee(id,employee);		
	}
}
