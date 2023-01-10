<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<th>...</th>
						<th>Name</th>
						<th>Gender</th>
						<th>Department</th>
						<th>Salary</th>
						<th>Note</th>
						<th>Start Date</th>
						<th>Actions</th>
					</tr>
					<c:forEach items="${employee }" var="emp">
						<tr>
							<td><a href="delete/${emp.id }"><img class="profile"
									alt="" src='${emp.profilePic }' /></a>
							<td>${emp.name }</td>
							<td>${emp.gender }</td>
							<td><div class='Dept-label'>${emp.department }</div></td>
							<td>${emp.salary }</td>
							<td>${emp.note }</td>
							<td>${emp.date }</td>
							<td>
							<a href="delete/${emp.id }"> 
								<img src='<c:url value="/resources/icons/delete-black-18dp.svg" />'
									alt="edit"></a> 
							<a href="update/${emp.id }"> 
								<img src='<c:url value="/resources/icons/create-black-18dp.svg" />'
									alt="edit"></a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</form>
	</div>
</body>
</html>