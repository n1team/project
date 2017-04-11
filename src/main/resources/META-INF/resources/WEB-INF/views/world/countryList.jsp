<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Country list</title>
<link rel="stylesheet" href="/css/world/list.css">
</head>
<body>
<div class="contentBox">
<div class="innerCB">
	<h1 class="headline">Country List</h1>
	<table>
		<thead>
		<tr>
			<th>국가코드</th>
			<th>국가명</th>
			<th>대륙</th>
			<th>지역</th>
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

						<a href="/country/list/">처음페이지</a> |
						<c:forEach begin="${latest}"
								   end="${last}"
								   step="1"
								   var="i">
							<a href="/country/list/${i}">${i}</a> |
						</c:forEach>
						<a href="/country/list/${data.totalPages}">마지막페이지</a>
					</div>
				</div>
			</th>
		</tr>
		</tfoot>

		<tbody>
		<c:forEach var="i" items="${data.content}">
		<tr>
			<td data-title='국가코드'>${i.code}</td>
			<td data-title='국가명'><a class="button" data-id="${i.code}">${i.name}</a></td>
			<td data-title='대륙'>${i.continent}</td>
			<td data-title='지역'>${i.region}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>

	<c:forEach var="i" items="${data.content}">
		<form method="post" action="/country/update/${i.code}" class='detail' id="${i.code}">
			<div class='detail-container'>
				<dl>
					<dt>국가 코드</dt>
					<dd><input type="text" name="code" value="${i.code}" disabled/></dd>
					<dt>나라명</dt>
					<dd><input type="text" name="name" value="${i.name}"/></dd>
					<dt>대륙명</dt>
					<dd><input type="text" name="continent" value="${i.continent}"/></dd>
					<dt>지역</dt>
					<dd><input type="text" name="region" value="${i.region}"/></dd>
					<dt>면적</dt>
					<dd><input type="text" name="surfaceArea" value="${i.surfaceArea}"/></dd>
					<dt>indepYear</dt>
					<dd><input type="text" name="indepYear" value="${i.indepYear}"/></dd>
					<dt>인구수</dt>
					<dd><input type="text" name="population" value="${i.population}"/></dd>
					<dt>lifeExpectancy</dt>
					<dd><input type="text" name="lifeExpectancy" value="${i.lifeExpectancy}"/></dd>
					<dt>gnp</dt>
					<dd><input type="text" name="gnp" value="${i.gnp}"/></dd>
					<dt>gnpOld</dt>
					<dd><input type="text" name="gnpOld" value="${i.gnpOld}"/></dd>
					<dt>localName</dt>
					<dd><input type="text" name="localName" value="${i.localName}"/></dd>
					<dt>governmentForm</dt>
					<dd><input type="text" name="governmentForm" value="${i.governmentForm}"/></dd>
					<dt>headOfState</dt>
					<dd><input type="text" name="headOfState" value="${i.headOfState}"/></dd>
					<dt>capital</dt>
					<dd><input type="text" name="capital" value="${i.capital}"/></dd>
					<dt>code2</dt>
					<dd><input type="text" name="code2" value="${i.code2}"/></dd>
				</dl>
			</div>
			<div class='detail-nav'>
				<button class='closeButton' data-id="${i.code}">Close</button>
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