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
<style>
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css); 
    body {
	background-image: url("../../../img/y_dot.png");
/* 	background-size: 150%; */
    }
    
    h1 {
         color : gray;
         font-family: 'Space Mono';
         text-align: center;
         margin-top:70px;
    }
	
	.btn {
		margin : 0 auto;
		margin-top : 70px;
	}   
	.btn-default>a {
    	color : #FF8C00;
    	text-decoration: none;
    } 
	
    
</style>
<body>
<h1>Cosmatic Modify</h1>


<div style="text-align: center;">
	<form:form action="/cosmatic/modify?pageNo=${param.pageNo}" method="post" modelAttribute="cosmaticForm">

	<div class="col-xs-4" style="float: none; margin:0 auto;padding : 10px;">
		<label for="productname" style="float:left; ">productname : </label>
		<form:input path="productname" readonly="true" class="form-control"/>
		<form:errors path="productname"/>
	</div>
	
	<div class="col-xs-4" style="float: none; margin:0 auto; padding : 10px;">
		<label for="productno" style="float:left;">productno : </label>
		<form:input path="productno" readonly="true" class="form-control"/>
		<form:errors path="productno"/>
	</div>

	<div class="col-xs-4" style="float: none; margin:0 auto; padding : 10px;">
		<label for="price" style="float:left;">price : </label>
		<form:input path="price" class="form-control" />
		<form:errors path="price"/>
	</div>
	
	<div class="col-xs-4" style="float: none; margin:0 auto; padding : 10px;"> 
		<label for="capacity" style="float:left;">capacity : </label>
		<form:input path="capacity" class="form-control"/>
		<form:errors path="capacity"/>
	</div>
	
	<div class="col-xs-4" style="float: none; margin:0 auto; padding : 10px;">
		<label for="category" style="float:left;">category : </label>
		<form:input path="category" class="form-control"/>
		<form:errors path="category"/>
<!-- 		<label for="category">category : </label> -->
<!-- 		<select name="ca" onchange="changevalue(this.form)"> -->
<!-- 			<option value="카테고리를 설정해주세요">카테고리를 설정해주세요</option> -->
<!-- 			<option value="SKINCARE">SKINCARE</option> -->
<!-- 			<option value="BASE">BASE</option> -->
<!-- 			<option value="EYE">EYE</option> -->
<!-- 			<option value="LIP">LIP</option> -->
<!-- 		</select> -->
	</div>
	
	<button class="btn btn-default" style="text-align: center;"><a href="/cosmatic/page/${param.pageNo}">뒤로가기</a></button>
	<input type="submit" value="등록" class="btn btn-default" style="text-align: center;" >
</form:form>
</div>

</body>
</html>