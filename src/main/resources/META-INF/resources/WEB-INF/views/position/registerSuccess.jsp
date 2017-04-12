<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>position_registerSuccess.jsp</title>
</head>
<body>
<fieldset style="text-align: center; width:50%; margin-left: 450px;">
<h2 class="btn btn-default btn-lg"><span class="glyphicon glyphicon-plain">포지션등록성공</span></h2>
<br>
<br>
<br>
<br>
<div class="table-responsive">
<table class="table">
<thead>
<tr class="success" style="text-align: center;">
<th>연결번호</th>
<th>포지션이름</th>
<th>지역</th>
</tr>
</thead>
<tbody>
	<tr>
		<td>${position.pstno}</td>
		<td>${position.pstname}</td>
		<td>${position.loc}</td>
		</tr>
		</tbody>
		</table>
		</div>
<br>
<br>
<br>
<br>
<a class="btn btn-primary" href="/position/page/1">첫 페이지로</a>
</fieldset>
</body>
</html>