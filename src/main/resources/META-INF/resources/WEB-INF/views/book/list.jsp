<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>

<link rel="stylesheet" href="/css/book/outline.css">
<link rel="stylesheet" href="/css/book/list.css">

</head>
<body>
<h1>Book List</h1> 
<table class="table">
	<thead>
		<tr>
			<th>Book Code</th>
			<th>책 이름</th>
			<th>작가</th>
			<th>출판일</th>
			<th>분류</th>
			<th>페이지수</th>
			<th>책 가격</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="book" items="${books}">
		<tr>
			<td>${book.bookCode}</td>
			<td>${book.bookName}</td>
			<td>${book.writer}</td>
			<td>${book.publishedDate}</td>
			<td>${book.categorize}</td>
			<td>${book.pageNumber}</td>
			<td>${book.price}</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

<hr>

<div style="text-align: center;">
	<a class="btn btn-success" href="/book/page/1"}>목록편집 페이지</a>
</div>
</body>
</html>