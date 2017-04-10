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
<fieldset style="text-align: center;">
<h2 class="btn btn-success btn-lg"><span class="glyphicon glyphicon-plain">포지션수정성공</span></h2>
<%-- ${position} --%>
<br>
<br>
<a class="btn btn-default" href="/position/page/${param.pageNo}">이전 페이지로</a>
</body>
</html>