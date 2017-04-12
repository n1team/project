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
<title>position_list.jsp</title>
</head>
<body>
<fieldset style="text-align: center;">
<h2 class="btn btn-default btn-lg"><span class="glyphicon glyphicon-plain">List</span></h2>
<br>
<a class="btn btn-success" href="/position/page/1">Position 게시판으로</a>
<ol>
<c:forEach var="position" items="${list}">
<li>${position.pstno},${position.pstname},${position.loc}</li>
</c:forEach>
</ol> 
</body>
</html>