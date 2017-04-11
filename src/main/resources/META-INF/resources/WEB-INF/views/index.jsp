<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>

<title>*1TEAM-PROJECT*</title>
<link rel="stylesheet" href="/css/main/main.css">
</head>
<body>
<div class="main">
  <div class="container">
  <div class="ball"><P>1</p></div>
  <div class="ball"><P>T</p></div>
  <div class="ball"><P>E</p></div>
  <div class="ball"><P>A</p></div>
  <div class="ball"><P>M</p></div>

</div>
</div>
  <div class="container">
<div style="text-align: center;" class="bg">
	<div style="margin: 0 auto;" >
		<a href="/dept/list" data-toggle="tooltip" title="팀장 : 김진곤"><img class="img" src="##"></a>
		<a href="/emp/list" data-toggle="tooltip" title="팀장 : 김진곤"><img class="img" src="##"></a>
		<a href="/country/page/1" data-toggle="tooltip" title="팀장 : 김진곤"><img class="img" src="##"></a>
		<a href="/city/page/1" data-toggle="tooltip" title="팀장 : 김진곤"><img class="img" src="##"></a>
		<a href="/note/page/1" data-toggle="tooltip" title="조원 : 박성현"><img class="img" src="/img/main/view1.png"></a>
		<a href="/cosmatic/page/1" data-toggle="tooltip" title="조원 : 이희수"><img class="img" src="/img/main/cosmetic01.JPG"></a>
		<a href="/book/page/1" data-toggle="tooltip" title="조원 : 민혜진"><img class="img" src="/img/main/book01.JPG"></a>
		<a href="/player/page/1" data-toggle="tooltip" title="조원 : 최효아"><img class="img" src="/img/main/player01.JPG"></a>
		<a href="/memo/1" data-toggle="tooltip" title="조원 : 주요섭"><img class="img" src="/img/main/main.png"></a>
	</div>
</div>
	
	</div>
	
</body>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>
</html>