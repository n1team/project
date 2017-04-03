<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
/* .row>div { */
/* 	border: 1px solid black; */
/* } */
.col-sm-9 {
	height: 700px;
}

.we {
	width: auto;
}

/*  div{  */
/*  float: left; */
/*  }  */
.nav3 {
	margin-bottom: 0px;
	margin-right: 0px;
}

.container-fluid {
	padding-left: 0px;
}

.nav2>li>a {
	padding-bottom: 5px;
	padding-top: 5px;
}

#menu {
background-color: white; 
/* 	position: fixed; */
/* 	right: 200px; */
/* 	color: black; */
/* 	display: none; */
/* 	text-decoration: none; */
/* 	text-transform: uppercase; */
/* 	color: #333; */
/* 	width: 200px; */
/* 	text-align: center; */

 position: absolute; 
/*   top: 7em;  */
  right: 1em; 
  width: 10em;
  padding: 1em;
}


/* #menu td { */
/* 	text-decoration: none; */
/* } */
</style>

</head>
<body>


	<div class="container" style=" text-align: left;">
		<nav class="navbar nav3">
		  <div class="container-fluid">
		    <ul class="nav navbar-nav nav2">
		      <li><a href="#" class="btn btn-default btn-sm">note <span class="glyphicon glyphicon-plus "></span></a></li>
		      <li><a href="#" class="btn btn-default btn-sm">clear <span class="glyphicon glyphicon-trash"></span></a></li>
		    </ul>
		    <ul class="nav  nav2 navbar-right">
		      <li><a href="#" id="list" class="btn btn-default btn-sm">list <span	class="glyphicon glyphicon-menu-hamburger"></span></a></li>
					
				<div id="menu" style="z-index: 3;"> 
					<table id="panel" class="table table-striped" > 
						<c:forEach var="n" items="${notes}"> 
						 <fmt:formatDate value="${n.noteDate}" pattern="yyyy-MM-dd" var="date" /> 					
												<tr>
												<td colspan="3">${date}</td> 
												</tr>
												<tr>
												<td>${n.noteNo}</td> 
												<td>${n.noteId}</td>
												<td>${n.noteTitle}</td>
												</tr>
						</c:forEach> 
					</table>
				
				
				</div>
			</ul>
							
							
							
										
<%-- 										<c:forEach var="n" items="${notes}">  --%>
<%-- 						 						<fmt:formatDate value="${n.noteDate}" pattern="yyyy-MM-dd" var="date" />  --%>
<!-- 					 						<LI> -->
<%-- 						 							<LI COLSPAN="3">${DATE}</LI>  --%>
<!-- 											</UL>  -->
<%-- 													<UL ONCLICK="LOCATION.HREF='/NOTE/LIST/${N.NOTENO}'" STYLE="CURSOR: POINTER"> --%>
<%-- 													<UL>${N.NOTENO}</UL>  --%>
<%-- 												<UL>${N.NOTEID}</UL> --%>
<%-- 													<UL>${N.NOTETITLE}</UL> --%>
<!-- 												</UL>  -->
<!-- 											</UL> -->
<%-- <%-- 										</C:FOREACH>  --%> --%>
<!-- 												</DIV> -->
						
		 	 
		</nav>


		<div class="row" style="z-index: 1;">
			<div class="col-md-12" >
					<div class="input-group">
						<span class="input-group-addon">title:</span> 
						<input id="msg" type="text" class="form-control" name="msg"	value="${note.noteTitle}">
					</div>
					<div id="summernote" >${note.noteContent}
					</div>
			</div>
			</div>
		</div>
<!-- 		<div id="menu"> -->
<!-- 				<table id="panel" class="table table-hover"> -->
<%-- 					<c:forEach var="n" items="${notes}"> --%>
<%-- 						<fmt:formatDate value="${n.noteDate}" pattern="yyyy-MM-dd" var="date" /> --%>
					
<!-- 						<tr> -->
<%-- 							<td colspan="3">${date}</td> --%>
<!-- 						</tr> -->
							
<%-- 							<tr onclick="location.href='/note/list/${n.noteNo}'" style="cursor: pointer"> --%>
<%-- 							<td>${n.noteNo}</td> --%>
<%-- 							<td>${n.noteId}</td> --%>
<%-- 							<td>${n.noteTitle}</td> --%>
<!-- 						</tr> -->
					
<%-- 					</c:forEach> --%>
<!-- 				</table> -->
<!-- 	</div> -->
	<a href="#" id="create23" class="btn btn-default btn-sm">추가 <span
		class="glyphicon glyphicon-plus"></span></a>
	<a href="#" id="create24" class="btn btn-default btn-sm">수정 <span
		class="glyphicon glyphicon-plus"></span></a>


	<script>
		$(document).ready(function() {
			$('#summernote').summernote({
				height : 550,
				lang : 'ko-KR',
			});
		});

		$('#clear').on("click", function() {
			$('#summernote').summernote('reset');
		});

		//목록 on/off
		$("#menu").hide();
$(document).ready(function(){
	$('#list').click(function(){
		$('#menu').slideToggle(300);
		
		
	});
	
});
	</script>





</body>
</html>