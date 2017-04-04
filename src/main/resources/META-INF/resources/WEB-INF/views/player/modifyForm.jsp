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
<title>modifyForm.jsp</title>
<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
</head>
<body>
<h2>선수 수정</h2>
<form:form action="/player/modify?pageNo=${param.pageNo}" method="post" modelAttribute="playerForm">
<form:errors></form:errors>
<div>
	<label for="playerno">순번 :</label>
	<form:input path="playerno" readonly="true"/>
</div> 
<div>
	<label for="pname">선수명 :</label>
	<form:input path="pname" />
	<form:errors path="pname" />
</div>
<div>
	<label for="job">포지션 :</label>
	<form:input path="job" />
	<form:errors path="job" />
</div>
<div>
	<label for="join">입단년도 :</label>
	<form:input path="join" />
	<form:errors path="join" />
</div>
<div>
	<label for="heights">키 :</label>
	<form:input path="heights" />
	<form:errors path="heights" />
</div>
<div>
	<label for="uniformNumber">등번호 :</label>
	<form:input path="uniformNumber" />
	<form:errors path="uniformNumber" />
</div>
<div>
	<label for="pstno">pstno :</label>
	<form:input path="pstno" />
	<form:errors path="pstno" />
</div>
<input type="submit" value="선수 수정">
</form:form> 
</body>
</html>