<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<title>insert complete.jsp</title>
<link rel="stylesheet" href="/css/cosmetic/success.css">
<link rel="stylesheet" href="/css/cosmetic/page.css">
</head>

<body>
<h1>cosmetic modify complete :)</h1>
<div class="container">
<a href="/cosmetic/page/${param.pageNo}"><button class="btn btn-default" style="text-align: center;">뒤로가기</button></a>
<table class="table table-hover">
	<tr>
		<td>Product - Number</td>
		<td>Product - Name</td>
		<td>Price</td>
		<td>Capacity</td>
		<td>Category</td>
	</tr>
	
	<tr>
		<td>${cosmetic.productno}</td>
		<td>${cosmetic.productname}</td>
		<td>${cosmetic.price}</td>
		<td>${cosmetic.capacity}</td>
		<td>${cosmetic.category}</td>
	</tr>
</table>
</div>

</body>
</html>