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
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
		$("#create").click(function() {
			$("#gg").html("<textarea></textarea><br>");
		});

// 		$(".panel-left").resizable({
// 			handleSelector : ".splitter",
// 			resizeHeight : false
// 		});
		
		var oEditors = [];
		$(function(){
		      nhn.husky.EZCreator.createInIFrame({
		          oAppRef: oEditors,
		          elPlaceHolder: "content", //textarea에서 지정한 id와 일치해야 합니다. 
		          //SmartEditor2Skin.html 파일이 존재하는 경로
		          sSkinURI: "../se2/SmartEditor2Skin.html",  
		          htParams : {
		              // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		              bUseToolbar : true,             
		              // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		              bUseVerticalResizer : true,     
		              // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		              bUseModeChanger : true,         
		              fOnBeforeUnload : function(){
		                   
		              }
		          }, 
		          fOnAppLoad : function(){
		              //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
		              oEditors.getById["ir1"].exec("PASTE_HTML", ["기존 DB에 저장된 내용을 에디터에 적용할 문구"]);
		          },
		          fCreator: "createSEditor2"
		      });
		      
		      //저장버튼 클릭시 form 전송
		      $("#save").click(function(){
		          oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
		          $("#frm").submit();
		      });    
		});
	</script>
<style type="text/css">
.row>div {
	border: 1px solid black;
}

.col-sm-3>.glyphicon {
	width: 100%;
	border-bottom: 1px solid black;
}

.col-sm-9 {
	height: 700px;
}

.col-sm-3 {
	height: 700px;
	overflow: auto;
}
</style>
</head>
<body>


<!-- 	<div class="container "> -->
<!-- 				<a href="#" id="create" class="btn btn-default btn-sm"><h1>note</h1>  -->
<!-- 				<span class="glyphicon glyphicon-plus"></span></a> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-sm-9" id="gg">1</div> -->

<!-- 			<div class="col-sm-3"> -->
<!-- 				<div id="cr" data-spy="scroll" data-offset="20"> -->

<%-- 					<c:forEach var="n" items="${notes}"> --%>
<%-- 						<fmt:formatDate value="${n.noteDate}" pattern="yyyy-MM-dd" var="date" /> --%>

<%-- 						<span>${n.noteId}</span> --%>
<!-- 						<br> -->
<%-- 						<span>${n.noteNo}</span> --%>
<!-- 						<br> -->
<%-- 						<span>${n.noteTitle}</span> --%>
<!-- 						<br> -->
<%-- 						<span>${n.noteContent}</span> --%>
<!-- 						<br> -->
<%-- 						<span>${date}</span> --%>
<!-- 						<br> -->
<!-- 						<br> -->
<%-- 					</c:forEach> --%>
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->

<textarea name="ir1" id="content" rows="22" style="width:645px;"> </textarea>


		 
	
</body>
</html>