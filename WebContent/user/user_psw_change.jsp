<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
		<!-- 用于简化路径，通过网址设定base，之后页面自动跟进path -->
	    <!--<base href="index.html"> -->
		<title>Ututor-约克华人辅导平台</title>
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		

		<link rel="shortcut icon" href="../images/favicon.ico">
        
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.3.js"></script>
        
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>

		<!-- Bootstrap core CSS -->
		<link href="../bootstrap/css/bootstrap.css" rel="stylesheet">

		<!-- Font Awesome CSS -->
		<link href="../fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

		<!-- Fontello CSS -->
		<link href="../fonts/fontello/css/fontello.css" rel="stylesheet">

		<!-- Plugins -->
		<link href="../plugins/magnific-popup/magnific-popup.css" rel="stylesheet">
		<link href="../css/animations.css" rel="stylesheet">
		<link href="../plugins/owl-carousel/owl.carousel.css" rel="stylesheet">

		<!-- iDea core CSS file -->
		<link href="../css/style.css" rel="stylesheet">

		<!-- Color Scheme (In order to change the color scheme, replace the red.css with the color scheme that you prefer)-->
		<link href="../css/skins/red.css" rel="stylesheet">

		<!-- Custom css --> 
		<link href="../css/custom.css" rel="stylesheet">
		<!--[if lt IE 9]>
		<script type="text/javascript"  src="js/html5shiv.js"></script>
		<script type="text/javascript" src="js/selectivizr.js"></script>
		<![endif]--> 
		
		

		
</head>

<body class="front">

	<div class="scrollToTop">
		<i class="icon-up-open-big"></i>
	</div>

	<!-- page wrapper start -->
	<!-- ================ -->
	<div class="page-wrapper">

		<!-- header-top start -->
		<%@include file="../common/header-top.jsp"%>

		<%@include file="../common/header-fixed.jsp"%>


		<!-- page-intro end -->

		<!-- main-container start -->
		<!-- ================ -->
		<div class="page-intro">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><i class="fa fa-home pr-10"></i><a
								href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
							<li><a href="user_info.jsp">我的信息</a></li>
							<li class="active">修改密码</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!-- page-intro end -->

		<!-- main-container start -->
		<!-- ================ -->
		<section class="main-container">

		<div class="container user-home">
			<div class="row">

				<!-- sidebar start -->
				<aside class="col-md-3">
				<div class="sidebar left-side">
					<div class="block clearfix">
						<h3 class="title">
							&nbsp;&nbsp;欢迎，<span id="user-name">${sessionScope.name}</span>
						</h3>
						<div class="separator"></div>
						<nav>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="user_info.jsp">我的信息</a></li>
							<li><a href="${pageContext.request.contextPath }/user/listcourse.action?pageNo=1">已加入的课程</a></li>
							<c:if test="${sessionScope.userIdentity.equals('team')||sessionScope.userIdentity.equals('tutor')}">
							<li><a href="${pageContext.request.contextPath }/team/postedclasslist.action?pageNo=1">已发布的课程</a></li>
							<li><a href="${pageContext.request.contextPath }/team/course_release.jsp">发布新课</a></li>
							</c:if>
							<c:if test="${sessionScope.userIdentity.equals('student')}">
											<li><a href="">注册成为讲师</a></li>
							</c:if>
							<li class="active"><a href="user_psw_change.jsp">修改密码</a></li>
						</ul>
						</nav>
					</div>
				</div>
				</aside>
				<!-- sidebar end -->

				<!-- main start -->
				<!-- ================ -->
				<div class="main col-md-6">

					<!-- page-title start -->
					<h3>修改您的密码</h3>
					<hr>
						<form class="form-horizontal" method="post" action="${pageContext.request.contextPath }/user/changepsw.action">
							<div class="form-group has-feedback oldPsw">
								<label for="oldPassword"  class="col-sm-2 control-label">旧密码</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="oldPassword" name=oldPassword
										placeholder="Enter your current password."> <i
										class="fa form-control-feedback"></i>
								</div>
							</div>
							<div class="form-group has-feedback newPsw">
								<label for="newPassword" class="col-sm-2 control-label">新密码</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="newPassword" name="newPassword"
										placeholder="Enter your new password."> <i
										class="fa form-control-feedback"></i>
								</div>
								<p align="right" style="color: #E54245" id="len_error"></p>
							</div>

							<div class="form-group has-feedback rePsw">
								<label for="rePassword" class="col-sm-2 control-label">确认密码</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="rePassword"
										placeholder="Re-enter your new password."> <i
										class="fa form-control-feedback"></i>
								</div>
							</div>


							<div class="form-group" style="text-align: center">
								<button type="submit" class="btn btn-primary btn-sm" id="submit"
									disabled>提交</button>
							</div>

						</form>
						<p class="text-center">
							<span style="color: red">&nbsp${change_psw_error}&nbsp<span>
							<span style="color: green">&nbsp${change_psw_success}&nbsp<span>
						</p>
			
				</div>
				<!-- main end -->

				<!-- sidebar start -->
				<aside class="col-md-3">
				<div class="sidebar">
					<div class="block clearfix">
						<!-- reversed for further use -->

					</div>
				</div>
				</aside>
				<!-- sidebar end -->

			</div>
		</div>
		</section>



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