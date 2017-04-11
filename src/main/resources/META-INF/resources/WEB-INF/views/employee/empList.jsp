<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee list</title>
<link rel="stylesheet" href="/css/world/list.css">
</head>
<body>

<div class="contentBox">
<div class="innerCB">
	<h1 class="headline">Employee List</h1>
	<div class="text-right"><button class="addButton" data-id="empNew">추가</button></div>

	<table>
		<thead>
		<tr>
			<th>이름</th>
			<th>부서</th>
			<th>업무</th>
			<th>고용일</th>
			<th>급여</th>
		</tr>
		</thead>
		<tfoot>
		<tr>
			<th colspan='5'>
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

						<a href="/emp/list/">처음페이지</a> |
						<c:forEach begin="${latest}"
								   end="${last}"
								   step="1"
								   var="i">
							<a href="/emp/list/${i}">${i}</a> |
						</c:forEach>
						<a href="/emp/list/${data.totalPages}">마지막페이지</a>
					</div>
				</div>
			</th>
		</tr>
		</tfoot>

		<tbody>
			<c:forEach var="i" items="${data.content}">
			<tr>
				<td data-title='이름'><a class="button" data-id="emp${i.empno}">${i.ename}</a></td>
				<td data-title='부서'>${i.dept.dname}</td>
				<td data-title='업무'>${i.job}</td>
				<td data-title='고용일'>${i.getSimpleDate()}</td>
				<td data-title='급여'>${i.sal}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>


	<c:forEach var="i" items="${data.content}">
	<form:form action="/emp/update" method="post" modelAttribute="emp${i.empno}" cssClass="detail">
		<form:errors/>
		<div class='detail-container'>
			<dl>
				<dt>사원번호</dt>
				<dd><form:input path="empno" value="${i.empno}" readonly="true"/></dd>
				<dt>이름</dt>
				<dd><form:input path="ename" value="${i.ename}"/></dd>
				<dt>직책</dt>
				<dd><form:input path="job" value="${i.job}"/></dd>
				<dt>상사 사원번호</dt>

				<dd><form:input path="mgr" value="${i.mgr}"/></dd>
				<dt>입사일</dt>
				<dd><input type="text" name="hiredate" value="${i.getSimpleDate()}"/></dd>
				<dt>급여</dt>
				<dd><form:input path="sal" value="${i.sal}"/></dd>
				<dt>comm</dt>
				<dd><form:input path="comm" value="${i.comm}"/></dd>
				<dt>부서코드</dt>
				<dd><input type="text" name="deptno" value="${i.dept.deptno}"/></dd>
			</dl>
		</div>
		<div class='detail-nav'>
			<button class='closeButton' data-id="emp${i.empno}">Close</button>
			<input class="modButton" type="submit" name="submit" value="Apply"/>
			<input class="delButton" type="submit" name="submit" value="Delete"/>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		</div>
	</form:form>
	</c:forEach>

	<form:form action="/emp/insert" method="post" modelAttribute="empNew" cssClass="detail">
		<form:errors/>
		<div class='detail-container'>
			<dl>
				<dt>사원번호</dt>
				<dd><form:input path="empno"/></dd>
				<dt>이름</dt>
				<dd><form:input path="ename"/></dd>
				<dt>직책</dt>
				<dd><form:input path="job"/></dd>
				<dt>상사 사원번호</dt>
				<dd><form:input path="mgr"/></dd>
				<dt>입사일</dt>
				<dd><input type="text" name="hiredate"/></dd>
				<dt>급여</dt>
				<dd><form:input path="sal"/></dd>
				<dt>comm</dt>
				<dd><form:input path="comm"/></dd>
				<dt>부서코드</dt>
				<dd><input type="text" name="deptno"/></dd>
			</dl>
		</div>
		<div class='detail-nav'>
			<button class='closeButton' data-id="empNew">Close</button>
			<input class="modButton" type="submit" name="submit" value="추가"/>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		</div>
	</form:form>

</div>
</div>
<script src="/js/nub/eventHandle.js"></script>
</body>
</html>