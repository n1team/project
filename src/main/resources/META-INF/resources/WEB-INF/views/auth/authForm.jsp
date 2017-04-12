<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title></title>
	<link rel="stylesheet" href="/css/auth/auth.css">
</head>
<body>


<div class="loginContainer" id="loginContainer">
	<div class="row">

		<div class="col-sm-12">
			<ul class="loginTabs">
				<li class="loginListItem"><a href="#" id="1">LOGIN</a></li>
				<li class="loginListItem"><a href="#" id="2">SIGN UP</a></li>
			</ul>
		</div>

		<div class="col-sm-12">
			<form method="post" action="/login" class="loginForm row" id="login" <c:if test="${authType != 'login'}" >style="display: none;"</c:if> >
				<div class="col-sm-12 loginContainer">
					<div class="input">
						<input class="main-form animated bounceInDown" type="text" name="username" placeholder=" ID"/>
					</div>
					<div class="input">
						<input class="main-form animated bounceInDown" type="password" name="password" placeholder=" PASSWORD"/>
					</div>
					<div class="input">
						<input class="main-form btn animated bounceInDown" type="submit" name="submit" value = "LOGIN"/>
					</div>
					<div class="input">
						<label class="pull-left">
							<input type="checkbox" name="_spring_security_remember_me">Remember me
						</label>
					</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</div>
			</form>

			<form method="post" action="/register" class="loginForm row" id="register" <c:if test="${authType != 'register'}" >style="display: none;"</c:if> >
				<div class="col-sm-12 loginContainer">
					<div class="input">
						<input class="main-form animated bounceInDown" type="text" name="id" placeholder=" ID"/>
					</div>
					<div class="input">
						<input class="main-form animated bounceInDown" type="text" name="email" placeholder=" EMAIL ADDRESS"/>
					</div>
					<div class="input">
						<input class="main-form animated bounceInDown" type="password" name="password" placeholder=" PASSWORD"/>
					</div>
					<div class="input">
						<input class="main-form btn animated bounceInDown" type="submit" name="submit" value = "SIGN UP"/>
					</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</div>
			</form>

		</div>
	</div>
</div>

<script src="/js/auth/auth.js" ></script>
</body>
</html>