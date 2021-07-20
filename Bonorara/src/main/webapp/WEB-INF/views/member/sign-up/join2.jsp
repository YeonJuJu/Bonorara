<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}/" />

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Bonorara</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="${path}resources/images_member/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="${path}resources/vendor_member/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${path}resources/fonts_member/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${path}resources/fonts_member/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="${path}resources/vendor_member/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="${path}resources/vendor_member/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="${path}resources/vendor_member/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="${path}resources/vendor_member/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="${path}resources/vendor_member/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="${path}resources/css_member/util.css">
	<link rel="stylesheet" type="text/css" href="${path}resources/css_member/main.css">

	<script>
		function doAction(){
			alert('doAction();');
		}
	</script>

</head>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" style="padding-top:55px;">
					<span class="login100-form-title p-b-20" style="font-weight:bold;">
						Sign Up for Bonorara
					</span>
					
					<br><br>
					
					<div style="width:100%">
						<ul style="list-style:none; margin:0; padding:0;">
							<li style="margin-left:30px; float: left; text-align: center;"><img src="${path}resources/images_member/agree.png" width="50px"><br/><span>1.약관동의</span></li>
							<li style="margin-left:30px; float: left; text-align: center;"><img src="${path}resources/images_member/certificate_blue.png" width="45px" style="margin-bottom:5px;"><br/><span style="color:#6675df; font-weight:bold;">2.메일인증</span></li>
							<li style="margin-left:30px; float: left; text-align: center;"><img src="${path}resources/images_member/edit.png" width="45px" style="margin-bottom:5px;"><br/><span>3.정보입력</span></li>
							<li style="margin-left:30px; float: left; text-align: center;"><img src="${path}resources/images_member/finish.png" width="50px"><br/><span>4.가입완료</span></li>
						</ul>
					</div>
					
					<br><br><br><br><br>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email">
						<span class="focus-input100"></span>
						<span class="label-input100">Email</span>
						<button>이메일 인증 버튼</button>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email">
						<span class="focus-input100"></span>
						<span class="label-input100">여기는 인증번호 치는 곳 (인증 누르면 나옴)</span>
						<button>확인버튼</button>
					</div>

					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div>
							<!-- <a href="#" class="txt1">
								Sign in
							</a> -->
						</div>
					</div>
			

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" onClick="doAction();">
							Next
						</button>
					</div>
				</form>

				<div class="login100-more" style="background-image: url('${path}resources/images_member/bg.jpg');">
				</div>
			</div>
		</div>
	</div>
	
	<script src="${path}resources/vendor_member/jquery/jquery-3.2.1.min.js"></script>
	<script src="${path}resources/vendor_member/animsition/js/animsition.min.js"></script>
	<script src="${path}resources/vendor_member/bootstrap/js/popper.js"></script>
	<script src="${path}resources/vendor_member/bootstrap/js/bootstrap.min.js"></script>
	<script src="${path}resources/vendor_member/select2/select2.min.js"></script><!--===============================================================================================-->
	<script src="${path}resources/vendor_member/daterangepicker/moment.min.js"></script>
	<script src="${path}resources/vendor_member/daterangepicker/daterangepicker.js"></script>
	<script src="${path}resources/vendor_member/countdowntime/countdowntime.js"></script>
	<script src="${path}resources/js_member/main.js"></script>

</body>
</html>

