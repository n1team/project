<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME*COSMATIC</title>
<!-- 1. animate -->
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.min.css">
<!-- 2. bootstrap -->
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
<!-- 3. jquery -->
<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.min.js"></script>
<!-- 4. bootstrap.js -->
<script type="text/javascript" src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<h1 style="text-align: center;">cosmatic Page pageno=${page.paging.pageNo}</h1>

<!-- <a href="/cosmatic/register">제품추가하기</a><br> -->
<!-- <a href="/cosmatic/category/SKINCARE">스킨케어 조회하기</a><br> -->
<!-- <a href="/cosmatic/category/BASE">베이스 조회하기</a><br> -->
<!-- <a href="/cosmatic/category/EYE">아이제품 조회하기</a><br> -->
<!-- <a href="/cosmatic/category/LIP">립제품 조회하기</a><br> -->

<%-- 	<c:forEach var="cosmatic" items="${page.cosmatics}"> --%>
<%-- 		<li>${cosmatic.productno}, --%>
<%-- 		<a href="/cosmatic/item/${cosmatic.productno}?pageNo=${page.paging.pageNo}">${cosmatic.productname}</a> --%>
<%-- 		<a href="/cosmatic/modify/${cosmatic.productno}?pageNo=${page.paging.pageNo}">수정</a> --%>
<%-- 		<a href="/cosmatic/unregister/${cosmatic.productno}?pageNo=${page.paging.pageNo}">삭제</a> --%>
<!-- 		</li> -->
<%-- 	</c:forEach> --%>

<p style="text-align: center;">
	<button><a href="/cosmatic/register?pageNo=${page.paging.pageNo}">제품추가하기</a></button>
	<button><a href="/cosmatic/category/SKINCARE">스킨케어 조회하기</a></button>
	<button><a href="/cosmatic/category/BASE">베이스 조회하기</a></button>
	<button><a href="/cosmatic/category/EYE">아이제품 조회하기</a></button>
	<button><a href="/cosmatic/category/LIP">립제품 조회하기</a></button>
</p>


<div class="container">
<table class="table table-hover">
	<tr>
		<td>Product - Number</td>
		<td>Product - Name</td>
		<td>Product Modify</td>
		<td>Product Delete</td>
	</tr>
	
	<c:forEach var="cosmatic" items="${page.cosmatics}">
	<tr>
		<td>${cosmatic.productno}</td>
		<td><a href="/cosmatic/item/${cosmatic.productno}?pageNo=${page.paging.pageNo}">${cosmatic.productname}</a></td>
		<td><a href="/cosmatic/modify/${cosmatic.productno}?pageNo=${page.paging.pageNo}">수정</td>
		<td><a href="/cosmatic/unregister/${cosmatic.productno}?pageNo=${page.paging.pageNo}">삭제</a></td>
	</tr>
	</c:forEach>
</table>
</div>


<div class="container">
	<ul class="pagination ">
		<li ><a href="/cosmatic/page/1" >First</a></li>
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