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
	background-image: url("../../../img/M1449567698.jpg");
	background-size: 150%;
    }
    
    h1 {
         color : floralwhite;
         font-family: 'Space Mono';
         text-shadow: 4px 2px 0px lightskyblue;
    }
    .bg, .table{
        background-color: rgba(255,255,255,0.7);
        padding : 20px;
        margin: 20px;
        text-align: center;
        width : 100%;
        color : DarkSlateGrey;
    }
    .table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
        background-color: rgba(30,144,255,0.3)
    }
    #all, #skin, #base, #eye, #lip {
        margin : 10px;
        font-family: 'Space Mono';
    }
    .btn-default, .btn-default:hover, .btn-default:active, .btn-default:visited {
        background-color: rgba(255,255,255,0.7);
        border-radius: 0;
        font-family: 'Jeju Gothic';
    }
    .btst {
        background-color: rgba(72,209,204,0.5);
        border: 1px solid grey;
    }
    .btst2 {
        background-color: rgba(255,99,71,0.5);
        border: 1px solid grey;
    }
    .modal-header {
        font-family: 'Jeju Gothic';
        padding : 20px;
    }
    .btn2 {
        background-color: LightSkyBlue;
        font-family: 'Jeju Gothic';
    }
    .btn3 {
        background-color: #20B2AA;
        font-family: 'Jeju Gothic';
        color : white;
    }
    .btn4 {
        background-color: #FF6347;
        font-family: 'Jeju Gothic';
        color : white;
    }
	.pagination {
    height: 36px;
    margin: 18px 0;
    color: #6c58bF;
}

.pagination ul {
    display: inline-block;
    *display: inline;
    *zoom: 1;
    margin-left: 0;
    color: #ffffff;
    margin-bottom: 0;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
    -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
}

.pagination li {
    display: inline;
    color: #6c58bF;
}

.pagination a {
    float: left;
    padding: 0 14px;
    line-height: 34px;
    color: #6c58bF;
    text-decoration: none;
    border: 1px solid #ddd;
    border-left-width: 0;
}

.pagination a:hover,
.pagination .active a {
    background-color: #6c58bF;
    color: #ffffff;
}

.pagination a:focus {
    background-color: #6c58bF;
    color: #ffffff;
}   
</style>

<body class="container">

<header><h1>cosmatic Page pageno=${page.paging.pageNo}</h1></header>

<section class="row">    
<fieldset class="bg">
	<button class="all btn btn-default"><a href="/cosmatic/register?pageNo=${page.paging.pageNo}">제품추가하기</a></button>
	<button class="lip btn btn-default"><a href="/cosmatic/category/SKINCARE">스킨케어 조회하기</a></button>
	<button class="skin btn btn-default"><a href="/cosmatic/category/BASE">베이스 조회하기</a></button>
	<button class="base btn btn-default"><a href="/cosmatic/category/EYE">아이제품 조회하기</a></button>
	<button class="base btn btn-default"><a href="/cosmatic/category/LIP">립제품 조회하기</a></button>
   </fieldset>
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
				<td><a href="/cosmatic/modify/${cosmatic.productno}?pageNo=${page.paging.pageNo}">수정</td>
				<td><a href="/cosmatic/unregister/${cosmatic.productno}?pageNo=${page.paging.pageNo}">삭제</a></td>
			</tr>
			</c:forEach>
            </tbody>
        </table>
    </article>

<div>
	<ul class="pagination ">
		<li ><a href="/cosmatic/page/1" >First</a></li>
		<li><a href="/cosmatic/page/${page.paging.firstPage -1 }">Prev</a></li>
		<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}">
			<li><a href="/cosmatic/page/${i}">${i}</a></li>
		</c:forEach>
		<li><a href="/cosmatic/page/${page.paging.lastPage +1 }">Next</a></li>
		<li><a href="/cosmatic/page/${page.paging.totalPage}">Last</a></li>
	</ul>
</div>

</body>
</html>