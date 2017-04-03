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

</head>
<body>
<h1>수정</h1>
			<c:set var="no" value="${note.noteNo}"></c:set>
							${note.noteNo}
							${page.paging.pageNo}
						==	${parm.pageNo}
						<form:form action="/note/modify/${note.noteNo}" method="post" modelAttribute="noteForm">
							<div class="input-group">
								<span class="input-group-addon">title:</span>
								<form:input path="noteTitle" id="msg" type="text" class="form-control"  />
								<form:errors path="noteTitle" />
							</div>
							<form:textarea path="noteContent" id="summernote" />
							<form:errors path="noteContent" />
							<input type="submit" value="수정">
						</form:form>
						
<%-- 						<form:form action="/note/reg/${page.paging.pageNo}" method="post" modelAttribute="noteForm"> --%>
<!-- 							<div class="input-group"> -->
<!-- 								<span class="input-group-addon">title:</span> -->
<%-- 								<form:input path="noteTitle" id="msg" type="text" class="form-control"  /> --%>
<%-- 								<form:errors path="noteTitle" /> --%>
<!-- 							</div> -->
<%-- 							<form:textarea path="noteContent" id="summernote" /> --%>
<%-- 							<form:errors path="noteContent" /> --%>
<!-- 							<input type="submit" id="lis" value="추가"> -->
<%-- 						</form:form> --%>

	<script>
		$(document).ready(function() {
			$('#summernote').summernote({
				height : 550,
				lang : 'ko-KR'
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
			$('#newnote2').click(function() {
				$('#lis').click()
			});
		});
	</script>

</body>
</html>