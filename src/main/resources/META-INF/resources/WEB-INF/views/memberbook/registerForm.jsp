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
<h1>Member 등록</h1> 
<form:form action="/memberbook/register" method="post" modelAttribute="memberbookForm">
	<!-- memberName -->
	<div>
		<label for="memberName">Member Name : </label>
		<form:input path="memberName"/>
		<form:errors path="memberName"/>
	</div>
	<!-- bookCode -->
	<div>
		<label for="bookCode">Book Code : </label>
		<form:input path="bookCode"/>
		<form:errors path="bookCode"/>
	</div>
	<!-- checkState -->
	<div>
		<label for="checkState">Check State : </label>
		<form:input path="checkState"/>
		<form:errors path="checkState"/>
	</div>
	<!-- rentReserveDate -->
	<div>
		<label for="FilterDate">Rent or Reserve Date : </label>
		<form:input path="FilterDate"/>
		<form:errors path="FilterDate"/>
	</div>
	
	<input type="submit" value="Member 등록">
</form:form>
<hr>

</body>
</html>