<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>
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
		var auth = false;
		var isSend = false;
		var authCode;
	
		window.onload = function(){
			var agree = document.getElementById("agree").value;
			if(agree != "Y"){
				alert("약관 동의 후 회원가입을 진행해주세요.");
				document.getElementById("form_join2").action="join1";
				document.getElementById("form_join2").submit();
			}
		}
		
		function doAction(){
			var mail = document.getElementById("email").value;
			var code = document.getElementById("code").value;
			
			if(mail == ""){
				alert("이메일을 입력해주세요!");
				document.getElementById("email").focus();
				return;
			}else if(code == ""){
				alert("인증번호를 입력해주세요!");
				document.getElementById("code").focus();
				return;
			}else if(auth == false){
				alert("이메일 인증을 진행해주세요!");
				document.getElementById("certi_btn").focus();
				return;
			}else{
				document.getElementById("form_join2").action="join3";
				document.getElementById("form_join2").submit();
			}	
		}
		
		function sendEmail(){
			var mail = document.getElementById("email").value;
			
			if(mail == ""){
				alert("이메일을 입력해주세요!");
				document.getElementById("email").focus();
				return;
			}else if(isSend == true){
				alert("이미 이메일이 전송이 완료되었습니다!");
				document.getElementById("code").focus();
				return;
			}
			
			document.getElementById("email").disabled = true;
			
			$.ajax({
				type : 'post',
				url : '/sendMail.do',
				data : {
					email : mail
				},
				dataType : 'json',
				success : function(data){
					authCode = data.code;
					isSend = true;
					alert("이메일이 전송되었습니다!");
				}
			});
		}
		
		function compareCertiCode(){
			var inputCode = document.getElementById("code").value;
			
			if(inputCode == ""){
				alert("인증번호를 입력해주세요!");
				return;
			}else if(inputCode != authCode){
				alert("인증번호가 일치하지 않습니다!");
				auth = false;
				document.getElementById("code").focus();
				return;
			}else{
				alert("이메일 인증이 완료되었습니다!");
				auth = true;
				document.getElementById("email").disabled = true;
				document.getElementById("code").disabled = true;
				return;
			}
		}
	</script>

</head>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form id="form_join2" class="login100-form validate-form" method="post" style="padding-top:55px;">
					<input type="hidden" id="agree" value="<c:out value="${param.agree_chBox}"/>"/>
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
					
					<div style="font-weight:bold; margin: 0 5px 10px;">
						Email
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" id="email" name="email">
						<span class="focus-input100"></span>
						<span class="label-input100">Email</span>
					</div>
					
					<div>
						<button id="email_btn" class="certificate_btn" type="button" style="float:right;" onClick="sendEmail();">전송</button>
					</div>
					
					<br>
					
					<div style="font-weight:bold; margin: 0 5px 10px;">
						Certification Number
					</div>
					
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" id="code" name="code">
						<span class="focus-input100"></span>
						<span class="label-input100">Certification Number</span>
					</div>

					<div>
						<button id="certi_btn" class="certificate_btn" type="button" style="float:right;" onClick="compareCertiCode();">확인</button>
					</div>

					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div>
							<!-- <a href="#" class="txt1">
								Sign in
							</a> -->
						</div>
					</div>
			

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="button" onClick="doAction();">
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

