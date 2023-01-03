package com.employee.employeeDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.employee.model.Employee;

@Repository
public class EmployeeDao {

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int createUser(Employee employee) {
		int id = (Integer) this.hibernateTemplate.save(employee);	
		return id;
	}
}
