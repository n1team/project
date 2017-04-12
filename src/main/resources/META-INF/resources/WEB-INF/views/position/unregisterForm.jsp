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
<title>position_unregisterForm.jsp</title>

</head>
<body>
<fieldset style="text-align: center;">
<h2 class="btn btn-default btn-md"><span class="glyphicon glyphicon-plane">포지션삭제</span></h2>

<h3>삭제하시겠습니까?</h3>
${position}
<hr>
<form action="/position/unregister/${pstno}?pageNo=${param.pageNo}" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<input class="btn btn-info" type="submit" value="포지션 삭제">
</form>
</body>
</html>