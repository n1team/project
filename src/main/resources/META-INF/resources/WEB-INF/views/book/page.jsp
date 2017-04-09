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
	<link rel="stylesheet" href="../../code_assist/animate.css">
	<link rel="stylesheet" href="../../code_assist/bootstrap.css">
</c:if>
</head>
<body>

<button class="btn btn-danger"> ssssss</button>
<h1>Book Page pageNo=${page.paging.pageNo}</h1>
<a href="/book/register" class="btn btn-primary">Book 등록</a>
<ol class="list-group">
	<c:forEach var="book" items="${page.books}">
		<li class="list-group-item-info">
			${book.bookCode},
			<a href="/book/item/${book.bookCode}?pageNo=${page.paging.pageNo}">${book.bookName}</a>,
			${book.writer},
			${book.publishedDate},
			${book.categorize},
			${book.pageNumber},
			${book.price}
			<a class="btn btn-info" href="/book/modify/${book.bookCode}?pageNo=${page.paging.pageNo}">수정</a>
			<a class="btn btn-danger" href="/book/unregister/${book.bookCode}?pageNo=${page.paging.pageNo}">삭제</a>
		</li>
	</c:forEach>
</ol>
<hr>

<a href="/book/page/1">First</a>
<a href="/book/page/${page.paging.firstPage - 1}">Prev</a>
<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}">
	<a href="/book/page/${i}">${i}</a>
</c:forEach>
<a href="/book/page/${page.paging.lastPage + 1}">Next</a>
<a href="/book/page/${page.paging.totalPage}">Last</a>
</body>
</html>