<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>City list</title>
<link rel="stylesheet" href="/css/world/list.css">
</head>
<body>
<div class="contentBox">
<div class="innerCB">
	<h1 class="headline">City list</h1>
	<table>
		<thead>
			<tr>
				<th>도시명</th>
				<th>국가명</th>
				<th>지역</th>
				<th>인구수</th>
			</tr>
		</thead>
		<tfoot>
		<tr>
			<th colspan='4'>
				<div class="row center-block col-lg-1">
					<div class="text-center">
						<c:choose>
							<c:when test="${data.number > 3}">
								<c:set var="latest" value="${data.number - 3}" />
							</c:when>
							<c:otherwise>
								<c:set var="latest" value="1" />
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${data.totalPages < latest + 9}">
								<c:set var="last" value="${data.totalPages}" />
							</c:when>
							<c:otherwise>
								<c:set var="last" value="${latest + 9}" />
							</c:otherwise>
						</c:choose>

						<a href="/city/list/">처음페이지</a> |
						<c:forEach begin="${latest}"
								   end="${last}"
								   step="1"
								   var="i">
							<a href="/city/list/${i}">${i}</a> |
						</c:forEach>
						<a href="/city/list/${data.totalPages}">마지막페이지</a>
					</div>
				</div>
			</th>
		</tr>
		</tfoot>
		<tbody>
			<c:forEach var="i" items="${data.content}">
			<tr>
				<td data-tile="도시명"><a class="button" data-id="${i.id}">${i.name}</a></td>
				<td data-tile="국가명">${i.country.name}</td>
				<td data-tile="지역">${i.district}</td>
				<td data-tile="인구수">${i.population}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

	<c:forEach var="i" items="${data.content}">
		<form method="post" action="/city/update/${i.id}" class='detail' id="${i.id}">
			<div class='detail-container'>
				<dl>
					<dt>Number</dt>
					<dd><input type="text" name="id" value="${i.id}" disabled/></dd>
					<dt>도시명</dt>
					<dd><input type="text" name="name" value="${i.name}"/></dd>
					<dt>지역</dt>
					<dd><input type="text" name="job" value="${i.district}"/></dd>
					<dt>인구수</dt>
					<dd><input type="text" name="mgr" value="${i.population}"/></dd>
					<dt>나라</dt>
					<dd><input type="text" name="hiredate" value="${i.country.name}"/></dd>
				</dl>
			</div>
			<div class='detail-nav'>
				<button class='closeButton' data-id="${i.id}">Close</button>
				<input class="modButton" type="submit" name="submit" value="수정"/>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			</div>
		</form>
	</c:forEach>

</div>
</div>
<script src="/js/nub/eventHandle.js"></script>
</body>
</html>