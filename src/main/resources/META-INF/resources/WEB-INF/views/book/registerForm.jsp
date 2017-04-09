<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerForm.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../../code_assist/animate.css">
	<link rel="stylesheet" href="../../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<h1>책 등록</h1> 
<form:form action="/book/register" method="post" modelAttribute="bookForm">
	<!-- bookCode -->
	<div>
		<label for="bookCode">책 코드 : </label>
		<form:input path="bookCode"/>
		<form:errors path="bookCode"/>
	</div>
	<!-- bookName -->
	<div>
		<label for="bookName">책 이름 : </label>
		<form:input path="bookName"/>
		<form:errors path="bookName"/>
	</div>
	<!-- writer -->
	<div>
		<label for="writer">작가 : </label>
		<form:input path="writer"/>
		<form:errors path="writer"/>
	</div>
	<!-- publishedDate -->
	<div>
		<label for="publishedDate">출간일 : </label>
		<form:input path="publishedDate"/>
		<form:errors path="publishedDate"/>
	</div>
	<!-- categorize -->
	<div>
		<label for="categorize">분류 : </label>
		<form:input path="categorize"/>
		<form:errors path="categorize"/>
	</div>
	<!-- pageNumber -->
	<div>
		<label for="pageNumber">페이지 : </label>
		<form:input path="pageNumber"/>
		<form:errors path="pageNumber"/>
	</div>
	<!-- price -->
	<div>
		<label for="price">가격 : </label>
		<form:input path="price"/>
		<form:errors path="price"/>
	</div>
	
	<input type="submit" value="Book 등록">
</form:form>
</body>
</html>