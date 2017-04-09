<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerSuccess.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../../code_assist/animate.css">
	<link rel="stylesheet" href="../../code_assist/bootstrap.css">
</c:if>
</head>
<body>
<h1>Book 삭제 성공입니다.</h1> 
book book_code = ${bookcode}
<hr>

<a class="btn btn-success" href="/book/page/${param.pageNo}">이전 페이지로. . .</a>
</body>
</html>