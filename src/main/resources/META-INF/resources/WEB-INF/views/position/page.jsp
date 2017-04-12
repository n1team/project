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
<title>position_page.jsp</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Kreon');
header {
	font-family: "Kreon";
	text-align: center;

}
h1{
	font-size: 38px;
}

img{
	margin-left: 40px;	
	margin-right:40px;
}

.pagination {
	display : block;
	text-align: center;
	margin-top : 20px;
}

.pagination > li > a {
	float : none;
	margin-left:  -5px;
}
</style>
</head>
<body>
<header>
    <h1>Lotte Giants Position</h1>
<img src="http://file.giantsclub.com/upload2014/FileContents/2016/09/01/02_1280_1024_300x200.jpg" class="img-rounded" alt="Lee Jung Min" width="600" height="180">
</header>
<a href="/position/register" class="btn btn-primary active">Position 등록</a>
<%-- <button type="button" class="btn btn-primary disabled">Position Page <span class="badge">pageNo=${page.paging.pageNo}</span></button> --%>
<div class="table-responsive">
<table class="table">
<thead>
<tr class="default">
<th>수정</th>
<th>삭제</th>
<th>연결번호</th>
<th>포지션 이름</th>
<th>지역</th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<ol class="list-group">
<li>
	<c:forEach var="position" items="${page.position}">
		<tr>
		<!-- 현재 어떤 페이지에서 어떤 로우를 수정했는지 쿼리스트링 형태로 넘겨주는 것 jsp에서 처리함  -->
		<td><button class="btn btn-default"><a href="/position/modify/${position.pstno}?pageNo=${page.paging.pageNo}">수정</a></button></td>
		<td><button class="btn btn-default"><a href="/position/unregister/${position.pstno}?pageNo=${page.paging.pageNo}">삭제</a></button></td> 
		<td>${position.pstno}</td>
		<td><a href="/position/item/${position.pstno}?pageNo=${page.paging.pageNo}"> ${position.pstname}</a></td> 
		<td>${position.loc}</td>
</li>
	</c:forEach>
</ol>
</tr>
</tbody>
</table></div>
<footer>
<ul class="pagination">
<li><a href="/position/page/1">First</a></li>
<li><a href="/position/page/${page.paging.firstPage - 1}">Prev</a></li>
<li><c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}">
	<a href="/position/page/${i}">${i}</a>
</c:forEach></li>
<li><a href="/position/page/${page.paging.lastPage + 1}">Next</a></li>
<li><a href="/position/page/${page.paging.totalPage}">Last</a></li>
</ul>
</footer>
</body>
</html>