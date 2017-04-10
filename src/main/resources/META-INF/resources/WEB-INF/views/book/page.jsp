<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page.jsp</title>

<link rel="stylesheet" href="/css/book/page.css">

</head>

<body class="container">

<h1>Book in Library</h1>
<a href="/book/register?pageNo=${page.paging.pageNo}" class="btn btn-primary">Book 등록</a>
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
		<c:forEach var="book" items="${page.books}">
		<tr>
			<td>${book.bookCode}</td>
			<td><a href="/book/item/${book.bookCode}?pageNo=${page.paging.pageNo}">${book.bookName}</a></td>
			<td>${book.writer}</td>
			<td>${book.publishedDate}</td>
			<td>${book.categorize}</td>
			<td>${book.pageNumber}</td>
			<td>${book.price}</td>
			<td><a class="btn btn-info" href="/book/modify/${book.bookCode}?pageNo=${page.paging.pageNo}">수정</a></td>
			<td><a class="btn btn-danger" href="/book/unregister/${book.bookCode}?pageNo=${page.paging.pageNo}">삭제</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
<hr>
<!-- <div class="container"> -->
<div id="bp" style="align: center;">
	<ul class="pagination">
		<li><a href="/book/page/1">First</a></li>
		<li><a href="/book/page/${page.paging.firstPage - 1}">Prev</a></li>
		<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}">
			<li><a href="/book/page/${i}">${i}</a></li>
		</c:forEach>
		<li><a href="/book/page/${page.paging.lastPage + 1}">Next</a></li>
		<li><a href="/book/page/${page.paging.totalPage}">Last</a></li>
	</ul>
</div>
</body>
</html>