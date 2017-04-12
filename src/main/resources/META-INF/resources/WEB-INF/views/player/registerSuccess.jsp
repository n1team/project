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
</head>
<body>
<fieldset style="text-align: center;">
<h2 class="btn btn-default btn-lg"><span class="glyphicon glyphicon-grain">선수등록성공</span></h2>

<br>
<br>
<div class="table-responsive">
<table class="table">
<thead>
<tr class="success">
<th>순서</th>
<th>이름</th>
<th>포지션</th>
<th>입단년도</th>
<th>신장</th>
<th>등번호</th>
<th>연결번호</th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
	<tr>
		<td>${player.playerno}</td>
		<td>${player.pname}</a></td> 
		<td>${player.job}</td>
		<td>${player.join}</td>
		<td>${player.heights}</td>
		<td>${player.uniformNumber}</td>
		<td>${player.pstno}</td>
		</tr>
		</tbody>
		</table>
		</div>

<br>
<br>
<a class="btn btn-warning" href="/player/page/1">첫 페이지로</a>
</fieldset>
</body>
</html>