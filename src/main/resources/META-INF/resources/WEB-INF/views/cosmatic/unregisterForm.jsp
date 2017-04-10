<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerForm.jsp</title>
<!-- 1. animate -->
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.min.css">
<!-- 2. bootstrap -->
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
<!-- 3. jquery -->
<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.min.js"></script>
<!-- 4. bootstrap.js -->
<script type="text/javascript" src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

<style>
		@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
		body {
			background-image: url("../../../img/y_dot.png");
			/* 	background-size: 150%; */
		}

		h1 {
			color : gray;
			font-family: 'Space Mono';
			text-align: center;
			margin-top:70px;
		}
		.bg{
			background-color: rgba(255,255,255,0.2);
			padding : 20px;
			margin: 20px;
			text-align: center;
			width : 100%;
			color : DarkSlateGrey;
		}
		.table {
			background-color: white;
			padding : 20px;
			margin: 20px;
			text-align: center;
			width : 100%;
			color : DarkSlateGrey;
		}
		.table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
			background-color: rgba(255,165,05,0.3)
		}

		.btn {
			margin : 0 auto;
			margin-top : 70px;
		}
		.btn-default>a {
			color : #FF8C00;
			text-decoration: none;
		}

		.btn-default, .btn-default:hover, .btn-default:active, .btn-default:visited {
			background-color: rgba(255,255,255,0.7);
			border-radius: 0;
			font-family: 'Jeju Gothic';
			color : #000080;
		}
	</style>
</head>

<body>
<h1>Cosmatic Delete</h1>
<div class="container">
<button class="btn btn-default" style="text-align: center;"><a href="/cosmatic/page/${param.pageNo}">뒤로가기</a></button>
<table class="table table-hover">
	<tr>
		<td>Product - Number</td>
		<td>Product - Name</td>
		<td>Price</td>
		<td>Capacity</td>
		<td>Category</td>
	</tr>
	
	<tr>
		<td>${cosmatic.productno}</td>
		<td>${cosmatic.productname}</td>
		<td>${cosmatic.price}</td>
		<td>${cosmatic.capacity}</td>
		<td>${cosmatic.category}</td>
	</tr>
</table>
</div>

<div style="text-align: center;">
	<form action="/cosmatic/unregister/${productno}?pageNo=${param.pageNo}" method="post">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	<input type="submit" class="btn btn-default" value="삭제">
	</form>
</div>


</body>
</html>