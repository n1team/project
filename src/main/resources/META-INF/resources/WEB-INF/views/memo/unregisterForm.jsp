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
<title>unregisterForm.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
</head>
<body>
	<!-- //////////////////////////////////////////////////////////////////////////////////// -->

	<!--  -->
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" onclick="onReset()">&times;</button>
		<h3>no.${memo.mno} 삭제</h3>
	</div>
	<div class="modal-body">
<!-- //////////////////////////////////////////////////////////////////////////////////// -->
	<c:if test="${!empty memo.password}">
         password : <input type="password" name="pw" id="pw" oninput="onChange(event)" autocomplete="off" style="ime-mode:disabled"/> <br> (password : ${memo.password})<br><br>
		<p id="warn" style="display:none">${memo.mname} 을(를) 삭제하시겠습니까? </p>
	</c:if>
	<c:if test="${empty memo.password}">
         <p>삭제하시겠습니까?</p>
	</c:if>
	<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<%-- password : <input type="password" name="pw" id="pw" oninput="onChange(event)"/> <br> (password : ${memo.password})<br><br>
		<p id="warn" style="display:none">${memo.mname} 을(를) 삭제하시겠습니까? </p> --%>
	</div>

	<div class="modal-footer">
		<form action="/memo/unregister/${mno}?pageNo=${param.pageNo}" method="post" target="_parent">
			<input class="btn btn-danger" type="submit" value="삭제" id="removeMemo" 
			<c:if test="${empty memo.password}"><c:out value='style="display:inline"' escapeXml="false"/></c:if>
			<c:if test="${!empty memo.password}"><c:out value="style='display:none'" escapeXml="false"/></c:if>>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<button type="button" class="btn btn-default" data-dismiss="modal" onclick="onReset()">Close</button>
		</form>
	</div>
	<!-- //////////////////////////////////////////////////////////////////////////////////// -->

<script type="text/javascript">
		
		function onChange(event){
			var dbPw= "<c:out value="${memo.password}"/>";
			var target = event.target;
            var inputPw = target.value; 
            console.log(dbPw);
    		console.log("inputPw = " + inputPw);
               //var inputPw = $('#pw').val();
               //var inputPw = document.getElementById("pw").value;
            if(dbPw==inputPw){
                document.getElementById("removeMemo").style.display="inline";
                document.getElementById("warn").style.display="inline";
            }
            else{
    			document.getElementById("removeMemo").style.display="none";
    			document.getElementById("warn").style.display="none";
    		}
        }
		function onReset(){
			document.getElementById("pw").value="";
		}
</script>
</body>
</html>