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
<title>modifySuccess.jsp</title>
</head>
<body>
<br>
<br>
<fieldset style="text-align: center;">

<button class="btn btn-success btn-lg" type="button"><span class="glyphicon glyphicon-grain">선수수정성공</span>
<%-- <li>${player}</li> --%>
<br><br><br>
<a class="btn btn-warning" href="/player/page/${param.pageNo}">이전 페이지로</a>
</fieldset>
</body>
</html>