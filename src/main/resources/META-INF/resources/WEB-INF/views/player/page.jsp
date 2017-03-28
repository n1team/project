<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>


<a href="/player/register" class="btn btn-warning">player 등록</a>
<button type="button" class="btn btn-danger">Player Page <span class="badge">pageNo=${page.paging.pageNo}</button>
<div class="table-responsive">
<table class="table">
<thead>
<tr class="info">
<th>수정</th>
<th>삭제</th>
<th>Playerno</th>
<th>pname</th>
<th>job</th>
<th>join</th>
<th>heights</th>
<th>uniform_number</th>
<th>pstno</th>

<th></th>
<th></th>
</tr>
</thead>
<tbody>
<ol class="list-group">
<li>
	<c:forEach var="player" items="${page.player}">
		<tr>
		<!-- 현재 어떤 페이지에서 어떤 로우를 수정했는지 쿼리스트링 형태로 넘겨주는 것 jsp에서 처리함  -->
		<td><button class="btn btn-default"><a href="/player/modify/${player.playerno}?pageNo=${page.paging.pageNo}">수정</a></button></td>
		<td><button class="btn btn-default"><a href="/player/unregister/${player.playerno}?pageNo=${page.paging.pageNo}">삭제</a></button></td> 
		<td>${player.playerno}</td>
		<td><a href="/player/item/${player.playerno}?pageNo=${page.paging.pageNo}"> ${player.pname}</a></td> 
		<td>${player.job}</td>
		<td>${player.join}</td>
		<td>${player.heights}</td>
		<td>${player.uniformNumber}</td>
		<td>${player.pstno}</td>
		 </li>
	</c:forEach>
</ol>
</tr>
</tbody>
</table></div>
<hr class="animated bounce">
<ul class="pagination">
<li><a href="/player/page/1">First</a></li>
<li><a href="/player/page/${page.paging.firstPage - 1}">Prev</a></li>
<li><c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}">
	<a href="/player/page/${i}">${i}</a>
</c:forEach></li>
<li><a href="/player/page/${page.paging.lastPage + 1}">Next</a></li>
<li><a href="/player/page/${page.paging.totalPage}">Last</a></li>
</ul>






</body>
</html>