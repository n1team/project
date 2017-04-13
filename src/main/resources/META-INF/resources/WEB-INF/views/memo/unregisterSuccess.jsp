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

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<div class="container">
<h1>삭제되었습니다.</h1>
<hr>
<a class="btn btn-primary" href="/memo/${param.pageNo}">이전 페이지로</a>

<!-- <div class="modal-header"> -->
<!-- 	<button type="button" class="close" data-dismiss="modal">&times;</button> -->
<%-- 	<h3>no.${memo.mno}  삭제완료</h3> --%>
<!-- </div> -->
	
<!-- <div class="modal-footer"> -->
<!-- 		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
<!-- </div> -->
</div>
</body>
</html>