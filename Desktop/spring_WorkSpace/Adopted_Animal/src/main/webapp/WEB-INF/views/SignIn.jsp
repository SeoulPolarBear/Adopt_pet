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
<title>SignIn</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="resources/js/post.js"></script>
</head>
<body class="p-3 m-0 border-0 bd-example">
<c:import url="nav1.jsp"></c:import>

<form action="http://localhost/lim/users/signIn_import" method = "post">
<table id="user-signup">

<tr><th id="insert-result1">성공 유무 : </th><td id="insert-result2">${result}</td></tr>
<% if(session.getAttribute("loginUser")==null){/*  || !request.isRequestedSessionIdValid() */ %>
	<tr><th>ID :</th><td><input type="text" name="user_id"></td></tr>
<tr><th>PW :</th><td><input type="password" name="user_password"></td></tr>
<tr><td colspan="2"><button>sign In</button></td></tr>
<% }else{%>
	<tr><th colspan="2"><h1>welcome!</h1></th></tr>
	<tr><th colspan="2"><a href="http://localhost/lim/users/myPage"><h1>myPage</h1></a></th></tr>	
<% }%>
 </table>
</form>
<c:import url="footer.jsp"></c:import>
</body>
</html>