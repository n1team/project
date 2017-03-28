<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../../code_assist/animate.css">
	<link rel="stylesheet" href="../../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<h1>회원 현황</h1> 
<ol>
<c:forEach var="member" items="${memberbooks}">
	<li>
		${member.memberCode}, 
		${member.memberName},
		${member.bookCode},
		${member.checkState},
		${member.rentReserveDate}
	</li>
</c:forEach>
</ol>
</body>
</html>