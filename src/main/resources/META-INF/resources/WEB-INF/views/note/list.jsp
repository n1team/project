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
body {
/* 	background-image: url("../../../img/bbb.jpg"); */
}
.row {
	width: 100%;
	margin: auto;
}
.col-lg-10 {
	margin-top: 10px;
}
.col-lg-2 {	
	padding: 0px;
}

.list1 {
	width: 100%;
}
.list2 {
	visibility: hidden;
}
.nav3 {
	margin-bottom: 0px;
	margin-right: 0px;
}
.container-fluid {
	padding-left: 0px;
}
.btn-group {  
	float: left; 
	padding-bottom: 5px;
}    
.note-editing-area {
 	clear: both; 
}
.note-editable {
	border-top:1px solid gray; 
	text-align: left;
	white-space: pre-wrap;  
	word-wrap:break-word;
}
.nav2>li>a {
	padding-bottom: 5px;
	padding-top: 5px;
}
.row {
	border: 5px inset RGB(237,234,234);
}
.input-group {
	padding-bottom: 10px; 
}
.view {
	margin:auto; 
	padding:20px;  
	text-align: left; 
	width: 100%;  
	overflow:auto;
	border: 3px groove white; 
	min-height: 500px;
	white-space: pre-wrap;  
	word-wrap:break-word;
}
.pagination > li > a {
	color: green;
}

</style>

</head>
<body>
	<c:set var="no" value="${note.noteNo}"/>
	<c:set var="tt" value="${a}"/>
	
	<div class="container">
		<nav class="navbar nav3">
			<div class="container-fluid">
				<ul class="nav navbar-nav nav2">
					<li><a href="/note/reg?pageNo=${page.paging.pageNo}" id="newnote" class="btn btn-default btn-sm">Note <span class="glyphicon glyphicon-pencil"></span></a></li>
					<c:choose>
				
					<c:when test="${!empty tt}">
						<li><a href="/note/summnote/${noteForm.noteNo}?pageNo=${page.paging.pageNo}" id="modify" class="btn btn-default btn-sm">수정 &nbsp; <span class="glyphicon glyphicon-edit"></span>	</a></li>
						<li><a href="/note/summnote/${noteForm.noteNo}?pageNo=${page.paging.pageNo}" class="btn btn-default btn-sm">취소&nbsp;<span class="	glyphicon glyphicon-share"></span>	</a></li>
					</c:when>
						
						<c:when test="${!empty no}">
							<li><a href="/note/modify/${note.noteNo}?pageNo=${page.paging.pageNo}&cc=a" id="mof" class="btn btn-default btn-sm">수정 &nbsp; <span class="glyphicon glyphicon-edit"></span>	</a></li>
							<li><a href="#" id="newnote4" class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal">삭제&nbsp;  <span class="glyphicon glyphicon-trash"/></a></li>
								<div class="modal fade" id="myModal" role="dialog">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
												<h4 class="modal-title"></h4>
											</div>
											<div class="modal-body">
												<form action="/note/unregister/${note.noteNo}?pageNo=${param.pageNo}" method="post">
													<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
													<button class="btn " type="submit"	value="삭제" >삭제 <span class="glyphicon glyphicon-trash"/></button>
												</form>
											</div>
	
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
						</c:when>
						
						<c:otherwise>
						<li><a href="#" id="clear" class="btn btn-default btn-sm">Reset <span class="glyphicon glyphicon-refresh"></span></a></li>
							<li><a href="#" id="save" class="btn btn-default btn-sm">저장 &nbsp; <span class="glyphicon glyphicon-send"></span></a></li>
						</c:otherwise>
					
					</c:choose>
				
				</ul>
				<ul class="nav  nav2 navbar-right">
					<li><a href="#" id="list" class="btn btn-default btn-sm">List <span class="glyphicon glyphicon-th-list"></span>
					</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-10 list1">
				<c:choose>
					
					<c:when test="${!empty no}">
						<form class="form-horizontal">
					<div class="form-group">
      					<label for="inputPassword" class="col-sm-2 control-label">Title</label>
      				
      				<div class="col-sm-8">
        				<input class="form-control" id="disabledInput" type="text"  disabled value="${note.noteTitle}">
     				</div>
   					</div>
   						 </form>
						<div class="view">${note.noteContent}</div>
					
					</c:when>
					

					<c:when test="${!empty tt}">
						<form:form action="/note/modify?pageNo=${page.paging.pageNo}" method="post" modelAttribute="noteForm">
								<div class="input-group">
								
								<span class="input-group-addon">title:</span>
								<form:input path="noteTitle" id="msg" type="text" class="form-control"  />
								<form:errors path="noteTitle" />
							</div>
								<form:textarea path="noteContent" id="summernote" />
								<form:errors path="noteContent" />
								<form:hidden path="noteNo" />
															<input style="visibility: hidden;" id="mo2" type="submit" value="수정">
						</form:form>
					</c:when>

					<c:otherwise>
					
						<form:form action="/note/reg/${page.paging.pageNo}" method="post" modelAttribute="noteForm">
							<div class="input-group">
								<span class="input-group-addon">title:</span>
								<form:input path="noteTitle" id="msg" type="text" class="form-control"  />
								<form:errors path="noteTitle" />
							</div>
							<form:textarea path="noteContent" id="summernote" />
							<form:errors path="noteContent" />
							<input style="visibility: hidden;" type="submit" id="lis" value="추가">
						</form:form>
					</c:otherwise>
				</c:choose>


				
			</div>
			<div class="col-lg-2 list2">
				<table id="panel" class="table table-striped">
					<c:forEach var="n" items="${page.notes}">
						<fmt:formatDate value="${n.noteDate}" pattern="yyyy-MM-dd"	var="date" />
						<tr>
							<td colspan="3">${date}</td>
						</tr>
						<tr onclick="location.href='/note/summnote/${n.noteNo}?pageNo=${page.paging.pageNo}'" STYLE="CURSOR: POINTER; background-color:#b3ffb3;">
							<td>${n.noteNo}</td>
							<td>${n.noteTitle}</td>
							<td>${n.noteId}</td>
						</tr>
					</c:forEach>
				</table>
				<ul class="pagination">
					<c:if test="${page.paging.firstPage < page.paging.pageNo }">
						<li><a href="/note/page/1" >&lt;&lt;</a></li>
						<li class="previous"><a	href="/note/page/${page.paging.firstPage - 1}" >&lt;</a></li>
					</c:if>
					
					
					<c:forEach var="i" begin="${page.paging.firstPage}"	end="${page.paging.lastPage }">
						<li><a class="btn btn-default" href="/note/page/${i}">${i}</a></li>
					</c:forEach>
					
					
					<c:if test="${page.paging.lastPage > page.paging.pageNo}">
						<li class="next"><a	href="note/page/${page.paging.lastPage + 1}" >&gt;</a></li>
						<li><a href="/note/page/${page.paging.totalPage}">&gt;&gt;</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>




	<script>
		$(document).ready(function() {
			$('#summernote').summernote({
				height : 550,
				lang : 'ko-KR',
// 				airMode: true
			});
		});

		$(document).ready(function() {
			$('#clear').click(function() {
				$('#summernote').summernote('reset');
				$("#msg").val("");

			});
		});

		$(document).ready(function() {
			$('#list').click(function() {
				$('.col-lg-10').toggleClass('list1');
				$('.col-lg-2').toggleClass('list2');
			});
		});
		$(document).ready(function() {
			$('#save').click(function() {
				$('#lis').click()
			});
		});
		$(document).ready(function() {
			$('#newnote4').click(function() {
				$('#lis').click()
			});
		});
		$(document).ready(function() {
			$('#modify').click(function() {
				$('#mo2').click()
			});
		});
		
	</script>

</body>
</html>