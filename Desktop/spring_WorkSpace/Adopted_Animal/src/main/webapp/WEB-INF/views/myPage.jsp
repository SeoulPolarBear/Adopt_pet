<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <script type="text/javascript" src="resources/js/jQuery.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="resources/css/nav.css">
<link rel="stylesheet" href="resources/css/footer.css">
<link rel="stylesheet" href="resources/css/table.css">
<title>myPage</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="resources/js/post.js"></script>
</head>
<body class="p-3 m-0 border-0 bd-example">
<c:import url="nav1.jsp"></c:import>

<table border="1">
<c:forEach var="user" items="${yours}">
<tr><th class="user-signup">ID :</th><td>${user.user_id}</td></tr>
<tr><th class="user-signup">email :</th><td>${user.user_email}</td></tr>
<tr><th class="user-signup">name :</th><td>${user.user_name}</td></tr>
<tr><th class="user-signup">birth :</th><td>${user.user_birthday}</td></tr>
<tr><th class="user-signup">phone :</th><td>${user.user_phonenum}</td></tr>
<tr><th class="user-signup">post :</th><td>${user.user_address_postnum}</td></tr>
<tr><th class="user-signup">distance addr :</th><td>${user.user_address_distance}</td></tr>
<tr><th class="user-signup">detail addr :</th><td>${user.user_address_detail}</td></tr>
</c:forEach>
</table>

<c:import url="footer.jsp"></c:import>
</body>
</html>