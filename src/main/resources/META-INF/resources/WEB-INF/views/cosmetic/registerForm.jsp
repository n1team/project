<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<title>registerForm.jsp</title>
<link rel="stylesheet" href="/css/cosmetic/form.css">
<link rel="stylesheet" href="/css/cosmetic/page.css">
</head>

<body>
<h1>Cosmetic Insert</h1>

<div style="text-align: center;">
	<form:form action="/cosmetic/register?pageNo=${param.pageNo}" method="post" modelAttribute="cosmeticForm">
	
	<div class="col-xs-4" style="float: none; margin:0 auto; padding : 10px;">
		<label for="productname" style="float:left; ">productname : </label>
		<form:input path="productname" placeholder="50자이내로 입력해주세요" class="form-control"/>
		<form:errors path="productname"/>
	</div>
	
<!-- 	<div class="col-xs-4" style="float: none; margin:0 auto;"> -->
<!-- 		<label for="productno">productno : </label> -->
<%-- 		<form:input path="productno" value="" class="form-control"/> --%>
<%-- 		<form:errors path="productno"/> --%>
<!-- 	</div> -->

	<div class="col-xs-4" style="float: none; margin:0 auto; padding : 10px;">
		<label for="price" style="float:left; ">price : </label>
		<form:input path="price" class="form-control"/>
		<form:errors path="price"/>
	</div>
	
	<div class="col-xs-4" style="float: none; margin:0 auto; padding : 10px;">
		<label for="capacity" style="float:left; ">capacity : </label>
		<form:input path="capacity" class="form-control" placeholder=""/>
		<form:errors path="capacity"/>
	</div>
	
	<div class="col-xs-4" style="float: none; margin:0 auto; padding : 10px;">
		<label for="category" style="float:left; ">category : </label>
		<form:input path="category" class="form-control"/>
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
	<button type="reset" onclick="location.href='/cosmetic/page/${param.pageNo}'" class="btn btn-default" style="text-align: center;">뒤로가기</button>
	
	<input type="submit" class="btn btn-default" value="등록">
</form:form>
</div>

</body>
</html>