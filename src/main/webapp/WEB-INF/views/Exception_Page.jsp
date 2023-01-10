<%@page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${msg }</h1>
</body>
</html>


<!-- @RequestMapping(value="/update/{id}")
	public String getEmployee(@PathVariable("id") int id, @ModelAttribute("employee") Employee employee, Model model, HttpServletRequest request) {
		System.out.println("Employee Id "+ id);
		Employee newEmployee = this.employeeService.getEmpById(id);
		RedirectView redirect = new RedirectView();
//		if (employee != null) {
			System.out.println("Data present"+ newEmployee);
			model.addAttribute("employee", newEmployee);
			redirect.setUrl(request.getContextPath()+"/form");
			this.employeeService.updateEmployee(id,employee);
			return "Update_Form";
			
//			return "redirect:/Update_Form";
//		}
//		return "redirect:/home";
	}
	
	@ExceptionHandler(value = Exception.class)
	public String exceptionHandle(Model m) {
		m.addAttribute("msg","Exception while processing");
		return "Exception_Page";
	} -->