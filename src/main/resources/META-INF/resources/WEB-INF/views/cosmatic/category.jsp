<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cosmatic_list.jsp</title>
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

	.pagination {
		display : block;
		text-align: center;
		margin-top : 100px;
	}

	.pagination > li > a {
		float : none;
		margin-left:  -5px;
	}
	.btn {
		margin : 0 auto;
		margin-top : 70px;
		text-align: center;
	}
</style>
</head>

<body>
<h1 style="text-align: center;">Category List</h1>
<div class="container">
<button class="btn btn-default" style="text-align: center;"><a href="/cosmatic/page/${param.pageNo}">뒤로가기</a></button>
<table class="table table-hover">
	<tr>
		<td>Product - Number</td>
		<td>Product - Name</td>
		<td>Category</td>
<!-- 		<td>Product Modify</td> -->
<!-- 		<td>Product Delete</td> -->
	</tr>
	
	<c:forEach var="list" items="${cosmatic}">
	<tr>
		<td>${list.productno}</td>
		<td><a href="/cosmatic/item/${list.productno}?pageNo=${page.paging.pageNo}">${list.productname}</a></td>
		<td>${list.category}</td>
<%-- 		<td><a href="/cosmatic/modify/${list.productno}?pageNo=${page.paging.pageNo}">수정</td> --%>
<%-- 		<td><a href="/cosmatic/unregister/${list.productno}?pageNo=${page.paging.pageNo}">삭제</a></td> --%>
	</tr>
	</c:forEach>
</table>
</div>


<div class="container">
	<ul class="pagination pagination-sm">
		<li><a href="/cosmatic/page/1">First</a></li>
		<li><a href="/cosmatic/page/${page.paging.firstPage -1 }">Prev</a></li>
		<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}">
			<li><a href="/cosmatic/page/${i}">${i}</a></li>
		</c:forEach>
		<li><a href="/cosmatic/page/${page.paging.lastPage +1 }">Next</a></li>
		<li><a href="/cosmatic/page/${page.paging.totalPage}">Last</a></li>
	</ul>
</div>
</body>
</html>