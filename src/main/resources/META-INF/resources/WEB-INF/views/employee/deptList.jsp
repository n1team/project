<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Department list</title>
<link rel="stylesheet" href="/css/world/list.css">
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
		<tr>
			<td data-title='부서번호'>${i.deptno}</td>
			<td data-title='부서명'><a class="button" data-id="${i.deptno}">${i.dname}</a></td>
			<td data-title='위치'>${i.loc}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>

	<c:forEach var="i" items="${data.content}">
		<form method="post" action="/dept/update/${i.deptno}" class='detail' id="${i.deptno}">
			<div class='detail-container'>
				<dl>
					<dt>부서번호</dt>
					<dd><input type="text" name="empno" value="${i.deptno}" disabled/></dd>
					<dt>부서명</dt>
					<dd><input type="text" name="dname" value="${i.dname}"/></dd>
					<dt>위치</dt>
					<dd><input type="text" name="loc" value="${i.loc}"/></dd>
				</dl>
			</div>
			<div class='detail-nav'>
				<button class='closeButton' data-id="${i.deptno}">Close</button>
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