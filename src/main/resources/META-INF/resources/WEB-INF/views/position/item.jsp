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
<title>position_item.jsp</title>
</head>
<body>
<fieldset style="text-align: center;">
<div class="dropdown">
<button class="btn btn-success btn-lg dropdown-toggle" type="button" id="menu2" data-toggle="dropdown"><span class="glyphicon glyphicon-grain">Position Detail Info</span><span class="caret"></span></button>
 <div class="dropdown-menu" role="menu" aria-labelledby="menu2">
<li>${position}

<br>
<br>
<br>

</li>
</div>
</div>
<br>
<a class="btn btn-default" href="/position/page/1">Position 게시판으로</a>
</fieldset>

</body>
</html>