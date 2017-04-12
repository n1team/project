<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>item.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<div class="container">
	<div>
		<h1>Board</h1>
		<div>
		<table class="table table-bordered">
			<tbody>
				<tr>
					<td><h3>${memo.mname}</h3>
						<div align="right">
							<fmt:formatDate value="${memo.mdate}" pattern="yyyy/MM/dd HH:mm" />
						</div></td>
				</tr>
				<tr>
					<td colspan="2" height="500px">${memo.mcontent}</td>
				</tr>
				<tr>
					<td>
					<div style="float:left">
					<c:if test="${!empty memo.password}">password : <input type="password" name="pw" id="pw" oninput="onChange(event)" style="ime-mode:disabled"/></c:if>
					<c:if test="${empty memo.password}"></c:if>
<!-- 						password : <input type="password" name="pw" id="pw" oninput="onChange(event)"/> -->
					</div>
					<div style="float:right" align="left">
						<a href="/memo/modify/${memo.mno}?pageNo=${page.paging.pageNo}" class="btn btn-warning" style="display:none" id="modifyMemo">수정</a>
						<a href="/memo/1" class="btn btn-info">목록</a>
					</div></td>
				</tr>
			</tbody>
		</table>
	</div>
	<hr>
	
	<hr>
	</div>
</div>
<script>
	var dbPw= "<c:out value="${memo.password}"/>";
	if(dbPw==""){
		document.getElementById("modifyMemo").style.display="inline";
	}
	function onChange(event){
		//var inputPw = document.getElementById("pw").value;
		var inputPw = event.target.value;

		console.log("dbPw = " + dbPw);
		console.log("inputPw = " + inputPw);
		if(dbPw==inputPw || dbPw==""){
			console.log("success");
			document.getElementById("modifyMemo").style.display="inline";
		}
		else{
			document.getElementById("modifyMemo").style.display="none";
		}
	}


</script>
</body>
</html>


