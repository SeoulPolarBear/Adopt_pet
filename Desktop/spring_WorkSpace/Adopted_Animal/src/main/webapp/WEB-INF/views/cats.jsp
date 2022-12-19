<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
	rel="stylesheet">
<link rel="stylesheet" href="resources/css/nav.css">
<link rel="stylesheet" href="resources/css/footer.css">
<link rel="stylesheet" href="resources/css/list.css">
<title>MyPet</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="p-3 m-0 border-0 bd-example">
	<c:import url="nav1.jsp"></c:import>
	<div class="outer">
	<div class="Reg-animal">
		<span class="list-title">Total Cat List</span>
	</div>
	<div class="list-group">
		<a href="#" class="list-group-item list-group-item-action active"
			aria-current="true">
			
			<c:forEach var="animal" items="${Animals}" >
		<a href="#" class="list-group-item list-group-item-action">
			<div class="d-flex w-100 justify-content-between">
				<h5 class="mb-1">${animal.animal_name}</h5>
				<small class="text-muted">${animal.animal_registration}</small>
			</div>
			<p class="mb-1">${animal.animal_description}</p> <small
			class="text-muted">${dog.animal_age} / ${animal.animal_gender}
			/ 주인ID : ${animal.animal_u_id}
			</small>
		</a> 
		</c:forEach>
	</div>
	</div>
	<c:import url="footer.jsp"></c:import>
</body>
</html>