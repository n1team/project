<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>unregisterSuccess.jsp</title>

<link rel="stylesheet" href="/css/book/unregisterSuccess.css">

</head>
<body>
<h1>Book 삭제 성공</h1>
<div style="text-align: center;">
	<label for="deletecode" id="deletecode">Delete Code : ${bookcode}</label>
</div>

<hr>

<div style="text-align: center;">
	<a class="btn btn-success" href="/book/page/${param.pageNo}">책 페이지로. . .</a>
</div>
</body>
</html>