package com.employee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employee.employeeDao.EmployeeDao;
import com.employee.model.Employee;


@Service
public class EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;
	
	public int createEmployee(Employee employee) {
		Integer id =(Integer) this.employeeDao.createUser(employee);
		return id;
	}
}
