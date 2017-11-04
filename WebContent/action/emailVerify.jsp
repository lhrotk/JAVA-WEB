<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>Verify email</title>
<title>Ututor-约克华人辅导平台</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link rel="shortcut icon" href="../images/favicon.ico">
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-1.4.3.js"></script>
	<link
		href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
		rel="stylesheet" />
	<link
		href="${pageContext.request.contextPath}/fonts/font-awesome/css/font-awesome.css"
		rel="stylesheet" />
	<link
		href="${pageContext.request.contextPath}/fonts/fontello/css/fontello.css"
		rel="stylesheet" />
	<link
		href="${pageContext.request.contextPath}/plugins/rs-plugin/css/settings.css"
		media="screen" rel="stylesheet" />
	<link
		href="${pageContext.request.contextPath}/plugins/rs-plugin/css/extralayers.css"
		media="screen" rel="stylesheet" />
	<link
		href="${pageContext.request.contextPath}/plugins/magnific-popup/magnific-popup.css"
		rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/animations.css"
		rel="stylesheet" />
	<link
		href="${pageContext.request.contextPath}/plugins/owl-carousel/owl.carousel.css"
		rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/style.css"
		rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/skins/green.css"
		rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/custom.css"
		rel="stylesheet" />
	<link
		href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css"
		rel="stylesheet" type="text/css" />

	<script type="text/javascript">
		$(function() {
			$("#check").submit(function() {
				var code = $("#code1").val();
				if (code == "") {
					alert("请输入您收到的验证码");
					return false;
				}
				return true;
			});
			settime(document.getElementById("button11"));
		});
		$(function() {
			$("#button1").click(function() {
				settime(this);
				$.post("sendcode.action", {}, function(data) {
					$("#send1").attr("style", "display:none");
					$("#send2").attr("style", "display:block");
					$("#txtToChange1").html("已经");
					$("#txtToChange2").html("请您输入您收到的验证码:");
				}, "json");
				return true;
			});
		});
		$(function() {
			$("#button2").click(function() {
				settime(document.getElementById("button11"));
				var code = $("#code1").val();
				alert(code);
				$.post("verifyemail.action", {
					"code" : code
				}, function(data) {
					if (data == true) {
						$("#code1").html("");
						$("#error_message").html("验证成功");
						alert("验证成功");
						window.location.href="${pageContext.request.contextPath}/user/user_info.jsp"
					} else {
						$("#code1").html("");
						$("#error_message").html("验证码有误");
					}
				}, "json");
				return true;
			});
		});
	</script>

	<script type="text/javascript">
		var countdown = 60;
		function settime(val) {
			if (countdown == 0) {
				val.removeAttribute("disabled");
				val.innerHTML = "发送验证码";
				countdown = 60;
			} else {
				val.setAttribute("disabled", true);
				val.innerHTML = "重新发送(" + countdown + ")";
				countdown--;
				setTimeout(function() {
					settime(val)
				}, 1000)
			}

		}
	</script>

	<style>
.col-center-block {
	float: none;
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>

<body class="front" style="background-color: black">

	<div class="scrollToTop">
		<i class="icon-up-open-big"></i>
	</div>

	<!-- page wrapper start -->
	<!-- ================ -->
	<div class="page-wrapper">

		<!-- header-top start -->
		<%@include file="../common/header-top.jsp"%>

		<%@include file="../common/header-fixed.jsp"%>
		<div class="main">
			<h3 class="text-center">验证您的邮箱</h3>
			<c:if test="${sessionScope.name==null}">
				<p class="text-center">
					对不起请您先<a href="${pageContext.request.contextPath}/user/login.jsp">登录</a>
				</p>
			</c:if>

			<c:if test="${sessionScope.userStatus.equals('YES')}">
				<p class="text-center">尊敬的${sessionScope.name}，您已完成邮箱验证！</p>
			</c:if>

			<c:if
				test="${sessionScope.name!=null && sessionScope.userStatus.equals('NO')}">
				</br>
				</br>
				<p class="text-center">
					尊敬的${sessionScope.name}，我们<span id="txtToChange1">将</span>向您的电子邮箱${sessionScope.userEmail}发送验证码，<span
						id="txtToChange2">以验证您的Ututor账户！</span>
				</p>
				<div id="send1">
					</br>
					<button type="button" class="btn btn-danger btn-lg btn-block"
						id="button1" style="width: 25%; margin: auto; line-height: 10px;">发送验证码</button>
				</div>
				<div id="send2" style="display: none">

					<div class="form-group col-md-4 col-center-block">
						<input type="text" class="form-control" id="code1"
							title="请输入您收到的验证码" placeholder="请输入您收到的验证码">
					</div>
					<div class="form-group col-md-4 col-center-block"
						style="height: 50px;">
						<div style="width: 45%; float: left;">
							<button type="button" class="btn btn-danger" id="button11" style="width: 100%;margin: auto;line-height: 20px;">发送验证码</button>
						</div>
						<div style="width: 45%; float: right;">
							<button type="button" class="btn btn-danger" id="button2" style="width: 100%;margin: auto;line-height: 20px;">提交验证码</button>
						</div>


					</div>

				</div>
				<div>
					</br>
					<p class="text-center">
						<span style="color: red" id="error_message">${emailVerify_error}<span>
					</p>
					</br>
				</div>-->
			</c:if>


		</div>

		<%@include file="../common/footer.jsp"%>

	</div>
	<!-- page-wrapper end -->

	<!-- JavaScript files placed at the end of the document so the pages load faster
		================================================== -->
	<!-- Jquery and Bootstap core js files -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>

	<!-- Modernizr javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/modernizr.js"></script>

	<!-- jQuery REVOLUTION Slider  -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

	<!-- Isotope javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/isotope/isotope.pkgd.min.js"></script>

	<!-- Owl carousel javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/owl-carousel/owl.carousel.js"></script>

	<!-- Magnific Popup javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Appear javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/jquery.appear.js"></script>

	<!-- Count To javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/plugins/jquery.countTo.js"></script>

	<!-- Parallax javascript -->
	<script
		src="${pageContext.request.contextPath}/plugins/jquery.parallax-1.1.3.js"></script>

	<!-- Contact form -->
	<script
		src="${pageContext.request.contextPath}/plugins/jquery.validate.js"></script>

	<!-- Initialization of Plugins -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/template.js"></script>

	<!-- Custom Scripts -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/custom.js"></script>
	<script type="text/javascript">
		$(function() {
			if ($(document).width() > 991) {
				$(".main").css("min-height", 700);
				if ($(".left-side").height() < $(".main").height()) {
					$(".left-side").css("height", $(".main").height());
				}
			}
		})
	</script>

</body>
</html>