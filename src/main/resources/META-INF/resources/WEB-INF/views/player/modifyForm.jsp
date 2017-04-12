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
</head>
<body>
<fieldset style="text-align: center;">
<h2 class="btn btn-info btn-md"><span class="glyphicon glyphicon-grain">선수수정</span></h2>
<form:form action="/player/modify?pageNo=${param.pageNo}" method="post" modelAttribute="playerForm">
<form:errors></form:errors>
<br>
<div class="form-group">
	<label for="playerno">순&nbsp; &nbsp;&nbsp; 번 :</label>
	<form:input path="playerno" readonly="true" style="background-color: lightgray;"/>
</div>
<div class="form-group">
	<label for="pname">선 수 명 :</label>
	<form:input path="pname" />
	<form:errors path="pname" />
</div>
<div class="form-group">
	<label for="job">포 지 션 :</label>
	<form:input path="job" />
	<form:errors path="job" />
</div>
<div class="form-group">
	<label for="join">입단년도 :</label>
	<form:input path="join" />
	<form:errors path="join" />
</div>
<div class="form-group">
	<label for="heights">신&nbsp; &nbsp;&nbsp; 장 :</label>
	<form:input path="heights" />
	<form:errors path="heights" />
</div>
<div class="form-group">
	<label for="uniformNumber">등 번 호 :</label>
	<form:input path="uniformNumber" />
	<form:errors path="uniformNumber" />
</div>
<div class="form-group">
	<label for="pstno">분&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;류 :</label>
	<form:input path="pstno" />
	<form:errors path="pstno" />
</div>
<input class="btn btn-primary btn-md" type="submit" value="선수 수정">
</form:form> 
</fieldset>
</body>
</html>