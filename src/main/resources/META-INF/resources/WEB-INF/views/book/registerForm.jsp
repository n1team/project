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
<title>registerForm.jsp</title>

<link rel="stylesheet" href="/css/book/form.css">

</head>
<body>
<h1>책 등록</h1>
<div class="container" style="text-align:center; margin-top: 50px;">
<form:form action="/book/register" method="post" modelAttribute="bookForm" class="form-horizontal">
	<!-- bookCode -->
	<div class="rginput col-xs-4">
		<label for="bookCode">책 코드 : 
		<form:input path="bookCode" class="form-control"/></label>
		<form:errors path="bookCode"/>
	</div>
	<!-- bookName -->
	<div class="rginput col-xs-4">
		<label for="bookName">책 이름 : 
		<form:input path="bookName" class="form-control"/></label>
		<form:errors path="bookName"/>
	</div>
	<!-- writer -->
	<div class="rginput col-xs-4">
		<label for="writer">작가 : 
		<form:input path="writer" class="form-control"/></label>
		<form:errors path="writer"/>
	</div>
	<!-- publishedDate -->
	<div class="rginput col-xs-4">
		<label for="publishedDate">출간일 : 
		<form:input path="publishedDate" class="form-control"/></label>
		<form:errors path="publishedDate"/>
	</div>
	<!-- categorize -->
	<div class="rginput col-xs-10">
		<label for="categorize">분류 :
		<form:select path="categorize"  class="form-control">
			<form:option value=""> </form:option>
			<form:option value="소설">소설</form:option>
			<form:option value="시/에세이">시/에세이</form:option>
			<form:option value="경제/경영">경제/경영</form:option>
			<form:option value="자기계발">자기계발</form:option>
			<form:option value="인문">인문</form:option>
			<form:option value="역사/문화">역사/문화</form:option>
			<form:option value="종교">종교</form:option>
			<form:option value="정치/사회">정치/사회</form:option>
			<form:option value="예술/대중문화">예술/대중문화</form:option>
			<form:option value="과학">과학</form:option>
			<form:option value="기술/공학">기술/공학</form:option>
			<form:option value="컴퓨터/IT">컴퓨터/IT</form:option>
			<form:option value="기타">기타</form:option>
		</form:select>
		</label>
		<form:errors path="categorize"/>
	</div>
	<!-- pageNumber -->
	<div class="rginput col-xs-4">
		<label for="pageNumber">페이지 : 
		<form:input path="pageNumber" class="form-control"/></label>
		<form:errors path="pageNumber"/>
	</div>
	<!-- price -->
	<div class="rginput col-xs-4">
		<label for="price">가격 :
		<form:input path="price" class="form-control"/></label>
		<form:errors path="price"/>
	</div>
	<a class="btn btn-warning" href="/book/page/${param.pageNo}">Back</a>
	<input type="submit" class="btn btn-default" value="Book 등록">
</form:form>
</div>
</body>
</html>