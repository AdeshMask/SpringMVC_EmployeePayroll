package com.employee.employeeDao;

import java.util.List;

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
	public void createUser(Employee employee) {
		this.hibernateTemplate.saveOrUpdate(employee);	
	}

	public List<Employee> getEmployee() {
		List<Employee> employee = this.hibernateTemplate.loadAll(Employee.class);
		return employee;
	}

	@Transactional
	public void deleteEmployee(int id) {
		Employee empId = this.hibernateTemplate.load(Employee.class, id);
		this.hibernateTemplate.delete(empId);
	}
	
	
	public Employee getData(int id) {
		return this.hibernateTemplate.get(Employee.class, id);
		}

	@Transactional
	public void updateEmployee(int id, Employee employee) {
		Employee newEmp = this.hibernateTemplate.load(Employee.class,id);
		if (newEmp != null) {
			this.hibernateTemplate.update(employee);
		}		
	}
}
