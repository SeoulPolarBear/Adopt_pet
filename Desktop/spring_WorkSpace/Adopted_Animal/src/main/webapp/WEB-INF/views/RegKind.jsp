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
<link rel="stylesheet" href="resources/css/table.css">
<title>Reg Kind</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="p-3 m-0 border-0 bd-example">
	<c:import url="nav1.jsp"></c:import>

	<form action="http://localhost/lim/kinds/myPet/reg/registration"
		method="get">
		<table id="user-signup">
			<tr>
				<th id="insert-result1">성공 유무 :</th>
				<td id="insert-result2">${result}</td>
			</tr>
			<tr>
				<td colspan = "2"><input  type="hidden"  name="kind_a_id" value ="${animal_ID}"></td>
			</tr>
			
			<tr>
				<th>Kind :</th>
				<td><input type="text" name="kind_kind"></td>
			</tr>
			<tr>
				<th>Species :</th>
				<td><select name="kind_sepcies">
						<option value="cats">cat</option>
						<option value="dogs">dog</option>
						<option value="rodents">rodent</option>
						<option value="foxes">fox</option>
						<option value="turtles">turtles</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><button>Registration</button></td>
			</tr>
		</table>
	</form>
	<c:import url="footer.jsp"></c:import>
</body>
</html>