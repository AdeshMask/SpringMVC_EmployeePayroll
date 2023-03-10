package com.employee.exceptions;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionHandling {

	@ExceptionHandler(value= Exception.class)
	public String exception() {
		return "Exception while processing";
	}
}
