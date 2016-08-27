<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>
<head>
<tiles:insertAttribute name="header" />
</head>
<body>

	<!-- Form Module-->
	<div class="module form-module">
		<!-- 회원가입창으로 이동하는 아이콘  -->
		<div class="toggle">
			<i class="fa fa-times fa-pencil"></i>
			<div class="tooltip">JOIN US</div>
		</div>
		<!-- 로그인부분  -->
		<div class="form">
			<div class="login_logo">
				<img id="logo" src="/BucketTree/images/BUCKET_LOGO.png"
					onmouseover="this.src='/BucketTree/images/BUCKET_LOGO_HOVER.png'"
					onmouseout="this.src='/BucketTree/images/BUCKET_LOGO.png'"
					style="border: 0 solid">
			</div>
			<form method="POST" action="/BucketTree/login_processing">
				<input name="email" id="login_email" type="text"
					placeholder="Email Address" /> <input name="password"
					id="login_pw" type="password" placeholder="Password" />
				<button>Login</button>
			</form>
		</div>

		<!-- 회원가입부분  -->
		<div class="form1">
			<h2>CREATE AN ACCOUNT</h2>
			<form>
				<input id="create_email" type="email" placeholder="Email Address" />
				<input id="create_pw" type="password" placeholder="Password" /> <input
					id="create_name" type="text" placeholder="Username" /> <input
					id="create_email" type="date" placeholder="BIRTH DAY" />
				<button>Register</button>
			</form>
		</div>

		<!-- 비밀번호찾기부분  -->
		<div class="form2">
			<h2>FIND PASSWORD</h2>
			<form>
				<input id="password_email" type="email" placeholder="Email Address" />
				<input id="password_name" type="text" placeholder="Username" /> <input
					id="password_birth" type="date" placeholder="BIRTH DAY" />
				<button>Find</button>
			</form>
		</div>

		<!-- 누르면 비밀번호 찾기로 넘어가는 부분  -->
		<div class="cta">
			<a>Forgot your password?</a>
		</div>
	</div>


	<!-- JS  -->
	<script>
		$('.toggle').click(function() {
			// Switches the Icon
			$(this).children('i').toggleClass('fa-pencil');
			// Switches the forms  
			$('.form1').animate({
				height : "toggle",
				'padding-top' : 'toggle',
				'padding-bottom' : 'toggle',
				opacity : "toggle"
			}, "slow");
			$('.form').animate({
				height : "toggle",
				'padding-top' : 'toggle',
				'padding-bottom' : 'toggle',
				opacity : "toggle"
			}, "slow");
		});
		$('.cta').click(function() {
			// Switches the forms  
			$('.form2').animate({
				height : "toggle",
				'padding-top' : 'toggle',
				'padding-bottom' : 'toggle',
				opacity : "toggle"
			}, "slow");
			$('.form').animate({
				height : "toggle",
				'padding-top' : 'toggle',
				'padding-bottom' : 'toggle',
				opacity : "toggle"
			}, "slow");
		});
	</script>
</body>
</html>