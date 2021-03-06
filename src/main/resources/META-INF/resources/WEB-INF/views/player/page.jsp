<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>player_page.jsp</title>
<link rel="stylesheet" href="/css/player/page.css">
</head>
<body>
<header>
    <h1>Lotte Giants Player</h1>
<img src="http://file.giantsclub.com/upload2014/FileContents/2017/01/31/02_1280_1024_300x200.jpg" class="img-rounded" alt="Cinque Terre" width="200" height="130">
<img src="http://file.giantsclub.com/upload2014/FileContents/2017/01/31/03_1280_1024_300x200.jpg" class="img-rounded" alt="Cinque Terre" width="200" height="130">
<img src="http://file.giantsclub.com/upload2014/FileContents/2017/01/31/01_1280_1024_300x200.jpg" class="img-rounded" alt="Cinque Terre" width="200" height="130">
</header>
<a href="/player/register" class="btn btn-warning">선수 등록</a>
<%-- <button type="button" class="btn btn-success">Player Page <span class="badge">pageNo=${page.paging.pageNo}</button> --%>
<div class="table-responsive">
<table class="table">
<thead>
<tr class="default">
<th>수정</th>
<th>삭제</th>
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
<footer>
<ul class="pagination">
<li><a href="/player/page/1">First</a></li>
<li><a href="/player/page/${page.paging.firstPage-1}">Prev</a></li>
<li><c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}">
	<a href="/player/page/${i}">${i}</a>
</c:forEach></li>
<li><a href="/player/page/${page.paging.lastPage + 1}">Next</a></li>
<li><a href="/player/page/${page.paging.totalPage}">Last</a></li>
</ul>
</footer>






</body>
</html>