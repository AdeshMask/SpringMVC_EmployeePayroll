<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="<c:url value="/resources/css/Home.css"/>" rel="stylesheet">
<title>Employee Payroll App</title>
</head>
<body>

	<header class="header-content header">
		<div class="logo-content">
			<img src='<c:url value="/resources/images/logo.png" />' alt="" />
			<div>
				<span class="emp-text">EMPLOYEE</span><br /> <span
					class="emp-text emp-payroll">PAYROLL</span>
			</div>
		</div>
	</header>

	<div class="main-content">
		<div class="header-content">
			<div class="emp-detail-text">
				Employee Details
				<div class="emp-count"></div>
			</div>
			<a href="form" class="add-button"> <img
				src='<c:url value="/resources/icons/add-24px.svg" />' alt="" /> Add
				User
			</a>
		</div>
		<form action="">
			<div class="table-main">
				<table id="table-display" class="table">
					<tr>
						<th></th>
						<th>Name</th>
						<th>Gender</th>
						<th>Department</th>
						<th>Salary</th>
						<th>Start Date</th>
						<th>Actions</th>
					</tr>
					<tr>
						<td><img class="profile" alt=""
							src="../assests/profile-images/${employee.profilePic}"></td>
						<td>${employee.name }</td>
						<td>${employee.gender }</td>
						<td><div class='Dept-label'>${employee.department }</div></td>
						<td>${employee.salary }</td>
						<td>${employee.date }</td>
						<td><img id="1" onclick="remove(this)"
							src='<c:url value="/resources/icons/delete-black-18dp.svg" />'
							alt="delete"> <img id="1" onclick="update(this)"
							src='<c:url value="/resources/icons/create-black-18dp.svg" />'
							alt="edit"></td>
					</tr>
				</table>
			</div>
		</form>
	</div>
</body>
</html>