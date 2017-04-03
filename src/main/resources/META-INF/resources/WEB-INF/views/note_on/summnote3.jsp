<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template.jsp</title>

<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
<link rel="stylesheet"
	href="/webjars/summernote/0.8.2/dist/summernote.css">

<script type="text/javascript"
	src="/webjars/summernote/0.8.2/dist/summernote.min.js"></script>
<script type="text/javascript"
	src="/webjars/summernote/0.8.2/lang/summernote-ko-KR.js"></script>
<style type="text/css">

/* .container { */
/* 	border: 1px solid red; */

/* } */
.row {

width:100%;
margin:auto;
	
}


.col-lg-10 {
height:100px;
}

.col-lg-2 {
height:100px;
padding: 0px;

}

.list1{
width:100%;

}

.list2{
visibility:hidden

}

.nav3 {
	margin-bottom: 0px;
	margin-right: 0px;
}
.table {
/*  OVERFLOW: HIDDEN; */
/*     TEXT-OVERFLOW: ELLIPSIS;  */

}
.container-fluid {
	padding-left: 0px;
}
/* div { */
/* float: left; */
/* } */
.nav2>li>a {
	padding-bottom: 5px;
	padding-top: 5px;
}
</style>

</head>
<body>

<div class="container" style=" text-align: left;">
	<nav class="navbar nav3">
	  <div class="container-fluid">
		    <ul class="nav navbar-nav nav2">
			      <li><a href="/note/list" id="newnote" class="btn btn-default btn-sm">note <span class="glyphicon glyphicon-plus "></span></a></li>
			      <li><a href="#" id="clear" class="btn btn-default btn-sm">clear <span class="glyphicon glyphicon-trash"></span></a></li>
		   
		    </ul>
		    <ul class="nav  nav2 navbar-right">
		      	<li><a href="#" id="list" class="btn btn-default btn-sm">list <span	class="glyphicon glyphicon-menu-hamburger"></span></a></li>
			</ul>
	  </div>
	</nav>
</div>
	<div class="container">
		<div class="row">

			<div class="col-lg-10 list1">
<form:form action="/note/list" method="post" modelAttribute="noteForm">
				<div class="input-group">
						<span class="input-group-addon">title:</span> 
						<form:input path="noteTitle" id="msg" type="text" class="form-control"/>
<%-- 					<form:input path="noteTitle" /> --%>
					<form:errors path="noteTitle"/>
				</div>
					<form:textarea  path="noteContent" id="summernote"/>
<%-- 					<form:textarea path="noteTitle"/> --%>
					<form:errors path="noteContent"/>
				     <input type="submit" value="추가">
</form:form>
			</div>
			<div class="col-lg-2 list2">
				<c:import url="list.jsp"></c:import>
			</div>
		</div>
	</div>





</body>
</html>
