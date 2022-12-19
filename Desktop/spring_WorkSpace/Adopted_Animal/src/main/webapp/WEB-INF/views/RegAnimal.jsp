<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/nav.css">
<link rel="stylesheet" href="resources/css/footer.css">
<link rel="stylesheet" href="resources/css/table.css">
<title>Reg Animal</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="p-3 m-0 border-0 bd-example">
<c:import url="nav1.jsp"></c:import>

<form action="http://localhost/lim/animals/myPet/reg/registration" method = "GET">
<table id="user-signup">
<tr><th id="insert-result1">성공 유무 : </th><td id="insert-result2">${result}</td></tr>
<tr><td colspan = "2"><input type="hidden" name="animal_u_id" value="${animal_u_id}"></td></tr>
<tr><th>Name :</th><td><input type="text" name="animal_name"></td></tr>
<tr><th>Age :</th><td><input type="text" name="animal_age"></td></tr>
<tr><th>Gender :</th><td><input type="text" name="animal_gender"></td></tr>
<tr><!-- <th>thumbnail :</th> --><td colspan = "2"><input type="hidden" name="animal_thumbnail" value="1235.png"></td></tr>
<tr><th>Registration :</th><td><input type="text" name="animal_registration"></td></tr>
<tr><th>Description :</th><td><input type="text" name="animal_description" placeholder="300자 이하로 작성 하세요."></td></tr>
<tr><td colspan="2"><button>Registration</button></td></tr>
 </table>
</form>
<c:import url="footer.jsp"></c:import>
</body>
</html>