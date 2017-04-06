<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><sitemesh:write property="title"/></title>
<!-- 1. animate -->
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.min.css">
<!-- 2. bootstrap -->
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
<!-- 3. jquery -->
<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.min.js"></script>
<!-- 4. bootstrap.js -->
<script type="text/javascript" src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<sitemesh:write property="head"/>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/emp/list">Mosaic</a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li><a href="/project/wireframe/#section1">Section 1</a></li>
          <li><a href="/project/wireframe/#section2">Section 2</a></li>
          <li><a href="/project/wireframe/#section3">Section 3</a></li>
          <li><a href="/project/wireframe/#section41">Section 4-1</a></li>
          <li><a href="/project/wireframe/#section42">Section 4-2</a></li>
          <li><a href="/project/memo/1">memo</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
			<security:authorize access="isAnonymous()">
				<li><a href="/login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
			</security:authorize>
			<security:authorize access="isAuthenticated()">
				<li><a href="/logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
			</security:authorize>
		</ul>
      </div>
    </div>
  </div>
</nav> 
<br><br>
<sitemesh:write property="body"/>



</body>
</html>













