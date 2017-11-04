<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>login</title>
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

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/checkinput.js">
	
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

<body class="front" style="background-color:black">

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
			<h3 class="text-center">登&nbsp录</h3>
			<form method="post"
				action="${pageContext.request.contextPath }/action/login.action">
				<div class="form-group col-md-4 col-center-block">
					<input type="email" class="form-control" id="txtEmail2"
						title="请输入您的邮箱" name="email" placeholder="请输入您的邮箱">
				</div>
				<div class="form-group col-md-4 col-center-block">
					<input type="password" class="form-control" title="请输入密码"
						name="password" id="txtPassword" placeholder="请输入密码">
				</div>

				<div class="form-group checkbox col-md-5 col-md-offset-4">
					<label> <input type="checkbox"> Remember me </label>
				</div>
				<button type="submit" class="btn btn-danger btn-lg btn-block"
					style="width: 31%; margin: auto; line-height: 10px">登&nbsp录</button>
			</form>

			<div>
				<p class="text-center">
					<span id="code_span" style="color: red">&nbsp&nbsp<span>
							<span style="color: red">&nbsp${login_err}&nbsp<span>
				</p>
				<p class="text-center">
					还没有Ututor帐号?<a
						href="${pageContext.request.contextPath}/action/sign_up.jsp">快速注册</a>
				</p>
				<br><br />
			</div>

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
