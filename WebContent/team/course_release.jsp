<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<!-- 用于简化路径，通过网址设定base，之后页面自动跟进path -->
<!--<base href="index.html"> -->
<title>Ututor-约克华人辅导平台</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />


<link rel="shortcut icon" href="../images/favicon.ico">



<!-- Bootstrap core CSS -->
<link href="../bootstrap/css/bootstrap.css" rel="stylesheet" />

<!-- Font Awesome CSS -->
<link href="../fonts/font-awesome/css/font-awesome.css" rel="stylesheet" />

<!-- Fontello CSS -->
<link href="../fonts/fontello/css/fontello.css" rel="stylesheet" />

<!-- Plugins -->
<link href="../plugins/magnific-popup/magnific-popup.css"
	rel="stylesheet" />
<link href="../css/animations.css" rel="stylesheet" />
<link href="../plugins/owl-carousel/owl.carousel.css" rel="stylesheet" />

<!-- iDea core CSS file -->
<link href="../css/style.css" rel="stylesheet" />

<!-- Color Scheme (In order to change the color scheme, replace the red.css with the color scheme that you prefer)-->
<link href="../css/skins/red.css" rel="stylesheet" />

<!-- Custom css -->
<link href="../css/custom.css" rel="stylesheet" />
<!--[if lt IE 9]>
		<script type="text/javascript"  src="js/html5shiv.js"></script>
		<script type="text/javascript" src="js/selectivizr.js"></script>
		<![endif]-->
<link href="../css/ssi-uploader.css" rel="stylesheet" />
<!--link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"-->

<!--style type="text/css">
			#drop_area{width:100%; height:100px; border:3px dashed red; line-height:100px; text-align:center; font-size:36px; color:#d3d3d3}
			
			#preview{width:500px; overflow:hidden}
		</style-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.4.3.js"></script>

</head>
<body class="front">
	<!-- scrollToTop -->
	<!-- ================ -->
	<div class="scrollToTop">
		<i class="icon-up-open-big"></i>
	</div>

	<!-- page wrapper start -->
	<!-- ================ -->
	<div class="page-wrapper">

		<%@include file="../common/header-top.jsp"%>

		<%@include file="../common/header-fixed.jsp"%>

		<div class="page-intro">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><i class="fa fa-home pr-10"></i><a href="../index.jsp">首页</a></li>
							<li><a
								href="${pageContext.request.contextPath }/team/postedclasslist.action?pageNo=1">已发布的课程</a></li>
							<li class="active">发布新课</li>
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
							<li><a
								href="${pageContext.request.contextPath }/user/user_info.jsp">我的信息</a></li>
							<li><a
								href="${pageContext.request.contextPath }/user/listcourse.action?pageNo=1">已加入的课程</a></li>
							<c:if
								test="${sessionScope.userIdentity.equals('team')||sessionScope.userIdentity.equals('tutor')}">
								<li><a href="${pageContext.request.contextPath }/team/postedclasslist.action?pageNo=1">已发布的课程</a></li>
								<li class="active"><a
									href="${pageContext.request.contextPath }/team/course_release.jsp">发布新课</a></li>
							</c:if>
							<c:if test="${sessionScope.userIdentity.equals('student')}">
								<li><a href="">注册成为讲师</a></li>
							</c:if>
							<li><a
								href="${pageContext.request.contextPath }/user/user_psw_change.jsp">修改密码</a></li>
						</ul>
						</nav>
					</div>
				</div>
				</aside>
				<!-- sidebar end -->

				<!-- main start -->
				<div class="main col-md-6">

							<!-- page-title start -->
							<h2>发布一门课程(1/3)</h2>
							<hr>
							<div>
								<form action="${pageContext.request.contextPath }/team/course_release2.jsp">
								<h4>选择一门已被授权的课程</h4>

								<input class="form-control" id="course" name="course_code">
								</input>
								<button class="btn btn-sm btn-info pull-right" type="submit">下一步</button>
								
								</form>
								<div class="small">还没有授权的课程？查看<a href="user_post_course_2.html">如何授权一门课程</a></div>
							</div>
							
						</div>
				<!-- ================ -->
			</div>
		</div>
		</section>

		<%@include file="../common/footer.jsp"%>

	</div>

	<script type="text/javascript" src="../plugins/jquery.js"></script>
	<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>

	<!-- Modernizr javascript -->
	<script type="text/javascript" src="../plugins/modernizr.js"></script>

	<!-- Isotope javascript -->
	<script type="text/javascript"
		src="../plugins/isotope/isotope.pkgd.min.js"></script>

	<!-- Owl carousel javascript -->
	<script type="text/javascript"
		src="../plugins/owl-carousel/owl.carousel.js"></script>

	<!-- Magnific Popup javascript -->
	<script type="text/javascript"
		src="../plugins/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Appear javascript -->
	<script type="text/javascript" src="../plugins/jquery.appear.js"></script>

	<!-- Sharrre javascript -->
	<script type="text/javascript" src="../plugins/jquery.sharrre.js"></script>

	<!-- Count To javascript -->
	<script type="text/javascript" src="../plugins/jquery.countTo.js"></script>

	<!-- Parallax javascript -->
	<script src="../plugins/jquery.parallax-1.1.3.js"></script>

	<!-- Contact form -->
	<script src="../plugins/jquery.validate.js"></script>

	<!-- Initialization of Plugins -->
	<script type="text/javascript" src="../js/template.js"></script>

	<!-- Custom Scripts -->
	<script type="text/javascript" src="../js/custom.js"></script>

	<script src="../js/ssi-uploader.js" type="text/javascript"></script>
	
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