<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerForm.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<div class="container">
<h1>등록</h1>
<form:form action="/memo/register" method="post" modelAttribute="memoForm">
<table class="table table-bordered">
	<tr>
	<td><label for="mname">제목</label></td>
	<td><form:input path="mname" size="100" autocomplete="off"/>
	<form:errors path="mname"/></td>
	</tr>
	<tr>
	<td><label for="password">비밀번호</label></td>
	<td><form:input path="password" size="100" type="password" style="ime-mode:disabled" autocomplete="off"/>
	<form:errors path="password"/></td>
	</tr>
	
	<tr>
	<td valign="top"><label for="mcontent">내용 </label></td>
	<td><form:textarea path="mcontent" cols="101" rows="25"/>
	<form:errors path="mcontent"/></td>
	
	</tr>
</table>
<input type="submit" value="Memo 등록">
<a class="btn btn-info" href="/memo/1">목록</a>


</form:form>
</div>
</body>
</html>