package com.employee.employeecontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping(path ="/update_form/{id}")
	public String updateForm(@PathVariable("id") int id, Model model,@ModelAttribute("employee") Employee newEmployee) {
		System.out.println("Update Form....");
		Employee employee = this.employeeService.getEmpById(id);
		model.addAttribute("employee", employee);
		this.employeeService.updateEmployee(id,newEmployee);
		return "Update_Form";
	}
	
	@RequestMapping(path ="/home2")
	public String home(Model m) {
		System.out.println("Welcome to Home page....");
		List<Employee> employee = this.employeeService.getAllData();
		m.addAttribute("employee", employee);
		System.out.println(employee);
		return "Home";
	}
	
	@RequestMapping(value="/home",method = RequestMethod.POST)
	public RedirectView homePage(@ModelAttribute("employee") Employee employee, HttpServletRequest httpServletRequest) {
		System.out.println("Welcome to Home page....");
		RedirectView redirectView = new RedirectView();
		System.out.println(employee);
		this.employeeService.createEmployee(employee);
		redirectView.setUrl(httpServletRequest.getContextPath()+"/home2");
		return redirectView;
	}
	
	@RequestMapping("/delete/{id}")
	public RedirectView delete(@PathVariable("id") int id, HttpServletRequest request) {
		System.out.println("id is "+id);
		this.employeeService.deleteEmployee(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/home2");
		return redirectView;
	}
	
	@RequestMapping("/update/{id}")
	public String getEmployee(@PathVariable("id") int id, Model model, HttpServletRequest request) {
		System.out.println("Employee Id "+ id);
		Employee employee = this.employeeService.getEmpById(id);
		RedirectView redirect = new RedirectView();
		if (employee != null) {
			System.out.println("Data present"+ employee);
			model.addAttribute("employee", employee);
			redirect.setUrl(request.getContextPath()+"/update_form");			
			return "redirect:/update_form/{id}/";
		}
		return "redirect:/home2";
	}
}
