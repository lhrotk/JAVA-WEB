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

<section class="main-container icons-page">

				<div class="container">
					<div class="row">
						<!-- sidebar start -->
						<aside class="col-md-3">
							<div class="sidebar">
								<nav class="affix-menu scrollspy">
									<ul class="smooth-scroll nav nav-pills nav-stacked">
										<li class="active"><a href="#header-1">学生 - 搜索课程</a></li>
										<li><a href="#header-2">学生 - 添加课程</a></li>
										<li><a href="#header-3">学生 - 查看课程材料</a></li>
										<li><a href="#header-4">学生 - 打分和反馈</a></li>
										<li><a href="#header-5">导师 - 发布课程</a></li>
										<li><a href="#header-6">导师 - 修改课程</a></li>
										<li><a href="#header-7">导师 - 登记学生名单</a></li>
										<li><a href="#header-8">团队 - 发布课程</a></li>
										<li><a href="#header-9">BUG - 反馈</a></li>
									</ul>
								</nav>
							</div>
						</aside>
						<!-- sidebar end -->
						<!-- main start -->
						<!-- ================ -->
						<div class="main col-md-9">

							<!-- page-title start -->
							<!-- ================ -->
							<h1 class="page-title">使用说明</h1>
							<!-- page-title end -->
							<div id="header-1">
								<h2 class="page-header">学生 - 搜索课程</h2>
								<p>在首页或者顶部栏的搜索输入由四位字母加四位数字组成的课号即可搜索课程，也可以在导航栏点击“辅导课程”以跳转。</p>
								<div class="image-box-body"><img src="images/搜索结果.png" width="65%"></div>
								<p>在搜索结果页面也可以通过调整筛选信息更加精确的查找内容</p>
								
							</div>

							<div id="header-2">
								<h2 class="page-header">学生 - 添加课程</h2>
								<p>选择一门课程点开后，请仔细核对信息，满意后即可点击添加</p>
								<div class="image-box-body"><img src="images/product.png" width="65%"></div>
								
								<p>稍后您可以在个人信息中查看您已添加的课程。不满意的课程可以在未开课前Drop掉。</p>
							</div>

							<div id="header-3">
								<h2 class="page-header">学生 - 查看课程资料</h2>
								<p>在我的信息中点击“已加入的课程” -- “查看详细”.</p>
								<div class="image-box-body"><img src="images/user_course.PNG" width="65%"></div>
								<div class="image-box-body"><img src="images/detail.PNG" width="65%"></div>
								<p>请注意，根据导师设置，有些材料将取决于您的出勤状态而导致不可见.</p>
							
							</div>

							<div id="header-4">
								<h2 class="page-header">学生 - 打分和反馈</h2>
								<p>当一节课结束且您成功出勤，您可以为此次课程打分.</p>
								<div class="image-box-body"><img src="images/rating.PNG" width="65%"></div>
								<p>注：由于安全原因，我们将在一段时间内禁用分数评级.</p>
								
							</div>

							<div id="header-5">
								<h2 class="page-header">导师 - 发布课程</h2>
								<p>第一步，在个人信息中选择“发布一门新课”，选择一门列表中的课程点击下一步，没有被授权的课程？查看<a href="FAQ.html">如何授权一门课程</a>.</p>
								<div class="image-box-body"><img src="images/step1.PNG" width="65%"></div>
								<p>第二步，填写基本开课信息，您需要正确填写所有信息才能够点击下一步</p>
								<div class="image-box-body"><img src="images/step2.PNG" width="65%"></div>
								<p>请务必认真核对信息，点击确定后课程将被创建且多数信息无法再次更改。</p>
								<p>第三步（可选），完善您的课程详细信息，如果您还拿不定注意，请将不确定项设为TBA，首先，将您要作为封面的三张图片放入上传框中,之后点击上传</p>
								<div class="image-box-body"><img src="images/step2.PNG" width="65%"><img src="images/photo.PNG" width="65%"></div>
								<p>同样，将所需课件放在对应的上传框中后点击上传，完成后填写其他信息，确认无误点击完成。您还可以稍后在“已发布的课程中”修改这些信息。</p>
							</div>

							<div id="header-6">
								<h2 class="page-header">导师 - 修改课程</h2>
								<p>第一步，在个人信息中选择已发布的课程，在列表中找到您需要修改的课程并点击查看详细。</p>
								<div class="image-box-body"><img src="images/edit_course_1.png" width="65%"></div>
								<p>第二步，在课程详情页面中，点击编辑。</p>
								<div class="image-box-body"><img src="images/edit_course_2.png" width="65%">
								<p>第三步，在课程信息编辑页面中，更改您需要更改的信息。可更改的信息有：课程价格，封面图片，开课日期，开课时间，课程时长，开课地点，课程简介，课程附件以及附件状态。注意：您不可以更改已结束的课程信息。</p>
								<div class="image-box-body"><img src="images/edit_course_3_1.png" width="65%"></div>
								<div class="image-box-body"><img src="images/edit_course_3_2.png" width="65%"></div>
								<p>第四步，在编辑完成后并确认信息无误后，点击保存。注意：一旦确认保存以后，我们将给所有加入此课程的学生发送邮件通知更改，因此，在确认保存以后，您将在一段时间内无法再次编辑课程，请检查所有信息无误后再确认保存。若您希望放弃这次编辑，请点击取消，您的所有课程信息都不会发生变动。</p>
								<div class="image-box-body"><img src="images/edit_course_4_1.png" width="65%"></div>
								<div class="image-box-body"><img src="images/edit_course_4_2.png" width="65%"></div>
							</div>

							<div id="header-7">
								<h2 class="page-header">导师 - 登记学生名单</h2>
								<p>第一步，在个人信息中选择已发布的课程，在列表中找到您需要修改的课程并点击查看详细。</p>
								<div class="image-box-body"><img src="images/edit_course_1.png" width="65%">
								</div>
								<p>第二步，在课程详情页面中，点击查看学生。</p>
								<div class="image-box-body"><img src="images/student_1.png" width="65%">
								</div>
								<p>第三步，在学生列表页面中，点击开课按钮，并根据学生出勤情况来勾选表格中的学生名字。注意：单次开课的点名只能进行一次，我们建议您在每次下课前进行登记。确认无误后，点击保存。若您想取消这次点名，点击取消。</p>
								<div class="image-box-body"><img src="images/student_2_1.png" width="65%">
								</div>
								<div class="image-box-body"><img src="images/student_2_2.png" width="65%">
								</div>
							</div>

							<div id="header-8">
								<h2 class="page-header">团队 - 发布课程</h2>
								<p>团队发布课程的步骤与导师发布课程的步骤相同<a href="#header-5">(导师-发布课程)</a>。需要注意的是，在填写课程基本信息页面中，您可选择主讲该门课的讲师，在选中讲师后，系统将会自动显示该讲师的联系方式。再课程发布后，系统将会发送邮件通知选中的讲师，若您未在列表中找到您需要的讲师，请联系管理员进行确认。</p>
								<div class="image-box-body"><img src="images/release_course_team.png" width="65%">
								</div>
							</div>
							
							<div id="header-9">
								<h2 class="page-header">BUG - 反馈</h2>
								<p>如果您在使用过程中发生了漏洞，我们向您表示道歉。由于网站尚在测试阶段，我们并无法保证系统的绝对安全稳定。请尽快<a href="about.html">联系我们</a>，我们欢迎您的bug举报.</p>
								
								</div>
							</div>

							

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