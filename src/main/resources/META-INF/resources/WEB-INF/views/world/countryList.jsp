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
<title>Country list</title>
<link rel="stylesheet" href="/css/nub/tables.css">
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
		<tr class="record" data-id="cnt${i.code}">
			<td data-title='국가코드'>${i.code}</td>
			<td data-title='국가명'>${i.name}</td>
			<td data-title='대륙'>${i.continent}</td>
			<td data-title='지역'>${i.region}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>

	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="isAdmin" />
		<c:if test="${isAdmin.hasAuthority('ADMIN') || isAdmin.hasAuthority('CNT_ADMIN')}">
			<div class="text-right"><button class="addButton" data-id="cntNew">추가</button></div>
		</c:if>
	</sec:authorize>

	<c:forEach var="i" items="${data.content}">
		<form:form action="/country/update" method="post" modelAttribute="cnt${i.code}" cssClass="detail">
			<div class='detail-container'>
				<dl>
					<dt>국가 코드</dt>
					<dd><form:input path="code" value="${i.code}" readonly="true"/></dd>
					<dt>나라명</dt>
					<dd><form:input path="name" value="${i.name}"/></dd>
					<dt>대륙명</dt>
					<dd><form:input path="continent" value="${i.continent}"/></dd>
					<dt>지역</dt>
					<dd><form:input path="region" value="${i.region}"/></dd>
					<dt>면적</dt>
					<dd><form:input path="surfaceArea" value="${i.surfaceArea}"/></dd>
					<dt>indepYear</dt>
					<dd><form:input path="indepYear" value="${i.indepYear}"/></dd>
					<dt>인구수</dt>
					<dd><form:input path="population" value="${i.population}"/></dd>
					<dt>lifeExpectancy</dt>
					<dd><form:input path="lifeExpectancy" value="${i.lifeExpectancy}"/></dd>
					<dt>gnp</dt>
					<dd><form:input path="gnp" value="${i.gnp}"/></dd>
					<dt>gnpOld</dt>
					<dd><form:input path="gnpOld" value="${i.gnpOld}"/></dd>
					<dt>localName</dt>
					<dd><form:input path="localName" value="${i.localName}"/></dd>
					<dt>governmentForm</dt>
					<dd><form:input path="governmentForm" value="${i.governmentForm}"/></dd>
					<dt>headOfState</dt>
					<dd><form:input path="headOfState" value="${i.headOfState}"/></dd>
					<dt>capital</dt>
					<dd><form:input path="capital" value="${i.capital}"/></dd>
					<dt>code2</dt>
					<dd><form:input path="code2" value="${i.code2}"/></dd>
				</dl>
			</div>
			<div class='detail-nav'>
				<button class='closeButton' data-id="cnt${i.code}">Close</button>
				<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal" var="p" />
					<c:if test="${p.hasAuthority('ADMIN') || p.hasAuthority('CNT_ADMIN')}">
						<input class="modButton" type="submit" name="submit" value="Apply"/>
						<input class="delButton" type="submit" name="submit" value="Delete"/>
					</c:if>
				</sec:authorize>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			</div>
		</form:form>
	</c:forEach>

	<form:form action="/country/insert" method="post" modelAttribute="cntNew" cssClass="detail">
		<form:errors/>
		<div class='detail-container'>
			<dl>
				<dt>국가 코드</dt>
				<dd><form:input path="code"/></dd>
				<dt>나라명</dt>
				<dd><form:input path="name"/></dd>
				<dt>대륙명</dt>
				<dd><form:input path="continent"/></dd>
				<dt>지역</dt>
				<dd><form:input path="region"/></dd>
				<dt>면적</dt>
				<dd><form:input path="surfaceArea"/></dd>
				<dt>indepYear</dt>
				<dd><form:input path="indepYear"/></dd>
				<dt>인구수</dt>
				<dd><form:input path="population"/></dd>
				<dt>lifeExpectancy</dt>
				<dd><form:input path="lifeExpectancy"/></dd>
				<dt>gnp</dt>
				<dd><form:input path="gnp"/></dd>
				<dt>gnpOld</dt>
				<dd><form:input path="gnpOld"/></dd>
				<dt>localName</dt>
				<dd><form:input path="localName"/></dd>
				<dt>governmentForm</dt>
				<dd><form:input path="governmentForm"/></dd>
				<dt>headOfState</dt>
				<dd><form:input path="headOfState"/></dd>
				<dt>capital</dt>
				<dd><form:input path="capital"/></dd>
				<dt>code2</dt>
				<dd><form:input path="code2"/></dd>
			</dl>
		</div>
		<div class='detail-nav'>
			<button class='closeButton' data-id="cntNew">Close</button>
			<input class="modButton" type="submit" name="submit" value="추가"/>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		</div>
	</form:form>

</div>
</div>
<script src="/js/nub/eventHandle.js"></script>
</body>
</html>