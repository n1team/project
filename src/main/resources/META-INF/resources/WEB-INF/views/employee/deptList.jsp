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
<title>Department list</title>
<link rel="stylesheet" href="/css/nub/tables.css">
</head>
<body>

<div class="contentBox">
<div class="innerCB">
	<h1 class="headline">Department List</h1>
	<table>
		<thead>
		<tr>
			<th>부서번호</th>
			<th>부서명</th>
			<th>위치</th>
		</tr>
		</thead>
		<tfoot>
		<tr>
			<th colspan='3'>
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

						<a href="/dept/list/">처음페이지</a> |
						<c:forEach begin="${latest}"
								   end="${last}"
								   step="1"
								   var="i">
							<a href="/dept/list/${i}">${i}</a> |
						</c:forEach>
						<a href="/dept/list/${data.totalPages}">마지막페이지</a>
					</div>
				</div>
			</th>
		</tr>
		</tfoot>

		<tbody>
		<c:forEach var="i" items="${data.content}">
		<tr class="record" data-id="dept${i.deptno}">
			<td data-title='부서번호'>${i.deptno}</td>
			<td data-title='부서명'>${i.dname}</td>
			<td data-title='위치'>${i.loc}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>

	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="isAdmin" />
		<c:if test="${isAdmin.hasAuthority('ADMIN') || isAdmin.hasAuthority('DEPT_ADMIN')}">
			<div class="text-right"><button class="addButton" data-id="deptNew">추가</button></div>
		</c:if>
	</sec:authorize>

	<c:forEach var="i" items="${data.content}">
		<form:form action="/dept/update" method="post" modelAttribute="dept${i.deptno}" cssClass="detail">
		<form:errors/>
			<div class='detail-container'>
				<dl>
					<dt>부서번호</dt>
					<dd><form:input path="deptno" value="${i.deptno}" readonly="true" /></dd>
					<dt>부서명</dt>
					<dd><form:input path="dname" value="${i.dname}"/></dd>
					<dt>위치</dt>
					<dd><form:input path="loc" value="${i.loc}"/></dd>
				</dl>
			</div>
			<div class='detail-nav'>
				<button class='closeButton' data-id="dept${i.deptno}">Close</button>
				<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal" var="p" />
					<c:if test="${p.hasAuthority('ADMIN') || p.hasAuthority('DEPT_ADMIN')}">
						<input class="modButton" type="submit" name="submit" value="Apply"/>
						<input class="delButton" type="submit" name="submit" value="Delete"/>
					</c:if>
				</sec:authorize>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			</div>
		</form:form>
	</c:forEach>

	<form:form action="/dept/insert" method="post" modelAttribute="deptNew" cssClass="detail">
		<form:errors/>
		<div class='detail-container'>
			<dl>
				<dt>부서번호</dt>
				<dd><form:input path="deptno" /></dd>
				<dt>부서명</dt>
				<dd><form:input path="dname"/></dd>
				<dt>위치</dt>
				<dd><form:input path="loc" /></dd>
			</dl>
		</div>
		<div class='detail-nav'>
			<button class='closeButton' data-id="deptNew">Close</button>
			<input class="modButton" type="submit" name="submit" value="추가"/>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		</div>
	</form:form>

</div>
</div>
<script src="/js/nub/eventHandle.js"></script>
</body>
</html>