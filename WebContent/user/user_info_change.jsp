<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
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
		<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/checkinput.js">
	
</script>
		
		

		
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

		<div class="page-intro">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<ol class="breadcrumb">
								<li><i class="fa fa-home pr-10"></i><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
								<li class="active">我的信息</li>
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
									<h3 class="title">&nbsp;&nbsp;欢迎，<span id="user-name">${sessionScope.name}</span></h3>
									<div class="separator"></div>
									<nav>
										<ul class="nav nav-pills nav-stacked">
											<li class="active"><a href="user_info.jsp">我的信息</a></li>
											<li><a href="${pageContext.request.contextPath }/user/listcourse.action?pageNo=1">已加入的课程</a></li>
											<c:if test="${sessionScope.userIdentity.equals('team')||sessionScope.userIdentity.equals('tutor')}">
											<li><a href="${pageContext.request.contextPath }/team/postedclasslist.action?pageNo=1">已发布的课程</a></li>
											<li><a href="${pageContext.request.contextPath }/team/course_release.jsp">发布新课</a></li>
											</c:if>
											<c:if test="${sessionScope.userIdentity.equals('student')}">
											<li><a href="">注册成为讲师</a></li>
											</c:if>
											<li><a href="user_psw_change.jsp">修改密码</a></li>
										</ul>
									</nav>
								</div>
							</div>
						</aside>
						<!-- sidebar end -->

						<!-- main start -->
						<!-- ================ -->
						<div class="main col-md-6" style="min-height:650px">

							<!-- page-title start -->
							<h2>基础信息</h2>
							<form method="post"
									action="${pageContext.request.contextPath }/user/changemessage.action"	id="f2">
							<dl class="dl-horizontal">
								<hr>
								<dt>									
									<p><label class="control-label" for="inputSuccess1">用户名:</label></p>
									
								</dt>
								<dd>
									<input name="newName" id="txtNickName" value="${sessionScope.name}"/>
								</dd>
								<hr>
								<dt>									
									<p><i class="fa fa-envelope pr-10"></i><label class="control-label" for="inputSuccess1">邮箱:</label></p>
									
								</dt>
								<dd>
									<span id="uemail">${sessionScope.userEmail}</span>
									<c:if test="${(sessionScope.userStatus!=null)&&(sessionScope.userStatus==('NO'))}">
										&nbsp&nbsp<a href="${pageContext.request.contextPath}/user/emailVerify.jsp">前去验证</a>
									</c:if>
								</dd>
								<hr>
								
								<dt>									
									<p><i class="fa fa-weixin pr-10"></i><label class="control-label" for="inputSuccess1">微信:</label></p>
									
								</dt>
								<dd>
									<input name="newWechat" id="txtWechat" value="${sessionScope.userWechat}"/>
								</dd>
								<hr>
								<dt>									
									<p><i class="fa  fa-user pr-10"></i><label class="control-label" for="inputSuccess1">性别:</label></p>
									
								</dt>
								<dd>
									<select name="newSex">
									<c:if test="${userSex.equals('male')}">
										<option value="male" selected>male</option>
										<option value="female">female</option>
									</c:if>
									<c:if test="${userSex.equals('female')}">
										<option value="male" >male</option>
										<option value="female" selected>female</option>
									</c:if>
									</select>
								</dd>
								<hr>
								<dt>									
									<p><i class="fa fa-phone pr-10"></i></i><label class="control-label" for="inputSuccess1">电话:</label></p>
									
								</dt>
								<dd>
									<input name="newPhone" id="txtPhone" value="${sessionScope.userPhone}"/>
								</dd>
								<hr>
								<dd>
									<span id="code_span" style="color:red"></span>
									</dd>
									<dd>
									<button type="submit" class="btn btn-danger btn-lg btn-block"
					style="width: 31%; margin: auto; line-height: 10px">提交更改</button>
								</dd>
								</form>
								
								
								

							</dl>
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
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/custom.js"></script>
		
	<script type="text/javascript">
			flag.name=true;
	</script>
</body>
</html>