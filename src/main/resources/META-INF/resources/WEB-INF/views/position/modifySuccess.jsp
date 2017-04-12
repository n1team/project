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
<title>position_modifySuccess.jsp</title>

</head>
<body>
<fieldset style="text-align: center; width:50%; margin-left: 450px;">
<h2 class="btn btn-default btn-lg"><span class="glyphicon glyphicon-plain">포지션수정성공</span></h2>
<br>
<br>
<br>
<br>
<div class="table-responsive" style="text-align: center;">
<table class="table">
<thead>
<tr class="success" >
<th>연결번호</th>
<th>포지션이름</th>
<th>지역</th>
</tr>
</thead>

<tbody>
	<tr>
		<td>${position.pstno}</td>
		<td>${position.pstname}</td>
		<td>${position.loc}</td>
		</tr>
		</tbody>
		</table>
		</div>
<br>
<br>
<br>
<br>
<a class="btn btn-primary" href="/position/page/${param.pageNo}">이전 페이지로</a>
</fieldset>
</body>
</html>