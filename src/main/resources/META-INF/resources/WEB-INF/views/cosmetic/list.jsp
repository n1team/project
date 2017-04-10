<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cosmetic_list.jsp</title>


</head>
<body>
<h1>Cosmetic List</h1>
<ol>
<c:forEach var="list" items="${cosmatic}">
	<li>${list.productno}, ${list.productname}</li>
</c:forEach>
</ol>
</body>
</html>