<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<title>insert complete.jsp</title>
<link rel="stylesheet" href="/css/cosmetic/item.css">
</head>

<body>
<h1>cosmatic insert complete :)</h1>
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
</body>
</html>