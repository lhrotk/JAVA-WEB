<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html lang="zh-CN">

<head>
<!-- 用于简化路径，通过网址设定base，之后页面自动跟进path -->
<!--<base href="index.jsp"> -->
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
		<script type="text/javascript">
		$(function(){
			$(".banner li a").each(function(){
				if($(this).text()!="查看更多"){
					var e = $(this).text().substring(0,4);
					var n = $(this).text().substring(5,9);
					$(this).attr('href',"${pageContext.request.contextPath}/course/course_list.jsp?course_code="+e+n);
				}
			});
		});
		</script>
		
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



		<!-- banner start -->
			<!-- ================ -->
			<div class="banner">

				<!-- slideshow start -->
				<!-- ================ -->
				<div class="slideshow white-bg">
					
					<!-- slider revolution start -->
					<!-- ================ -->
					<div class="slider-banner-container">
						<div class="slider-banner-2 bullets-with-bg">
							<ul>
								<!-- slide 1 start -->
								<li data-transition="fade" data-slotamount="7" data-masterspeed="9999999" data-saveperformance="on" data-title="搜索课程" class="dark-translucent-bg">
								
								<!-- main image -->
								<img src="images/bg_slider.JPG"  alt="slidebg1" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">

								<!-- LAYER NR. 1 -->
								<div class="tp-caption very_large_text sfl tp-resizeme"
									data-x="left"
									data-y="70" 
									data-speed="600"
									data-start="0"
									data-end="9999999"
									data-endspeed="600"
									
									>开始您的学习之旅
								</div>

								<!-- LAYER NR. 2 -->
								<div class="tp-caption small_thin_white sfr text-center tp-resizeme hidden-xs"
									data-x="center"
									data-y="150" 
									data-speed="600"
									data-start="0"
									data-end="9999999"
									data-endspeed="600">我们的课程由最专业的辅导团队提供 <br>  请在下方搜索栏中输入您需要的课程代号。<br>Please enter your course code inside the search box.
								</div>

								<!-- LAYER NR. 3 -->
								<div class="tp-caption sfl col-lg-5 col-md-5 col-sm-5"
									data-x="center"
									data-y="center" 
									data-speed="600"
									data-start="0"
									data-end="9999999"
									data-endspeed="600">
									<form role="search" id="form" class="search-box" action="${pageContext.request.contextPath}/course/course_list.jsp">
													<div class="form-group has-feedback">
														<input type="search" class="form-control" id="search-bar" name="course_code" placeholder="Enter a course code.     ie: ECON1000" oninput="OnInput (event)" onpropertychange="OnPropChanged (event)" maxlength="8">
														<i class="fa fa-search form-control-feedback"></i>	
													</div>
													
									</form>
								</div>
								
								<div class="tp-caption sfl"
									data-x="center"
									data-y="330" 
									data-speed="600"
									data-start="0"
									data-end="9999999"
									data-endspeed="600">
									<button type="submit" onclick="$('#form').submit()" class="btn btn-group btn-info btn-sm" form="search-bar"><b>搜索</b></button>
									&nbsp;&nbsp;
									<button type="submit" class="btn btn-group btn-light-gray btn-sm" onclick="location='${pageContext.request.contextPath}/course/course_list.jsp'">进阶搜索</button>
								</div>
									
							
								
								<div class="col-lg-6">&nbsp;</div>

								</li>
								<!-- slide 1 end -->

								<!-- slide 2 start -->
								<li data-transition="fade" data-slotamount="7" data-masterspeed="9999999" data-saveperformance="on" data-title="搜索课程" class="dark-translucent-bg">
								
								<!-- main image -->
								<img src="images/bg_slider_2.JPG"  alt="slidebg1" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">

								<!-- LAYER NR. 1 -->
								<div class="tp-caption very_large_text sfl tp-resizeme"
									data-x="left"
									data-y="70" 
									data-speed="600"
									data-start="0"
									data-end="9999999"
									data-endspeed="600"
									
									>热门课程
								</div>

								<!-- LAYER NR. 2 -->
								<div class="tp-caption small_thin_white sfr text-center tp-resizeme"
									data-x="100"
									data-y="170" 
									data-speed="600"
									data-start="0"
									data-end="9999999"
									data-endspeed="600">
									<ul class="list-unstyled">
										<li><a href="#">ADMS 1000</a></li>
										<li><a href="#">ADMS 1010</a></li>
										<li><a href="#">ADMS 1500</a></li>
										<li><a href="#">ADMS 2200</a></li>
										<li><a href="#">ADMS 2400</a></li>
										<li><a href="#">ADMS 2320</a></li>
										<li><a href="#">ADMS 3330</a></li>
										<li><a href="#">ADMS 3351</a></li>
									</ul>
								</div>

								<!-- LAYER NR. 3 -->
								<div class="tp-caption small_thin_white sfr text-center tp-resizeme"
									data-x="350"
									data-y="170" 
									data-speed="600"
									data-start="0"
									data-end="9999999"
									data-endspeed="600">
									<ul class="list-unstyled">
										<li><a href="#">ECON 1000</a></li>
										<li><a href="#">ECON 1010</a></li>
										<li><a href="#">ECON 1530</a></li>
										<li><a href="#">ECON 1540</a></li>
										<li><a href="#">ECON 2300</a></li>
										<li><a href="#">ECON 2350</a></li>
										<li><a href="#">ECON 2400</a></li>
										<li><a href="#">ECON 2450</a></li>
									</ul>
								</div>
								
								<div class="tp-caption small_thin_white sfr text-center tp-resizeme"
									data-x="580"
									data-y="170" 
									data-speed="600"
									data-start="0"
									data-end="9999999"
									data-endspeed="600">
									<ul class="list-unstyled">
										<li><a href="#">NATS 1740</a></li>
										<li><a href="#">NATS 1780</a></li>
										<li><a href="#">NATS 1870</a></li>
										<li> &nbsp;</li>
										<li><a href="#">MATH 1510</a></li>
										<li><a href="#">MATH 1520</a></li>
										<li><a href="#">MATH 1581</a></li>
										<li><a href="#">SOSC 1009</a></li>
									</ul>
								</div>
								
								<div class="tp-caption small_thin_white sfr text-center tp-resizeme"
									data-x="800"
									data-y="170" 
									data-speed="600"
									data-start="0"
									data-end="9999999"
									data-endspeed="600">
									<ul class="list-unstyled">
										<li><a href="#">ITEC 1000</a></li>
										<li><a href="#">ITEC 1010</a></li>
										<li> &nbsp;</li>
										<li> &nbsp;</li>
										<li> &nbsp;</li>
										<li> &nbsp;</li>
										<li> &nbsp;</li>
										<li><a href="${pageContext.request.contextPath}/course/course_list.jsp">查看更多</a></li>
										
									</ul>
								</div>
									
							
								
								<div class="col-lg-6">&nbsp;</div>

								</li>
								<!-- slide 2 end -->

							</ul>
						</div>
					</div>
					<!-- slider revolution end -->

				</div>
				<!-- slideshow end -->

			</div>
			<!-- banner end -->
		
			<!-- page-top start-->
			<!-- ================ -->
					<!-- page-top start-->
			<!-- ================ -->
			<div class="page-top">
				<div class="container">
					<div class="row">
					<c:if test="${sessionScope.userEmail==null}">
						<div class="col-md-8 col-md-offset-2">
							<div class="call-to-action">
								<h1 class="title">快速课程发布平台 + Moodle</h1>
								
								<a class="btn btn-white more" href="${pageContext.request.contextPath}/action/sign_up.jsp">
								立即注册 <i class="pl-10 icon icon-user-add"></i>
								</a>

								
								or
								<a href="${pageContext.request.contextPath}/action/login.jsp" class="btn btn-default">登录<i class="pl-10 icon icon-user"></i></a>
							</div>
							<div class="separator"></div>
						</div>
						</c:if>
						
						<div class="col-md-12">
							<div class="row grid-space-20">
								<div class="col-sm-6">
									<div class="box-style-3 right object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="0">
										<div class="icon-container default-bg">
											<i class="fa  fa-search"></i>
										</div>
										<div class="body">
											<h2>学生 - 搜索课程</h2>
											<p>筛选查找适合您的补习section.</p>
											<a href="instructions.jsp#header-1" class="link"><span>Read More</span></a>
										</div>
									</div>
									<div class="box-style-3 right object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="200">
										<div class="icon-container default-bg">
											<i class="fa  fa-book"></i>
										</div>
										<div class="body">
											<h2>学生 - Moodle资料</h2>
											<p>随时随地获取导师发布的资料，在导师上传资料时获得邮件提醒.</p>
											<a href="instructions.jsp#header-3" class="link"><span>Read More</span></a>
										</div>
									</div>
									<div class="box-style-3 right object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="400">
										<div class="icon-container default-bg">
											<i class="fa fa-check"></i>
										</div>
										<div class="body">
											<h2>学生 - 评价导师</h2>
											<p>吐槽不喜欢的导师，为喜欢的导师打call，支持匿名.</p>
											<a href="instructions.jsp#header-4" class="link"><span>Read More</span></a>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="box-style-3 object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="0">
										<div class="icon-container default-bg">
											<i class="fa fa-mortar-board"></i>
										</div>
										<div class="body">
											<h2>导师 - 发布课程</h2>
											<p>根据您的需要，私人定制您的课程安排.</p>
											<a href="instructions.jsp#header-5" class="link"><span>Read More</span></a>
										</div>
									</div>
									<div class="box-style-3 object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="200">
										<div class="icon-container default-bg">
											<i class="fa fa-laptop"></i>
										</div>
										<div class="body">
											<h2>导师 - 上传资料</h2>
											<p>支持文档分级，只为信赖的学生开放.</p>
											<a href="instructions.jsp#header-6" class="link"><span>Read More</span></a>
										</div>
									</div>
									<div class="box-style-3 object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="400">
										<div class="icon-container default-bg">
											<i class="fa fa-sitemap"></i>
										</div>
										<div class="body">
											<h2>导师 - 记录出勤</h2>
											<p>快速登记学生到达情况，免去纸笔记录微信号的烦恼.</p>
											<a href="instructions.jsp#header-7" class="link"><span>Read More</span></a>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- page-top end -->
			
			
			<!-- main-container start -->
			<!-- ================ -->
			<section class="main-container parallax light-translucent-bg parallax-bg">

				<!-- main start -->
				<!-- ================ -->
				<div class="main">
					
				</div>
				<!-- main end -->

			</section>
			<!-- main-container end -->
			
			
			<!-- section start -->
			<!-- ================ -->
			<div class="section clearfix object-non-visible" data-animation-effect="fadeInUpSmall" data-effect-delay="300">

				<div class="container">
					<div class="row">
						<div class="col-md-12">

							<h2>认证团队</h2>
							<div class="separator-2"></div>

							<!-- isotope filters start -->
							<div class="filters margin-bottom-clear">
								<ul class="nav nav-pills">
									<li class="active"><a href="#" data-filter="*">All</a></li>
									<li><a href="#" data-filter=".adms">ADMS</a></li>
									<li><a href="#" data-filter=".econ">ECON</a></li>
									<li><a href="#" data-filter=".nats">NATS</a></li>
								</ul>
							</div>
							<!-- isotope filters end -->

							<!-- portfolio items start -->
							<div class="isotope-container row grid-space-20">
								<div class="col-sm-4 isotope-item adms econ nats margin-bottom-clear">
									<div class="box-style-1 gray-bg">
										<div class="overlay-container">
											<img src="../GPAplus/img/logo_big.jpg" width="90%" alt="">
											<a href="../GPAplus/gpaplus.html" class="overlay small">
												<i class="fa fa-plus"></i>
												<span>查看GPA+官网</span>
											</a>
										</div>
										<h3><a href="portfolio-item.jsp">YUGPA+</a></h3>
										<p>做教育我们是认真的.</p>
										<a href="/ututor/course/course_list.jsp?team=GPAplus" class="btn btn-default">查看课程</a>
									</div>
								</div>
								<div class="col-sm-4 isotope-item margin-bottom-clear">
									<div class="box-style-1 gray-bg">
										<div class="overlay-container">
											<img src="images/1_Primary_logo_on_transparent_512.png" width="85%" alt="">
										</div>
										<h3><a href="about.jsp.jsp">加入我们</a></h3>
										<p>如果您也拥有一群热爱讲课的小伙伴，我们邀请您的加入.</p>
										<a href="about.jsp" class="btn btn-default">联系我们！</a>
									</div>
								
							</div>
							<!-- portfolio items end -->

						</div>
					</div>
				</div>
				</div>
			</div>
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