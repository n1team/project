<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Account Editor</title>

</head>
<body>
<h1>Account 수정</h1>
<form:form action="/account/edit" method="post" modelAttribute="account">
	<form:errors/>

	<div>
		<label for="id">id : </label>
		<form:input path="id" readonly="true"/>
	</div>

	<div>
		<label for="password">Password : </label>
		<form:input path="password"/>
		<form:errors path="password"/>
	</div>

	<div>
		<label for="email">Email : </label>
		<form:input path="email" value="Test"/>
		<form:errors path="email"/>
	</div>

	<input type="submit" value="수정">

</form:form>

</body>
</html>



