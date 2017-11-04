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
						<div class="main col-md-9">

							<!-- page-title start -->
							<!-- ================ -->
							<h1 class="page-title">常 见 问 题</h1>
							
							<!-- page-title end -->

							<!-- tabs start -->
							<!-- tabs start -->
							<div class="tabs-style-2">
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li class="active"><a href="#tab1" role="tab" data-toggle="tab"><i class="fa  fa-life-saver pr-10"></i>用户</a></li>
									<li><a href="#tab2" role="tab" data-toggle="tab"><i class="fa fa-user pr-10"></i>学生</a></li>
									<li><a href="#tab3" role="tab" data-toggle="tab"><i class="fa fa-star pr-10"></i>导师</a></li>
								</ul>
								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane fade in active" id="tab1">
										<!-- accordion start -->
										<div class="panel-group" id="accordion-faq">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-faq" href="#collapseOne" class="collapsed">
															<i class="fa fa-question-circle pr-10"></i> 我的账号出现异常怎么办？
														</a>
													</h4>
												</div>
												<div id="collapseOne" class="panel-collapse collapse">
													<div class="panel-body">
														若您的账号出现异常，请登陆后前往个人信息页面并修改密码。
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-faq" href="#collapseTwo" class="collapsed">
															<i class="fa fa-question-circle pr-10"></i> 忘记密码怎么办？
														</a>
													</h4>
												</div>
												<div id="collapseTwo" class="panel-collapse collapse">
													<div class="panel-body">
														若您忘记了密码，请点击登录，并点击忘记密码，然后通过邮箱验证设置新密码。
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-faq" href="#collapseThree" class="collapsed">
															<i class="fa fa-question-circle pr-10"></i> 我注册时填写的联系信息会不会被外泄给他人？
														</a>
													</h4>
												</div>
												<div id="collapseThree" class="panel-collapse collapse">
													<div class="panel-body">
														u tutor严格保护所有用户的隐私，我们绝不会向其他组织或个人泄露用户信息。
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-faq" href="#collapseFour" class="collapsed">
															<i class="fa fa-question-circle pr-10"></i> 为何我无法发布课程？
														</a>
													</h4>
												</div>
												<div id="collapseFour" class="panel-collapse collapse">
													<div class="panel-body">
														只有被UTUTOR认证的导师才有资格发布课程，若您想加入UTUTOR导师团，请联系我们。
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-faq" href="#collapseFive" class="collapsed">
															<i class="fa fa-question-circle pr-10"></i> 为何我无法登陆？
														</a>
													</h4>
												</div>
												<div id="collapseFive" class="panel-collapse collapse">
													<div class="panel-body">
														若您无法登陆，且账号密码无误，那您的账号可能因为您违反了用户条约而被冻结，请尽快联系我们了解原因。
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-faq" href="#collapseSix" class="collapsed">
															<i class="fa fa-question-circle pr-10"></i> 如何才能成为UTUTOR认证导师？
														</a>
													</h4>
												</div>
												<div id="collapseSix" class="panel-collapse collapse">
													<div class="panel-body">
														如果您拥有一个辅导团队，请直接发信至<a href="mailto:xiguapiggz@gmail.com">xiguapiggz@gmail.com</a>。如果您是私人用户，由于我们现阶段平台还在测试阶段，暂时不开放私人用户注册成为导师。我们将在日后功能完善之后开放，敬请期待！
													</div>
												</div>
											</div>
											
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-faq" href="#collapseSeven" class="collapsed">
															<i class="fa fa-question-circle pr-10"></i> 当我遇到bug我该怎么办？
														</a>
													</h4>
												</div>
												<div id="collapseSeven" class="panel-collapse collapse">
													<div class="panel-body" id="bug_report">
														如果您在使用过程中发生了漏洞，我们向您表示道歉。由于网站尚在测试阶段，我们并无法保证系统的绝对安全稳定。请尽快<a href="about.html">联系我们</a>，我们欢迎您的bug举报
													</div>
												</div>
											</div>
												
										</div>
										<!-- accordion end -->
									</div>
									<div class="tab-pane fade" id="tab2">
										<!-- accordion start -->
										<div class="panel-group" id="accordion-faq-2">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-faq-2" href="#collapseOne-2"  class="collapsed">
															<i class="fa fa-question-circle pr-10"></i> 我如何添加课程？
														</a>
													</h4>
												</div>
												<div id="collapseOne-2" class="panel-collapse collapse">
													<div class="panel-body">
														请参见<a href="instructions.html">使用说明</a>中关于添加课程的内容。
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-faq-2" href="#collapseTwo-2" class="collapsed">
															<i class="fa fa-question-circle pr-10"></i> 我参加的课程总时长比课程信息中给出的该课程总时长少很多怎么办？我参加的课程内容与课程信息中的内容完全不符怎么办？
														</a>
													</h4>
												</div>
												<div id="collapseTwo-2" class="panel-collapse collapse">
													<div class="panel-body">
														如果出现以上情况，请立即联系UTUTOR team。根据用户条约，UTUTOR有权力及义务帮您向授课机构或个人追究责任及赔偿。
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-faq-2" href="#collapseThree-2" class="collapsed">
															<i class="fa fa-question-circle pr-10"></i> 所有课程结束后，我对该课程效果不满意怎么办？
														</a>
													</h4>
												</div>
												<div id="collapseThree-2" class="panel-collapse collapse">
													<div class="panel-body">
														若该课程的内容和时长与课程信息中的一致，即使您对该课程不满意，我们也无法为您追究赔款。您可以在课程评价中对该课程发表您的意见。
													</div>
												</div>
											</div>
											
										</div>
										<!-- accordion end -->
									</div>
									<div class="tab-pane fade" id="tab3">
										<!-- accordion start -->
										<div class="panel-group" id="accordion-faq-3">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-faq-3" href="#collapseOne-3" class="collapsed">
															<i class="fa fa-question-circle pr-10"></i> 我如何发布课程？
														</a>
													</h4>
												</div>
												<div id="collapseOne-3" class="panel-collapse collapse">
													<div class="panel-body">
														请参照<a href="instructions.html">使用说明</a>中关于发布课程的部分。
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion-faq-3" href="#collapseTwo-3" class="collapsed">
															<i class="fa fa-question-circle pr-10"></i> 有人对我的课程恶意评论怎么办？
														</a>
													</h4>
												</div>
												<div id="collapseTwo-3" class="panel-collapse collapse">
													<div class="panel-body">
														请立即联系UTUTOR团队，我们将会根据情况对评论做出处理。
													</div>
												</div>
											</div>
											
										</div>
										<!-- accordion end -->
									</div>
								</div>
							</div>
							<!-- tabs end -->
							
							
						</div>
						<!-- main end -->
						</div>
					</div>
				</div>
			</section>


		<!-- banner start -->
			<!-- ================ -->
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