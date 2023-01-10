<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Add Employee Payroll</title>
<link href="<c:url value="/resources/css/AddForm.css"/>"
	rel="stylesheet">
</head>
<body>
	<!-- UC1 -->
	<%-- <img alt="my image" src='<c:url value="/resources/images/wallpaper.jpg" />'/> --%>
	<header class="header-content header">
		<div class="logo-content">
			<img src='<c:url value="/resources/images/logo.png" />' alt="logo">
			<div>
				<span class="emp-text">EMPLOYEE</span> <span
					class="emp-text emp-payroll">PAYROLL</span>
			</div>
		</div>
	</header>
	<!-- UC2 -->
	<div class="form-content">
		<form class="form" action="${pageContext.request.contextPath }/home"
			method="post">
			<div><h1>Employee Payroll Form</h1></div>
			<div class="row-content">
				<label for="name" class="label text">Name</label> 
				<input type="text" class="input" id="name" name="name" 
				value=${employee.name } required />
				<error-output class="text-error" for="name"></error-output>
			</div>
			<div class="row-content">
				<label class="label text" for="profile">Profile image</label>
				<div class="profile-radio-content">
					<label> <input type="radio" id="profile1"
						value="<c:url value="/resources/images/Ellipse -3.png" />"
						name="profilePic"
						<c:if test="${employee.profilePic=='/resources/images/Ellipse -3.png'}">checked=checked</c:if>>
						<img class="profile" id="image1"
						src='<c:url value="/resources/images/Ellipse -3.png" />'>
					</label> <label> <input type="radio" id="profile2"
						value="<c:url value="/resources/images/Ellipse -3.png" />"
						name="profilePic"
						<c:if test="${employee.profilePic=='/resources/images/Ellipse -3.png'}">checked=checked</c:if>>
						<img class="profile" id="image2"
						src='<c:url value="/resources/images/Ellipse -3.png" />'>
					</label> <label> <input type="radio" id="profil3"
						value="<c:url value="/resources/images/Ellipse -8.png" />"
						name="profilePic"
						<c:if test="${employee.profilePic=='/resources/images/Ellipse -8.png'}">checked=checked</c:if>>
						<img class="profile" id="image3"
						src='<c:url value="/resources/images/Ellipse -8.png" />'>
					</label> <label> <input type="radio" id="profile4"
						value="<c:url value="/resources/images/Ellipse -7.png" />"
						name="profilePic"
						<c:if test="${employee.profilePic=='/resources/images/Ellipse -7.png'}">checked=checked</c:if>>
						<img class="profile" id="image4"
						src='<c:url value="/resources/images/Ellipse -7.png" />'>
					</label>
				</div>
			</div>
			<div class="row-content">
				<label for="gender" class="label text">Gender</label>
				<div>
					<input type="radio" id="male" name="gender" value="Male"
						<c:if test="${employee.gender=='Male'}">checked=checked</c:if>>
					<label for="male" class="text">Male</label> <input type="radio"
						id="female" name="gender" value="Female"
						<c:if test="${employee.gender=='Female'}">checked=checked</c:if>>
					<label for="female" class="name">Female</label>
				</div>
			</div>
			<div class="row-content">
				<label for="department" class="label text">Department</label>
				<div>
					<input type="checkbox" class="checkbox" id="hr"
						<c:if test="${employee.profilePic==HR}">checked=checked</c:if>
						name="department" value="HR"> <label id="hr" for="hr"
						class="text">HR</label> <input type="checkbox" class="checkbox"
						id="sales" name="department" value="Sales"
						<c:if test="${employee.profilePic==Sales}">checked=checked</c:if>>
					<label for="sales" class="text">Sales</label> <input
						type="checkbox" class="checkbox" id="finance" name="department"
						<c:if test="${employee.profilePic==Finance}">checked=checked</c:if>
						value="Finance"> <label for="finance" class="text">Finance</label>
					<input type="checkbox" class="checkbox" id="engineer"
						name="department" value="Engineer"
						<c:if test="${employee.profilePic==Engineer}">checked=checked</c:if>>
					<label for="engineer" class="text">Engineer</label> <input
						type="checkbox" class="checkbox" id="others" name="department"
						value="Others"
						<c:if test="${employee.profilePic==Others}">checked=checked</c:if>>
					<label for="others" class="text">Others</label>
				</div>
			</div>
			<div class="row-content">
				<label for="salary" class="label text">Choose your salary: </label>
				<input type="range" class="input" name="salary" id="salary"
					min="30000" max="500000" step="1000">
				<output class="salary-output text" for="salary">${employee.salary }</output>
			</div>
			<div class="row-content">
				<label class="label text" for="startDate">Start Date</label>
				<div class="row-content">
					<input class="input" type="date" name="date" id="date"
						value=${employee.date }></input>
				</div>
			</div>
			<div class="row-content">
				<label for="note" class="label text">Notes</label>
				<textarea id="note" class="input" name="note"
					value=${employee.note } style="height: 100px">${employee.note }</textarea>
			</div>
			<div class="buttonParent">
				<a href="${pageContext.request.contextPath}/home2"
					class="resetButton
                        button cancelButton">Back</a>
				<!-- "{pageContext.request.contextPath}/" -->
				<div class="submit-reset">
					<button class="button submitButton" id="submitButton" type="submit">Update</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>