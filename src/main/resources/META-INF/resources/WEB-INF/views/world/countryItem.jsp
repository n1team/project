<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Country info</title>


</head>
<body>
<h1>Country info</h1>

<table class="table">
	<thead>
		<tr>
			<th>code</th>
			<th>name</th>
			<th>continent</th>
			<th>region</th>
			<th>surfaceArea</th>
			<th>indepYear</th>
			<th>population</th>
			<th>lifeExpectancy</th>
			<th>gnp</th>
			<th>gnpOld</th>
			<th>localName</th>
			<th>governmentForm</th>
			<th>headOfState</th>
			<th>capital</th>
			<th>code2</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>${data.code}</td>
			<td>${data.name}</td>
			<td>${data.continent}</td>
			<td>${data.region}</td>
			<td>${data.surfaceArea}</td>
			<td>${data.indepYear}</td>
			<td>${data.population}</td>
		</tr>
	</tbody>
</table>

<hr>

<div style="text-align: center;">
	<a class="btn btn-success" href="${header.get("referer")}">이전 페이지로. . .</a>
</div>

</body>
</html>