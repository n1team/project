<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerForm.jsp</title>
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
<h1>Cosmatic Insert</h1>
<a href="/cosmatic/page/${param.pageNo}">이전 Page List로....</a>
<form:form action="/cosmatic/register?pageNo=${param.pageNo}" method="post" modelAttribute="cosmaticForm">
	<div>
		<label for="productname" >productname : </label>
		<form:input path="productname" placeholder="50자이내로 입력해주세요"/>
		<form:errors path="productname"/>
	</div>
	
	<div>
		<label for="productno">productno : </label>
		<form:input path="productno"/>
		<form:errors path="productno"/>
	</div>

	<div>
		<label for="price">price : </label>
		<form:input path="price"/>
		<form:errors path="price"/>
	</div>
	
	<div>
		<label for="capacity">capacity : </label>
		<form:input path="capacity"/>
		<form:errors path="capacity"/>
	</div>
	
	<div>
		<label for="category">category : </label>
		<form:input path="category"/>
		<form:errors path="category"/>
<!-- 		<label for="category">category : </label> -->
<!-- 		<select> -->
<!-- 			<option value="카테고리를 설정해주세요">카테고리를 설정해주세요</option> -->
<!-- 			<option value="SKINCARE">SKINCARE</option> -->
<!-- 			<option value="BASE">BASE</option> -->
<!-- 			<option value="EYE">EYE</option> -->
<!-- 			<option value="LIP">LIP</option> -->
<!-- 		</select> -->
	</div>
	
<!-- 	<div> -->
<!-- 		<label for="category">category : </label> -->
<!-- 		<select> -->
<!-- 			<option value="카테고리를 설정해주세요">카테고리를 설정해주세요</option> -->
<!-- 			<option name="SKINCARE" value="SKINCARE">SKINCARE</option> -->
<!-- 			<option value="BASE">BASE</option> -->
<!-- 			<option value="EYE">EYE</option> -->
<!-- 			<option value="LIP">LIP</option> -->
<!-- 		</select> -->
<!-- 	</div> -->
	
	<input type="submit" value="등록">
</form:form>
</body>
</html>