<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko" class="no-js">
<!-- BEGIN HEAD -->
<% 	UserDTO loginInfo = (UserDTO) session.getAttribute("session_id"); %>
<head>
<meta charset="utf-8" />
<title>Home4 - Homebrew Community</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />

<!-- GLOBAL MANDATORY STYLES -->
<link
	href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700"
	rel="stylesheet" type="text/css">
<link
	href="../../resource/vendor/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="../../resource/vendor/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css" />

<!-- font-Glyphicon -->
<!-- <link rel="stylesheet" href="vendor/fontawesome-free-5.15.4-web/fontawesome-free-5.15.4-web/css/fontawesome.css"> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">

<!-- PAGE LEVEL PLUGIN STYLES -->
<link href="../../resource/css/animate.css" rel="stylesheet">
<link href="../../resource/vendor/swiper/css/swiper.min.css"
	rel="stylesheet" type="text/css" />

<!-- THEME STYLES -->
<link href="../../resource/css/layout.css" rel="stylesheet"
	type="text/css" />

<!-- Favicon -->
<link rel="shortcut icon" href="/resource/img/favicon/favicon-32x32.png" />

<!-- custom -->
<link rel="stylesheet" href="../../resource/css/custom.css">
<style>
html {
	height: 100%;
}

body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding-top: 200px;
	padding-bottom: 40px;
	font-family: "Nanum Gothic", arial, helvetica, sans-serif;
	background-repeat: no-repeat;
}

.card {
	margin: 0 auto; /* Added */
	float: none; /* Added */
}

#btn-Yes {
	background-color: #17bed2;
	border: none;
}

.form-signin .form-control {
	position: relative;
	height: auto;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	padding: 10px;
	font-size: 16px;
}

.card-title {
	margin: 30px;
}

.links {
	text-align: center;
	margin-bottom: 10px;
}

a {
	color: #17bed2;
	text-decoration: none;
}

.text2 {
	color: blue;
}
</style>
</head>
<!-- END HEAD -->

<!-- BODY -->

<body class="page-on-scroll fixed_container">
	<c:if test = "${not empty param.flag }">
		<c:if test = "${not param.flag }">
			<script> alert("로그인실패")</script>
		</c:if>
	</c:if>
	<!--========== HEADER ==========-->
	<header class="header navbar-fixed-top">
		<!-- Navbar -->
                <%@ include file="/app/pages/header_control.jsp" %>  
		<!-- Navbar -->
	</header>
	<!--========== END HEADER ==========-->
	<div class="container-fluid">
		<div class="row">
			<div class="card align-middle col-md-3 login_card">
				<div class="card-title" style="margin-top: 30px;">
					<h2 class="card-title text-center" style="color: #f58b34;">
						<img src="../../resource/img/home_logo.png" />
					</h2>
				</div>
				<div class="card-body">
					<form action="${PageContext.request.contextPath}/pages/MemberLogin.us" class="form-signin" method="POST">
						
						<input type="text" name="user_id" id="user_id" class="form-control" placeholder="아이디" style="margin-bottom : 48px; border-radius:10px; height : 55px; " autofocus required> 
						<input type="password" name="user_pw" id="user_pw" class="form-control" style="border-radius:10px; height : 55px; margin-bottom : 48px;" placeholder="비밀번호" required>
						<p id="check" class="check">${login_msg}</p>
						<input id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit" style="line-height:28px !important; margin-bottom: 20px;" VALUE="로그인">
						<div class="links" style="padding: 10px 20px;">
							<a href="${pageContext.request.contextPath }/app/pages/findId.jsp">아이디 찾기</a> | <a href="${pageContext.request.contextPath }/app/pages/findPw.jsp">비밀번호 찾기
								</a> | <a href="${pageContext.request.contextPath }/app/pages/join.jsp">회원가입</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer fixed_footer">

		<!-- Copyright -->
                <%@ include file="/app/pages/footer_control.jsp" %>  
		<!-- End Copyright -->
	</footer>
	<!--========== END FOOTER ==========-->

	<!-- Back To Top -->
	<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

	<!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- CORE PLUGINS -->
	<script src="../../resource/vendor/jquery.min.js"
		type="text/javascript"></script>
	<script src="../../resource/vendor/jquery-migrate.min.js"
		type="text/javascript"></script>
	<script src="../../resource/vendor/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>

	<!-- PAGE LEVEL PLUGINS -->
	<script src="../../resource/vendor/jquery.easing.js"
		type="text/javascript"></script>
	<script src="../../resource/vendor/jquery.back-to-top.js"
		type="text/javascript"></script>
	<!--  <script src="vendor/jquery.smooth-scroll.js" type="text/javascript"></script> -->
	<script src="../../resource/vendor/jquery.wow.min.js"
		type="text/javascript"></script>
	<script src="../../resource/vendor/swiper/js/swiper.jquery.min.js"
		type="text/javascript"></script>
	<script src="../../resource/vendor/masonry/jquery.masonry.pkgd.min.js"
		type="text/javascript"></script>
	<script src="../../resource/vendor/masonry/imagesloaded.pkgd.min.js"
		type="text/javascript"></script>

	<!-- PAGE LEVEL SCRIPTS -->
	<script src="../../resource/js/layout.min.js" type="text/javascript"></script>
	<script src="../../resource/js/components/wow.min.js"
		type="text/javascript"></script>
	<script src="../../resource/js/components/swiper.min.js"
		type="text/javascript"></script>
	<script src="../../resource/js/components/masonry.min.js"
		type="text/javascript"></script>
	<script src="../../resource/js/action.js"></script>
</body>
<!-- END BODY -->

</html>