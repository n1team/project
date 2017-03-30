<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME*COSMATIC</title>
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

</head>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css); 
    body {
	background-image: url("../../../img/y_dot.png");
/* 	background-size: 150%; */
    }
    
    h1 {
         color : gray;
         font-family: 'Space Mono';
         text-align: center;
         margin-top:70px;
    }
    .bg{
        background-color: rgba(255,255,255,0.2);
        padding : 20px;
        margin: 20px;
        text-align: center;
        width : 100%;
        color : DarkSlateGrey;
    }
    .table {
    	background-color: white;
    	padding : 20px;
        margin: 20px;
        text-align: center;
        width : 100%;
        color : DarkSlateGrey;
    }
    .table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
        background-color: rgba(255,165,05,0.3)
    }
    .btn-default, .btn-default:hover, .btn-default:active, .btn-default:visited {
        background-color: rgba(255,255,255,0.7);
        border-radius: 0;
        font-family: 'Jeju Gothic';
        color : orange;
    }
    
    .btn-default>a {
    	color : #FF8C00;
    	text-decoration: none;
    }
    
    .pagination {
    	display : block;
    	text-align: center;
    	margin-top : 100px;
    }
    
    .pagination > li > a {
    	float : none;
     	margin-left:  -5px;
    }
</style>

<body class="container">

<header>
<%-- <h1>cosmatic Page pageno=${page.paging.pageNo}</h1> --%>
<h1>Welcome Cosmatic</h1>
</header>

<section class="row">    
<fieldset class="bg">
	<button class="btn btn-default"><a href="/cosmatic/category/SKINCARE?pageNo=${page.paging.pageNo}">스킨케어 조회하기</a></button>
	<button class="btn btn-default"><a href="/cosmatic/category/BASE?pageNo=${page.paging.pageNo}">베이스 조회하기</a></button>
	<button class="btn btn-default"><a href="/cosmatic/category/EYE?pageNo=${page.paging.pageNo}">아이제품 조회하기</a></button>
	<button class="btn btn-default"><a href="/cosmatic/category/LIP?pageNo=${page.paging.pageNo}">립제품 조회하기</a></button>
   </fieldset>
	<button class="btn btn-default"><a href="/cosmatic/register?pageNo=${page.paging.pageNo}">제품추가하기</a></button>
</section>
    
    <article>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>제품번호</th><th>제품명</th><th>항목수정</th><th>항목삭제</th>
                </tr>
            </thead>
            
            <tbody id="listview">
            <c:forEach var="cosmatic" items="${page.cosmatics}">
            <tr>
				<td>${cosmatic.productno}</td>
				<td><a href="/cosmatic/item/${cosmatic.productno}?pageNo=${page.paging.pageNo}">${cosmatic.productname}</a></td>
				<td><a class="deco-none" href="/cosmatic/modify/${cosmatic.productno}?pageNo=${page.paging.pageNo}">수정</td>
				<td><a class="deco-none" href="/cosmatic/unregister/${cosmatic.productno}?pageNo=${page.paging.pageNo}">삭제</a></td>
			</tr>
			</c:forEach>
            </tbody>
        </table>
    </article>

<p style="text-align: center;">
	<ul  class="pagination">
		<li ><a href="/cosmatic/page/1" >First</a></li>
		<li><a href="/cosmatic/page/${page.paging.firstPage -1 }">Prev</a></li>
		<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}">
			<li><a href="/cosmatic/page/${i}">${i}</a></li>
		</c:forEach>
		<li><a href="/cosmatic/page/${page.paging.lastPage +1 }">Next</a></li>
		<li><a href="/cosmatic/page/${page.paging.totalPage}">Last</a></li>
	</ul>
</p>


</body>
</html>