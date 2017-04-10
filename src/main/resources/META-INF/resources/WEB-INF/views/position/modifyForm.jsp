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
</head>
<body>
<fieldset style="text-align: center;">
<h2 class="btn btn-info btn-md"><span class="glyphicon glyphicon-plane">포지션수정</span></h2>
<form:form action="/position/modify?pageNo=${param.pageNo}" method="post" modelAttribute="positionForm">
<form:errors></form:errors>
<br>
<div>
	<label for="pstno">분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;류 :</label>
	<form:input path="pstno"/>
	<form:errors path="pstno" />
</div> 
<div>
	<label for="pstname">포지션명 :</label>
	<form:input path="pstname" />
	<form:errors path="pstname" />
</div>
<div>
	<label for="loc">지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;역 :</label>
	<form:input path="loc" />
	<form:errors path="loc" />
</div>
<br>
<input class="btn btn-default" type="submit" value="포지션 수정">
</form:form> 
</fieldset>
</body>
</html>