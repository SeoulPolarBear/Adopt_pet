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
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="resources/css/nav.css">
<link rel="stylesheet" href="resources/css/footer.css">
<link rel="stylesheet" href="resources/css/table.css">
<title>ResignOut</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="resources/js/post.js"></script>
<script type="text/javascript">
	
<%if (session.getAttribute("loginUser") == null) {%>
	alert("탈퇴하셨습니다.");
<%} else {%>
	alert("탈퇴실패하셨습니다.");
<%}%>
	
</script>
</head>
<body class="p-3 m-0 border-0 bd-example">
	<%
		response.sendRedirect("/lim");
	%>
</body>
</html>