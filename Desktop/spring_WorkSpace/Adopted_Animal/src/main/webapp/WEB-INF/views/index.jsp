<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/index.css">
<title>No Abandon Pet</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script type="text/javascript" src ="resources/js/jQuery.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
$(function(){
/* $.ajax({
	url: "species.JSON",
	type: "get",
	datatype:"json",
	success: function(x){
		//alert(JSON.stringify(x));
		$(".dropdown-menu").empty();
		 $.each(x.kinds, function(index,item){
			let a1 = $("<a></a>")
			.text(item.kind_sepcies)
			.attr('href',item.kind_sepcies)
			.attr('class','dropdown-item');
			
			let li = $("<li></li>").append(a1);	
			$(".dropdown-menu").append(li);
			});
	}
}); */

$('.bxslider').bxSlider({
	  auto: true,
	  autoControls: true,
	  stopAutoOnClick: true,
	  pager: true,
	  slideWidth: 1500
	});
});
</script>
</head>
<body class="p-3 m-0 border-0 bd-example">
<c:import url="nav1.jsp"></c:import>
	<div class="contents">
	<div class="introduce">
          <p>
          	WELCOME! <br>
          	We are NO Abandon Pet<br>
			We forgather for stray pets<br>
			Let`s Communicate! <br>
			</p>
      </div>
	
	<div class="bxslider">
  <div><img class = "title-kind" src="resources/css/img/title_cat2.jpg"></div>
  <div><img class = "title-kind" src="resources/css/img/title_dog2.jpg"></div>
  <div><img class = "title-kind" src="resources/css/img/title_Fox2.jpg"></div>
  <div><img class = "title-kind" src="resources/css/img/title_rodent2.jpg"></div>
  <div><img class = "title-kind" src="resources/css/img/title_turtle2.jpg"></div>
</div>
</div>
<c:import url="footer.jsp"></c:import>
</body>
</html>