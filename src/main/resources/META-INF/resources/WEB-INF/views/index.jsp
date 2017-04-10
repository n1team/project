<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>

<title>*1TEAM-PROJECT*</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<style>

body {
	background-image: url("../../../img/w_str.png");
/* 	padding : 270px 600px 0 600px; */
}

.bg {
	margin : 270px 600px 300px 600px;
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
  -ms-transform: translate(-50%, -50%);
}


@keyframes spin {
  0% {
    top: 0;
  }
  
  50% {
    top: 100%;
    opacity: 0;
  }
  51% {
    top: -100%;
  }
  100% {
    top: 0;
    opacity: 1;
  }
}
 
 
.loading {
  width: 100%;
  text-align: left;
/*   text-align: center; */
}
 
.loading span {
  font-family: 'Catamaran', sans-serif;
  color: black;
  font-size: 200px;
}
 
.loading .animate {
  position: absolute;
  top: 0;
}
 
.loading span:nth-child(2) {
  color: #0088cc;
  margin-left: 10px;
    animation: spin 2.5s  infinite;  
}
 
.loading span:nth-child(3) {
  margin-left: 150px;
  color: #e23069;
    animation: spin 2.6s linear infinite;  
}
 
.loading span:nth-child(4) {
  margin-left: 300px;
  color: #F0E300;
    animation: spin 2.2s linear infinite;  
}
 
.loading span:nth-child(5) {
  padding-left: 450px;
  color:#45CA1D;
    animation: spin 2.3s linear infinite;  
}
</style>
<body>
	
	<div style="text-align: center;" class="bg">
		<div style="margin: 0 auto;" >
		<div class="loading">
		  <span>1</span>
		    <span class="animate">T</span>
		  <span class="animate">E</span>
		  <span class="animate">A</span>
		  <span class="animate">M</span>
		</div>
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
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>
</html>