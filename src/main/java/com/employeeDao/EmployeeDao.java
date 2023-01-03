package com.employeeDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.model.Employee;

@Transactional
public class EmployeeDao {

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public Employee saveUser(Employee emp) {
		Employee employee =(Employee) this.hibernateTemplate.save(emp);	
		return employee;
	}
}
