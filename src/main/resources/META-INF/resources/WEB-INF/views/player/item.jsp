<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>item.jsp</title>
</head>
<body>
<fieldset style="text-align: center;">
<div class="dropdown">
<button class="btn btn-info btn-lg dropdown-toggle" type="button" id="menu1" data-toggle="dropdown"><span class="glyphicon glyphicon-grain">Player Detail Info</span><span class="caret"></span></button>
 <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
<li role="presentation"><a role="menuitem" tabindex="-1">${player}</a></li>
</div>
<br>
<br>
<br>
<br>
<a class="btn btn-primary" href="/player/page/1">Player 게시판으로</a>
</fieldset>
</body>
</html>