<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memo.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy/MM/dd" var="now"/>
<div class="container">
<h1>Board</h1>
<div style="height: 100%">

	<table class="table table-hover">
		<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th></th>
<!-- 			<th>조회</th> -->
			<th>작성일</th>
		</tr>
		</thead>
		<tbody>
			<c:forEach var="memo" items="${page.list}" varStatus="status">
				<fmt:formatDate value="${memo.mdate}" pattern="yyyy/MM/dd" var="mdate"/>
				<tr>
				<td width="150px">${memo.mno}</td> 
				<td><a href="/memo/item/${memo.mno}?pageNo=${page.paging.pageNo}">${memo.mname}</a>
				
				<c:if test="${mdate==now}"><span class="label label-warning">New</span></c:if></td>
				<td width="200px">
		<%-- 		  <a href="/memo/modify/${memo.mno}?pageNo=${page.paging.pageNo}" 
				   				class="btn btn-info" id="modifyMemo" style="display:inline">수정</a> --%>

	<!--	170404 수정 비밀번호 모달  -->
				<a data-toggle="modal" data-target="#modifyModal${status.index}" 
					class="btn btn-default btn-sm ">
				<span class="glyphicon glyphicon-pencil"></span>수정</a>
		<!-- modal content -->
				<div id="modifyModal${status.index}" class="modal fade" role="dialog">
					<div class="modal-dialog" style="width:500px">
						<div class="modal-content">
							<div class="modal-header">
					          <button type="button" class="close" data-dismiss="modal" onclick="onReset(${status.index})">&times;</button>
					          <h4 class="modal-title">수정${memo.mno}</h4>
					        </div>
					        <div class="modal-body">
					        	<c:if test="${!empty memo.password}">
						          password : <input type="password" style="ime-mode:disabled" id="pw${status.index}" oninput="onChange(event,'${memo.password}',${status.index})" autocomplete="off"><br>
								  (password : ${memo.password})
								</c:if>
								<c:if test="${empty memo.password}">
						          <p>수정하시겠습니까?</p>
								</c:if>
					        </div>
					        <div class="modal-footer">
					        	<a href="/memo/modify/${memo.mno}?pageNo=${page.paging.pageNo}" 
				   				class="btn btn-info" id="modifyMemo${status.index}" 
				   				<c:if test="${empty memo.password}"><c:out value='style="display:inline"' escapeXml="false"/></c:if>
				   				<c:if test="${!empty memo.password}"><c:out value="style='display:none'" escapeXml="false"/></c:if>>수정</a>
					            <button type="button" class="btn btn-default" data-dismiss="modal" onclick="onReset(${status.index})">Close</button>
					        </div>
						</div>
					</div>
				</div> 
<!-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
		<!--	삭제 모달    -->
				<a data-toggle="modal" href="/memo/unregister/${memo.mno}?pageNo=${page.paging.pageNo}" data-target="#modal-testNew" 
					class="btn btn-default btn-sm ">
				<span class="glyphicon glyphicon-remove"></span>삭제</a>
				<c:if test="${!empty memo.password}"><span class="glyphicon glyphicon-lock"></span></c:if>
				<div id="modal-testNew" class="modal fade" role="dialog">
					<div class="modal-dialog" style="width:500px">
						<div class="modal-content">
						</div>
					</div>
				</div>
<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////				    -->
	
<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////				    -->
				</td>
<%-- 				<td>${memo.count}</td> --%>
				<td width="250px"><fmt:formatDate value="${memo.mdate}" pattern="yyyy/MM/dd HH:mm"/>  
			
				</td>
				</tr>
			</c:forEach>
		</tbody> 
	</table>
</div>
<hr>
<div>
<a href="/memo/register" class="btn btn-primary">등록</a>
</div>

<div align="center">
<ul class="pagination">
	<c:if test="${page.paging.firstGroup==false}">
		<li><a href="/memo/1">&laquo맨앞</a></li>
		<li><a href="/memo/${page.paging.firstPage - 1}">&laquo이전</a></li>
	</c:if>
<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage }">

	<c:if test="${page.paging.pageNo==i}">
		<li class="active"><a href="/memo/${i}">${i}</a></li>
	</c:if>
	<c:if test="${page.paging.pageNo!=i}">
		<li><a href="/memo/${i}">${i}</a></li>
	</c:if>
	
</c:forEach>
	<c:if test="${page.paging.lastGroup==false}">
		<li><a href="/memo/${page.paging.lastPage + 1}">다음&raquo</a></li>
		<li><a href="/memo/${page.paging.totalPage}">맨뒤&raquo</a></li>
	</c:if>
</ul>
</div>

</div>
<script type="text/javascript">
 
	function onChange(event,test,num){
		var dbPw=test;
		var inputPw = event.target.value;
		console.log("dbPw = " + dbPw);
		console.log("inputPw = " + inputPw);
// 		console.log(test);
		if(dbPw==inputPw || dbPw==''){
			document.getElementById("modifyMemo"+num).style.display="inline";
			console.log("success");
		}
		else{
			document.getElementById("modifyMemo"+num).style.display="none";
		}
	}
	
	function onReset(num){
		document.getElementById("pw"+num).value="";
	}
	
	$('body').on('hidden.bs.modal', '.modal', function (event) {
	    $(this).removeData('bs.modal');
	});

</script>
</body>
</html>