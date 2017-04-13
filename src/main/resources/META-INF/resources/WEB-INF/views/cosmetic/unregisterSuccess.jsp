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
<link rel="stylesheet" href="/css/cosmetic/item.css">
<link rel="stylesheet" href="/css/cosmetic/page.css">
</head>

<body>
<h1>Cosmetic Delete Complete!</h1>

<div class="container" style="text-align: center;">
<label for="deletenumber" style="margin-top:50px;">DELETE NUMBER : ${productno }</label><br>
<a href="/cosmetic/page/${param.pageNo}"><button class="btn btn-default" style="text-align: center;float: none;">뒤로가기</button></a>
	

</div>
</body>
</html>