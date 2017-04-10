<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<title>cosmetic_list.jsp</title>
<link rel="stylesheet" href="/css/cosmetic/category.css">
</head>

<body>
<h1 style="text-align: center;">Category List</h1>
<div class="container">
<button class="btn btn-default" style="text-align: center;"><a href="/cosmetic/page/${param.pageNo}">뒤로가기</a></button>
<table class="table table-hover">
	<tr>
		<td>Product - Number</td>
		<td>Product - Name</td>
		<td>Category</td>
<!-- 		<td>Product Modify</td> -->
<!-- 		<td>Product Delete</td> -->
	</tr>
	
	<c:forEach var="list" items="${cosmetic}">
	<tr>
		<td>${list.productno}</td>
		<td><a href="/cosmetic/item/${list.productno}?pageNo=${page.paging.pageNo}">${list.productname}</a></td>
		<td>${list.category}</td>
<%-- 		<td><a href="/cosmatic/modify/${list.productno}?pageNo=${page.paging.pageNo}">수정</td> --%>
<%-- 		<td><a href="/cosmatic/unregister/${list.productno}?pageNo=${page.paging.pageNo}">삭제</a></td> --%>
	</tr>
	</c:forEach>
</table>
</div>


<div class="container">
	<ul class="pagination pagination-sm">
		<li><a href="/cosmetic/page/1">First</a></li>
		<li><a href="/cosmetic/page/${page.paging.firstPage -1 }">Prev</a></li>
		<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}">
			<li><a href="/cosmetic/page/${i}">${i}</a></li>
		</c:forEach>
		<li><a href="/cosmetic/page/${page.paging.lastPage +1 }">Next</a></li>
		<li><a href="/cosmetic/page/${page.paging.totalPage}">Last</a></li>
	</ul>
</div>
</body>
</html>