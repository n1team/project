<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerSuccess.jsp</title>
</head>
<body>
<fieldset style="text-align: center;">
<h2 class="btn btn-default btn-lg"><span class="glyphicon glyphicon-grain">선수삭제성공</span></h2>
<br>
<br>
<a class="btn btn-success" href="/player/page/${param.pageNo}">이전 페이지로</a>
</fieldset>
</body>
</html>