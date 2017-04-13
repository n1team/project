<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>City list</title>
<link rel="stylesheet" href="/css/nub/tables.css">
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
				<div class="row center-block col-lg-12">
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
			<tr class="record" data-id="city${i.id}">
				<td data-tile="도시명">${i.name}</td>
				<td data-tile="국가명">${i.country.name}</td>
				<td data-tile="지역">${i.district}</td>
				<td data-tile="인구수">${i.population}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="isAdmin" />
		<c:if test="${isAdmin.hasAuthority('ADMIN') || isAdmin.hasAuthority('CITY_ADMIN')}">
			<div class="text-right"><button class="addButton" data-id="cityNew">추가</button></div>
		</c:if>
	</sec:authorize>

	<c:forEach var="i" items="${data.content}">
		<form:form action="/city/update" method="post" modelAttribute="city${i.id}" cssClass="detail">
			<form:errors/>
			<div class='detail-container'>
				<dl>
					<dt>Number</dt>
					<dd><form:input path="id" value="${i.id}" readonly="true"/></dd>
					<dt>도시명</dt>
					<dd><form:input path="name" value="${i.name}"/></dd>
					<dt>지역</dt>
					<dd><form:input path="district" value="${i.district}"/></dd>
					<dt>인구수</dt>
					<dd><form:input path="population" value="${i.population}"/></dd>
					<dt>국가 코드</dt>
					<dd><input type="text" name="cntCode" value="${i.country.code}"/></dd>
				</dl>
			</div>
			<div class='detail-nav'>
				<button class='closeButton' data-id="city${i.id}">Close</button>
				<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal" var="p" />
					<c:if test="${p.hasAuthority('ADMIN') || p.hasAuthority('CITY_ADMIN')}">
						<input class="modButton" type="submit" name="submit" value="Apply"/>
						<input class="delButton" type="submit" name="submit" value="Delete"/>
					</c:if>
				</sec:authorize>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			</div>
		</form:form>
	</c:forEach>

	<form:form action="/city/insert" method="post" modelAttribute="cityNew" cssClass="detail">
		<form:errors/>
		<div class='detail-container'>
			<dl>
				<dt>Number</dt>
				<dd><form:input path="id"/></dd>
				<dt>도시명</dt>
				<dd><form:input path="name"/></dd>
				<dt>지역</dt>
				<dd><form:input path="district"/></dd>
				<dt>인구수</dt>
				<dd><form:input path="population"/></dd>
				<dt>국가 코드</dt>
				<dd><input type="text" name="cntCode"/></dd>
			</dl>
		</div>
		<div class='detail-nav'>
			<button class='closeButton' data-id="cityNew">Close</button>
			<input class="modButton" type="submit" name="submit" value="추가"/>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		</div>
	</form:form>

</div>
</div>
<script src="/js/nub/eventHandle.js"></script>
</body>
</html>