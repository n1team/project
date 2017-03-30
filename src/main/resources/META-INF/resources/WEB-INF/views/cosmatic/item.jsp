<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cosmatic_item.jsp</title>
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
    .btn-default>a {
    	color : #FF8C00;
    	text-decoration: none;
    } 
    
      .btn-default, .btn-default:hover, .btn-default:active, .btn-default:visited {
        background-color: rgba(255,255,255,0.7);
        border-radius: 0;
        font-family: 'Jeju Gothic';
        color : #000080;
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
    .btn {
		margin : 0 auto;
		margin-top : 70px;
		text-align: center;
	} 
</style>
<body>
<h1>Cosmatic Detail info</h1>
<div class="container">
<button class="btn btn-default" style="text-align: center;"><a href="/cosmatic/page/${param.pageNo}">뒤로가기</a></button>
<table class="table table-hover">
	<tr>
		<td>Product - Number</td>
		<td>Product - Name</td>
		<td>Price</td>
		<td>Capacity</td>
		<td>Category</td>
	</tr>
	
	<tr>
		<td>${cosmatic.productno}</td>
		<td>${cosmatic.productname}</td>
		<td>${cosmatic.price}</td>
		<td>${cosmatic.capacity}</td>
		<td>${cosmatic.category}</td>
	</tr>
</table>

</div>
</body>
</html>