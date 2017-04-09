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
<title>position_modifyForm.jsp</title>
<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
</head>
<body>
<h2>선수 수정</h2>
<form:form action="/position/modify?pageNo=${param.pageNo}" method="post" modelAttribute="positionForm">
<form:errors></form:errors>
<div>
	<label for="pstno">No :</label>
	<form:input path="pstno"/>
	
</div> 
<div>
	<label for="pstname">포지션명 :</label>
	<form:input path="pstname" />
	<form:errors path="pstname" />
</div>
<div>
	<label for="loc">지역 :</label>
	<form:input path="loc" />
	<form:errors path="loc" />
</div>
<input type="submit" value="포지션 수정">
</form:form> 
</body>
</html>