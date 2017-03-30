<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
    .bg{
        background-color: rgba(255,255,255,0.2);
        padding : 20px;
        margin: 20px;
        text-align: center;
        width : 100%;
        color : DarkSlateGrey;
    }
    
    .btn {
		margin : 0 auto;
		margin-top : 70px;
    	color : #FF8C00;
	}   
	.btn-default>a {
    	text-decoration: none;
    } 
</style>
<body>

<h1 style="text-align: center;">LOGIN</h1>


<!-- 	<form:form action="/login" method="post"> -->
	
<!-- 		<div class="col-xs-4" style="float: none; margin:0 auto;padding : 10px;"> -->
<!-- 			<label for="username" >User Name : </label> -->
<!-- 			<form:input path="username" type="text" name="username" class="form-control input-sm"/> -->
<!-- 			<form:errors path="username"/> -->
<!-- 		</div> -->
		
<!-- 		<div class="col-xs-4" style="float: none; margin:0 auto;padding : 10px;"> -->
<!-- 			<label for="password" style="float:left; ">Password : </label> -->
<!-- 			<form:input path="password" type="password" name="password" class="form-control input-sm" /> -->
<!-- 			<form:errors path="password"/> -->
<!-- 		</div> -->
<%-- 		<button class="btn btn-default" style="text-align: center;"><a href="/cosmatic/page/${param.pageNo}">뒤로가기</a></button> --%>
<!-- 		<input type="submit" class="btn btn-default" value="로그인"> -->
<!-- 	</form:form> -->

<div style="text-align: center;">
	<form action="/login" method="post">
	
	<div class="col-xs-4" style="float: none; margin:0 auto;padding : 10px;">
		<label style="float:left; ">User Name : </label>
		<input type="text" name="username" class="form-control"><br>
	</div>
	<div class="col-xs-4" style="float: none; margin:0 auto;padding : 10px;">
		<label style="float:left; ">Password : </label>
		<input type="password" name="password" class="form-control"><br>
	</div>
	
	<input type="submit" value="Login" class="btn btn-default">
</form>
</div>


</body>
</html>