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

			<div class="loginForm row" id="login">
				<div class="col-sm-12 loginContainer">
					<div class="input">
						<input class="main-form animated bounceInDown" type="text" name="usrname" placeholder=" EMAIL ADDRESS"/>
					</div>
					<div class="input">
						<input class="main-form animated bounceInDown" type="password" name="password" placeholder=" PASSWORD"/>
					</div>
					<div class="input">
						<input class="main-form btn animated bounceInDown" type="button" name="usrname" value = "LOGIN"/>
					</div>
					<div class="input">
						<label class="pull-left">
							<input type="checkbox">Remember me
						</label>
					</div>
				</div>
			</div>

			<div class="loginForm row" id="register" style="display: none;">
				<div class="col-sm-12 loginContainer">
					<div class="input">
						<input class="main-form animated bounceInDown" type="text" name="name" placeholder=" NAME"/>
					</div>
					<div class="input">
						<input class="main-form animated bounceInDown" type="text" name="usrname" placeholder=" EMAIL ADDRESS"/>
					</div>
					<div class="input">
						<input class="main-form animated bounceInDown" type="password" name="password" placeholder=" PASSWORD"/>
					</div>
					<div class="input">
						<input class="main-form btn animated bounceInDown" type="button" name="usrname" value = "SIGN UP"/>
					</div>

				</div>
			</div>

		</div>
	</div>
</div>

<form method="post" action="/register">
아이디 : <input type="text" name="id" /><br>
비밀번호 : <input type="password" name="password" /><br>


<input type="submit" value="확인">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>

<script src="/js/auth/auth.js"></script>
</body>
</html>