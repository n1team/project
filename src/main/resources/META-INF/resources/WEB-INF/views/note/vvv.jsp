<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template.jsp</title>
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
<style type="text/css">


.main > .container {
	width: 600px;
	height: 100px;
	padding-top: 100px;
	margin: 0 auto;
	color:white;

}

.ball {
	border-radius:10px;
	text-align:center;
	float: left;
	width: 100px;
	height: 100px;
	margin: 10px auto;
	vertical-align:medium;

}
p {
	font-size:7em;
	font-weight:900;
	}


.ball:nth-child(1) {
	background: #ff005d;
	animation: right 1s infinite ease-in-out;
}

.ball:nth-child(2) {
	background: #35ff99;

	animation: left 1s infinite ease-in-out;
}

.ball:nth-child(3) {
	background: #008597;

	animation: right 1s infinite ease-in-out;
}

.ball:nth-child(4) {
	background: #ffcc00;
	animation: left 1s infinite ease-in-out;
}

.ball:nth-child(5) {
	background: #2d3443;
	animation: right 1s infinite ease-in-out;
}


@keyframes right {
	0% {
		transform: translate(0,-20px);
	}
	50% {
		transform: translate(0,20px);
	}
	100% {
		transform: translate(0,-20px);
	}
}

@keyframes left {
	0% {
		transform: translate(0,20px);
	}
	50% {
		transform: translate(0,-20px);
	}
	100% {
		transform: translate(0,20px);
	}
}



/* s */
body {
	background-image: url("../../../img/w_str.png");
/* 	padding : 270px 600px 0 600px; */
}

.bg {
	margin : 270px 600px 300px 600px;
/* 	float: left; */
}
.img {
	width : 200px;
	height: 180px;
	border : 1px solid rgba(0,0,0,0.2);
	margin : 10px;
	

}

.img:hover {
	box-shadow: 0 3px 5px 0 rgba(0, 0, 0, 0.2), 0 4px 10px 0 rgba(0, 0, 0, 0.19);
	opacity : 0.8;
	
}
.container {
  position: relative;
  width: 50%;
}
.overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 100%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: #008CBA;
}

.container:hover .overlay {
  opacity: 1;
}

.text {
  color: white;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}


</style>
</head>
<body>
<div class="main">
  <div class="container">
  <div class="ball"><P>1</p></div>
  <div class="ball"><P>T</p></div>
  <div class="ball"><P>E</p></div>
  <div class="ball"><P>A</p></div>
		<div class="ball"><P>M</p></div>
</div>
</div>

<div style="text-align: center;" class="bg">
		<div style="margin: 0 auto;" >
		<a href="#" data-toggle="tooltip" title="팀장 : "><img class="img" src="##"></a>
		<a href="#" data-toggle="tooltip" title="조원 : "><img class="img" src="##"></a>
		<a href="#" data-toggle="tooltip" title="조원 : "><img class="img" src="##"></a>
		<a href="#" data-toggle="tooltip" title="조원 : "><img class="img" src="##"></a>
		<a href="#" data-toggle="tooltip" title="조원 : "><img class="img" src="##"></a>
		<a href="#" data-toggle="tooltip" title="조원 : "><img class="img" src="##"></a>
		<a href="#" data-toggle="tooltip" title="조원 : "><img class="img" src="##"></a>
		<a href="#" data-toggle="tooltip" title="조원 : "><img class="img" src="##"></a>
		<a href="#" data-toggle="tooltip" title="조원 : "><img class="img" src="##"></a>
		</div>
	</div>
</body>
</html>

