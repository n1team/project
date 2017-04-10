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
</head>
<body>
<fieldset style="text-align: center;">
<h2 class="btn btn-info btn-lg"><span class="glyphicon glyphicon-grain">List</span></h2>
<br>
<a class="btn btn-default" href="/player/page/1">Player 게시판으로</a>
<ol>
<c:forEach var="player" items="${player}">
<li>${player.playerno},${player.pname},${player.job},${player.join},${player.uniformNumber},${player.heights},${player.pstno}</li>
</c:forEach>
</ol> 
</body>
</html>