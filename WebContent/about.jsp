<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html lang="zh-CN">

<head>
<!-- 用于简化路径，通过网址设定base，之后页面自动跟进path -->
<!--<base href="index.html"> -->
<title>Ututor-约克华人辅导平台</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link rel="shortcut icon" href="images/favicon.ico" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.3.js"></script>

<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">

		<!-- Font Awesome CSS -->
		<link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

		<!-- Fontello CSS -->
		<link href="fonts/fontello/css/fontello.css" rel="stylesheet">

		<!-- Plugins -->
		<link href="plugins/rs-plugin/css/settings.css" media="screen" rel="stylesheet">
		<link href="plugins/rs-plugin/css/extralayers.css" media="screen" rel="stylesheet">
		<link href="plugins/magnific-popup/magnific-popup.css" rel="stylesheet">
		<link href="css/animations.css" rel="stylesheet">
		<link href="plugins/owl-carousel/owl.carousel.css" rel="stylesheet">

		<!-- iDea core CSS file -->
		<link href="css/style.css" rel="stylesheet">

		<!-- Color Scheme (In order to change the color scheme, replace the red.css with the color scheme that you prefer)-->
		<link href="css/skins/red.css" rel="stylesheet">

		<!-- Custom css --> 
		<link href="css/custom.css" rel="stylesheet">
<!--[if lt IE 9]>
		<script type="text/javascript"  src="js/html5shiv.js"></script>
		<script type="text/javascript" src="js/selectivizr.js"></script>
		<![endif]-->
		
</head>

<!-- body classes: 
			"boxed": boxed layout mode e.g. <body class="boxed">
			"pattern-1 ... pattern-9": background patterns for boxed layout mode e.g. <body class="boxed pattern-1"> 
	-->
<body class="front">
	<!-- scrollToTop -->
	<!-- ================ -->
	<div class="scrollToTop">
		<i class="icon-up-open-big"></i>
	</div>

	<!-- page wrapper start -->
	<!-- ================ -->
	<div class="page-wrapper">

		<!-- header-top start -->
		<!-- ================ -->
		<%@include file="common/header-top.jsp"%>
		<!-- header-top end -->

		<!-- header start (remove fixed class from header in order to disable fixed navigation mode) -->
		<!-- ================ -->
		<%@include file="common/header-fixed.jsp"%>
		<!-- header end -->
<section class="main-container">
				<div class="container">
					<div class="row">

						<!-- main start -->
						<!-- ================ -->
						<div class="main col-md-12">

							<!-- page-title start -->
							<!-- ================ -->
							<h1 class="page-title">About Us</h1>
							<div class="separator-2"></div>
							<!-- page-title end -->

							<div class="row">
								<div class="col-md-6">
									<p>我们是由CS专业学生组成的一个的团队，利用暑假时间做成的这样一个平台。</p>
									<p>平台的出发点是方便学校内补课机构更有效的发布课程信息，方便学生搜索想要的课程和查阅相关课程的教学材料。</p>
									<ul class="list-icons">
										<li class="object-non-visible" data-animation-effect="fadeInUpSmall">目前项目还在进一步完善中，所以存在一些问题也敬请谅解</li>
										<li class="object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="100">截至2017年９月,此项目开发一共耗时2个月</li>
										<li class="object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="300">由于时间局促，网站的界面可能也略显简陋</li>
										<li class="object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="500">如有疑问欢迎来信 <i class="fa fa-envelope pr-10"></i><a href="mailto:ututor_team@hotmail.com">ututor_team@hotmail.com</a></li>
									</ul>
								</div>

								<!-- sidebar start -->
								<aside class="sidebar col-md-6">
									<div class="side vertical-divider-left">
										<div class="block clearfix">
											<img src="images/logo_big.png" alt="logo_big" height="300" width="300">
										</div>
									</div>
								</aside>
								<!-- sidebar end -->
							</div>

						</div>
						<!-- main end -->

					</div>
				</div>
			</section>
			<!-- main-container end -->
			
			<!-- section start -->
			<!-- ================ -->
			<div class="section clearfix" id="member">
				<div class="container object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="600">
					
					<div class="row grid-space-20">
					
						<div class="col-md-3 col-sm-6">
							<div class="box-style-1 white-bg team-member">
								<div class="overlay-container">
									<img src="images/frank.jpg" alt="wechatQR">
								</div>
								<h3>Guozhe(Frank), Gao</h3>
								<a href="mailto:xiguapiggz@gmail.com">xiguapiggz@gmail.com</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="box-style-1 white-bg team-member">
								<div class="overlay-container">
									<img src="images/hongru.jpg" alt="wechatQR">
									
								</div>
								<h3>Hongru, Li</h3>
								<a href="mailto:lhrotk@gmail.com">lhrotk@gmail.com</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="box-style-1 white-bg team-member">
								<div class="overlay-container">
									<img src="images/kris.PNG" alt="wechatQR">
									
								</div>
								<h3>Yichun(Kris), Dai</h3>
								<a href="mailto:kris0302yd@gmail.com">kris0302yd@gmail.com</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="box-style-1 white-bg team-member">
								<div class="overlay-container">
									<img src="images/peter.PNG" alt="wechatQR">
									
								</div>
								<h3>Shuai(Peter), Niu</h3>
								<a href="mailto:peterniu0518@gmail.com">peterniu0518@gmail.com</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- section end -->
			
			
			<!-- main-container start -->
			<!-- ================ -->
			<section class="main-container">
				<div class="container">
					<div class="row">

						<!-- main start -->
						<!-- ================ -->
						<div class="main col-md-12" id="join_us">

							<!-- page-title start -->
							<!-- ================ -->
							<h1 class="page-title">加入我们</h1>
							<div class="separator-2"></div>
							<!-- page-title end -->

							<div class="row">
								<div class="col-md-8">
									<p>本网站为JAVA WEB应用,前端采用了bootstrap框架,可同时服务个人电脑和移动终端。本网站仍在完善中，如果你对本网站内容感兴趣并且在WEB应用开发方面具备一定基础，欢迎加入我们。</p>
									<p>网站经营初期并没有收入,请不要对金钱回报有所期待。</p>
									<ul class="list-icons">
										<li><i class="fa fa-envelope pr-10"></i><a href="mailto:xiguapiggz@gmail.com">xiguapiggz@gmail.com</a></li>
									</ul>
								</div>

							</div>

						</div>
						<!-- main end -->

					</div>
				</div>
			</section>
		<!-- banner end -->
		<%@include file="common/footer.jsp"%>
		<!-- .footer end -->

		<!-- .subfooter start -->
		<!-- ================ -->

		<!-- footer end -->

	</div>
	<!-- page-wrapper end -->

	<!-- JavaScript files placed at the end of the document so the pages load faster
		================================================== -->
	<!-- Jquery and Bootstap core js files -->
	<script type="text/javascript" src="plugins/jquery.min.js"></script>
		<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

		<!-- Modernizr javascript -->
		<script type="text/javascript" src="plugins/modernizr.js"></script>

		<!-- jQuery REVOLUTION Slider  -->
		<script type="text/javascript" src="plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
		<script type="text/javascript" src="plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

		<!-- Isotope javascript -->
		<script type="text/javascript" src="plugins/isotope/isotope.pkgd.min.js"></script>

		<!-- Owl carousel javascript -->
		<script type="text/javascript" src="plugins/owl-carousel/owl.carousel.js"></script>

		<!-- Magnific Popup javascript -->
		<script type="text/javascript" src="plugins/magnific-popup/jquery.magnific-popup.min.js"></script>

		<!-- Appear javascript -->
		<script type="text/javascript" src="plugins/jquery.appear.js"></script>

		<!-- Count To javascript -->
		<script type="text/javascript" src="plugins/jquery.countTo.js"></script>

		<!-- Parallax javascript -->
		<script src="plugins/jquery.parallax-1.1.3.js"></script>

		<!-- Contact form -->
		<script src="plugins/jquery.validate.js"></script>

		<!-- Initialization of Plugins -->
		<script type="text/javascript" src="js/template.js"></script>

		<!-- Custom Scripts -->
		<script type="text/javascript" src="js/custom.js"></script>



</body>
</html>