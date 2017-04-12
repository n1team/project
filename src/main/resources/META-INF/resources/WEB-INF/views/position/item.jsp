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
<title>position_item.jsp</title>
<style>
th{
	text-align: center;
}
</style>
</head>
<body>
<fieldset style="text-align: center;">
<a class="btn btn-default btn-lg" type="button"><span class="glyphicon glyphicon-grain">Position Detail Info</span></a>
<br>
<br>
<div class="table-responsive">
<table class="table">
<thead>
<tr class="info">
<th>순서</th>
<th>이름</th>
<th>포지션</th>
<th>입단년도</th>
<th>신장</th>
<th>등번호</th>
<th>연결번호</th>

</tr>
</thead>
<c:forEach var="player" items="${position.player}">
<tbody>
	<tr>
		<td>${player.playerno}</td>
		<td>${player.pname}</td> 
		<td>${player.job}</td>
		<td>${player.join}</td>
		<td>${player.heights}</td>
		<td>${player.uniformNumber}</td>
		<td>${player.pstno}</td>
</c:forEach>
		</tr>

		</tbody>
		</table>
		</div>

<%-- ${position.player} --%>

<br>
<br>
<a class="btn btn-primary" href="/position/page/1">Position 게시판으로</a>
</fieldset>

</body>
</html>