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
<title>unregisterForm.jsp</title>
</head>
<body>
<fieldset style="text-align: center;">
<h2 class="btn btn-info btn-md"><span class="glyphicon glyphicon-grain">선수삭제</span></h2>
<br>
<h3>삭제하시겠습니까?</h3>
${player}
<hr>
<form action="/player/unregister/${playerno}?pageNo=${param.pageNo}" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<input class="btn btn-primary" type="submit" value="선수 삭제">
</form>
</fieldset>
</body>
</html>