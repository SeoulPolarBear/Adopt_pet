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
<link rel="stylesheet" href="resources/css/index.css">
<title>No Abandon Pet</title>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "species.JSON",
			type : "get",
			datatype : "json",
			success : function(x) {
				//alert(JSON.stringify(x));
				$(".dropdown-menu").empty();
				$.each(x.kinds, function(index, item) {
					let a1 = $("<a></a>").text(item.kind_sepcies).attr('href',
							item.kind_sepcies).attr('class', 'dropdown-item');

					let li = $("<li></li>").append(a1);
					$(".dropdown-menu").append(li);
				});
			}
		});
	});
</script>
</head>
<body class="p-3 m-0 border-0 bd-example">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="http://localhost/lim/" id="adopt-title">No
				Abandon Pet</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarScroll"
				aria-controls="navbarScroll" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse adopt-content" id="navbarScroll">
				<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
					style="-bs-scroll-height: 100px;">

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Pet </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								href="http://localhost/lim/animals/dogs">dogs</a></li>
							<li><a class="dropdown-item"
								href="http://localhost/lim/animals/cats">cats</a></li>
							<li><a class="dropdown-item"
								href="http://localhost/lim/animals/turtles">turtles</a></li>
							<li><a class="dropdown-item"
								href="http://localhost/lim/animals/rodents">rodents</a></li>
							<li><a class="dropdown-item"
								href="http://localhost/lim/animals/foxes">foxes</a></li>

						</ul></li>
				
					<%
						if (session.getAttribute("loginUser") == null) {/*  || !request.isRequestedSessionIdValid() */
					%>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="http://localhost/lim/users/signin">Sign
							in</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="http://localhost/lim/users/signup">Sign
							up</a></li>
					<%
						} else {
					%>
					<!-- <li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Star</a></li> -->
					
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="http://localhost/lim/animals/myPet">MyPet</a></li>
					
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="http://localhost/lim/users/SignOut">Sign
							Out</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="http://localhost/lim/users/myPage">MyPage</a></li>
						
					<li class="nav-item" onclick=""><a class="nav-link active"
						aria-current="page" href="http://localhost/lim/users/Resign">Resign</a></li>
					<%
						}
					%>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
</body>
</html>