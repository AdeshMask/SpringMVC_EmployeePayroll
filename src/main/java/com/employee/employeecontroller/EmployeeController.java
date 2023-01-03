package com.employee.employeecontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.employee.model.Employee;
import com.employee.service.EmployeeService;


@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(path ="/form", method = RequestMethod.GET)
	public String form() {
		System.out.println("Welcome to Home page....");
		return "Form";
	}
	@RequestMapping(path ="/home2")
	public String home() {
		System.out.println("Welcome to Home page....");
		return "Home";
	}
	
	@RequestMapping(value="/home",method = RequestMethod.POST)
	public String homePage(@ModelAttribute("employee") Employee employee) {
		System.out.println("Welcome to Home page....");
		System.out.println(employee);
		int id =(Integer) this.employeeService.createEmployee(employee);
		return "Home";
	}
}
