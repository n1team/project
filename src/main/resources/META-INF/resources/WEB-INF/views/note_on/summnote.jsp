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

</head>
<body>

				<div class="input-group">
						<span class="input-group-addon">title:</span> 
						<input id="msg" type="text" class="form-control"  value="${note.noteTitle}">
				</div>
					<div id="summernote">${note.noteContent}
				</div>
	




<script>

$(document).ready(function() {
	$('#summernote').summernote({
		height : 550,
		lang : 'ko-KR'
	});
});
 </script> 
</body>
</html>