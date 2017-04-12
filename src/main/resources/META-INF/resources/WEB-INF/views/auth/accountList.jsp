<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 리스트</title>
<link rel="stylesheet" href="/css/world/list.css">
</head>
<body>

<div class="contentBox">
	<div class="innerCB">
		<h1 class="headline">Account List</h1>
		<table>
			<thead>
			<tr>
				<th>계정명</th>
				<th>email</th>
				<th>권한</th>
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

							<a href="/account">처음페이지</a> |
							<c:forEach begin="${latest}"
									   end="${last}"
									   step="1"
									   var="i">
								<a href="/account/list/${i}">${i}</a> |
							</c:forEach>
							<a href="/account/list/${data.totalPages}">마지막페이지</a>
						</div>
					</div>
				</th>
			</tr>
			</tfoot>

			<tbody>
			<c:forEach var="i" items="${data.content}">
				<tr class="record" data-id="account${i.id}">
					<td data-title='계정명'>${i.id}</td>
					<td data-title='email'>${i.email}</td>
					<td data-title='권한'>${i.authorities}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>

		<c:forEach var="i" items="${data.content}">
			<form:form action="/account/update" method="post" modelAttribute="account${i.id}" cssClass="detail">
				<form:errors/>
				<div class='detail-container'>
					<dl>
						<h1>권한 수정</h1>
						<dt>계정명</dt>
						<dd><form:input path="id" value="${i.id}" readonly="true"/></dd>
						<dt>email</dt>
						<dd><form:input path="email" value="${i.email}"/></dd>
						<dt>권한</dt>
						<c:set var="a" value=""/>
						<c:forEach var="elem" items="${i.authorities}">
							<c:set var="a" value="${a} ${elem.authority}"/>
						</c:forEach>
						<dd><input type="text" name="authorities" value="${a}" /></dd>
					</dl>
				</div>
				<div class='detail-nav'>
					<button class='closeButton' data-id="account${i.id}">Close</button>
					<sec:authorize access="isAuthenticated()">
						<sec:authentication property="principal" var="p" />
						<c:if test="${p.hasAuthority('ADMIN')}">
							<input class="modButton" type="submit" name="submit" value="수정"/>
						</c:if>
					</sec:authorize>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</div>
			</form:form>
		</c:forEach>

	</div>
</div>
<script src="/js/nub/eventHandle.js"></script>
</body>
</html>