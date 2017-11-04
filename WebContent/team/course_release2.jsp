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
	<link href="../fonts/font-awesome/css/font-awesome.css"
		rel="stylesheet" />

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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/post_step2.js"></script>

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
				<!-- ================ -->
				<div class="main col-md-9" style="min-height:650px">

					<h2>发布一门课程(2/3)</h2>
							<hr>
							<h4>填写基本课程信息</h4>
					<small>请注意，所有带<span class="error">*</span>的内容将在发布后无法更改
					</small> <br> <small>请在文档放入后点击upload按钮</small>
						<hr>

							<!-- row start -->
							<!--div class="row">
							<!-- general info start-->
							<form class="form-horizontal col-md-12" id="form" namespace="/team" action="createclass">

								<div class="form-group has-feedback c-title">
									<label for="course_title" class="col-sm-2 control-label">课程标题</label>
									<div class="col-md-8">
										<input type="text" class="form-control" id="course_title" name="newClass.title"
											placeholder="输入您的课程标题" required>
									</div>
									<span class="error">*</span>
								</div>


								<div class="form-group has-feedback has-success">
									<label for="course_id" class="control-label col-sm-2">课程代号</label>
									<div class="col-md-offset-0 col-md-8">
										<input type="text" class="form-control" id="course_id" name="newClass.code"
											placeholder="输入您的课程代号，例：EECS1012" readonly = "readonly" value="${param.course_code}">
									</div>
									<span class="error">*</span>
								</div>

								<div class="form-group has-feedback has-success">
									<label for="course_releaser" class="control-label col-sm-2">发布者</label>
									<div class="col-md-offset-0 col-md-8">
										<c:if test="${sessionScope.userIdentity.equals('team')}">
											<select class="form-control" id="course_releaser" name="launcher_id" readonly = "readonly">
												<option selected="selected" value="${sessionScope.userID}">team
													${sessionScope.name}</option>
											</select>
										</c:if>
										<c:if test="${sessionScope.userIdentity.equals('tutor')}">
											<select class="form-control" id="course_releaser" name="launcher_id">
												<s:action name="teamlist" executeResult="true"
													namespace="/team">

												</s:action>
											</select>
										</c:if>
									</div>
									<span class="error">*</span>
								</div>

								<div class="form-group has-feedback has-success" id="email">
									<label for="course_email" class="control-label col-sm-2">讲师的邮箱</label>
									<div class="col-md-offset-0 col-md-8">
										<c:choose>
											<c:when test="${sessionScope.userIdentity.equals('tutor')}">
												<input type="email" class="form-control" id="this_course_email" name="new_tutor_email"
													placeholder="输入讲师的邮箱" required
													value="${sessionScope.userEmail}" readonly = "readonly"> <i
													class="fa fa-envelope-o form-control-feedback pr-20"></i> </input>
											</c:when>
											<c:when test="${sessionScope.userIdentity.equals('team')}">
												<input type="email" class="form-control" id="course_email"
													placeholder="输入讲师的邮箱" required value="" name="new_tutor_email" readonly = "readonly"> <i
													class="fa fa-envelope-o form-control-feedback pr-20"></i> </input>
											</c:when>
											<c:otherwise>
												<input type="email" class="form-control" id="course_email" name="new_tutor_email"
													placeholder="输入讲师的邮箱" required
													value="${sessionScope.userEmail}" readonly = "readonly"> <i
													class="fa fa-envelope-o form-control-feedback pr-20"></i> </input>
											</c:otherwise>
										</c:choose>
										<span id="code_span" style="color: red"><span>
									</div>
								</div>

								<div class="form-group has-feedback has-success" id="tutor">
									<label for="course_tutor" class="control-label col-sm-2">讲师</label>
									<div class="col-md-offset-0 col-md-8">
										<c:choose>
											<c:when test="${sessionScope.userIdentity.equals('tutor')}">
												<select class="form-control" id="course_tutor"
													placeholder="输入讲师" name="tutor_id"
													readonly = "readonly">
													<option value="${sessionScope.userID}" selected>${sessionScope.name}</option>
												</select>
											</c:when>
											<c:when test="${sessionScope.userIdentity.equals('team')}">
													<s:action name="tutorlist" executeResult="true"
														namespace="/team">

													</s:action>
													<input type="text" class="form-control" id="course_new_tutor" name="new_tutor_name" style="display:none"
													placeholder="输入讲师" ><i id="course_new_tutor_icon" style="display:none"
													class="fa  fa-user form-control-feedback pr-20"></i></input>
													<input type="checkbox" id="new_tutor" name="new_tutor" checked></input>(填写已注册讲师)
											</c:when>
											<c:otherwise>
												<select class="form-control" id="course_tutor"
													placeholder="输入讲师" name="tutor_id"
													readonly = "readonly">
													<option value="${sessionScope.userID}" selected>${sessionScope.name}</option>
												</select>
											</c:otherwise>
										</c:choose>
										
									</div>
								</div>

								<div class="form-group has-feedback has-success" id="wechat">
									<label for="course_wechat" class="control-label col-sm-2">讲师的微信</label>
									<div class="col-md-offset-0 col-md-8">
										<c:choose>
											<c:when test="${sessionScope.userIdentity.equals('tutor')}">
												<input type="text" class="form-control" id="course_wechat" name="new_tutor_wechat"
													value="${sessionScope.userWechat}" placeholder="输入讲师的微信"
													readonly = "readonly"> <i
													class="fa fa-wechat form-control-feedback pr-20"></i> </input>
											</c:when>
											<c:when test="${sessionScope.userIdentity.equals('team')}">
												<input type="text" class="form-control" id="course_wechat" name="new_tutor_wechat"
													placeholder="输入讲师的微信"  readonly = "readonly"> <i
													class="fa fa-wechat form-control-feedback pr-20"></i> </input>
											</c:when>
											<c:otherwise>
												<input type="text" class="form-control" id="course_wechat" name="new_tutor_wechat"
													value="${sessionScope.userWechat}" placeholder="输入讲师的微信"
													readonly = "readonly"> <i
													class="fa fa-wechat form-control-feedback pr-20"></i> </input>
											</c:otherwise>
										</c:choose>
									</div>
								</div>


								<div class="form-group has-feedback has-success" id="phone">
									<label for="course_phone" class="control-label col-sm-2">讲师的手机</label>
									<div class="col-md-offset-0 col-md-8">
										<c:choose>
											<c:when test="${sessionScope.userIdentity.equals('tutor')}">
												<input type="text" class="form-control" id="course_phone" name="new_tutor_phone" 
													value="${sessionScope.userPhone}" placeholder="输入讲师的手机"
													 readonly = "readonly"> <i
													class="fa fa-phone pr-20 form-control-feedback"></i></input>
											</c:when>
											<c:when test="${sessionScope.userIdentity.equals('team')}">
												<input type="text" class="form-control" id="course_phone"
													placeholder="输入讲师的手机" 4 name="new_tutor_phone"  readonly = "readonly">
													<i class="fa fa-phone pr-20 form-control-feedback"></i></input>
											</c:when>
											<c:otherwise>
												<input type="text" class="form-control" id="course_phone"
													value="${sessionScope.userPhone}" placeholder="输入讲师的手机" name="new_tutor_phone" 
													pattern="[0-9]{11}" readonly = "readonly"> <i
													class="fa fa-phone pr-20 form-control-feedback"></i></input>
											</c:otherwise>
										</c:choose>
									</div>
								</div>

								<div class="form-group has-feedback c-price">
									<label for="course_price" class="control-label col-sm-2">价格</label>
									<div class="col-md-offset-0 col-md-8">
										<input type="number" class="form-control" name="price" id="course_price" placeholder="输入课程价格，最大99999，单位CAD" pattern="[0-9]*" required>
										<i class="fa form-control-feedback"></i>
									</div>
								</div>

								<div class="form-group" id="type">
									<label for="course_type" class="control-label col-sm-2">类型</label>
									<div class="col-md-offset-0 col-md-7 radio">
										<input type="radio" id="type-once" 
											onclick="choose_uni();" name="size" checked value="1">
											单次&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
											id="type-package" type="radio" 
											 name="size" value="2"> Package <span
												class="error">*</span>
									</div>

								</div>

								<div class="form-group has-feedback has-success" id="steps">
									<label for="course_number" class="control-label col-sm-2">开课次数</label>
									
									<div class="col-md-offset-0 col-md-8">
									<input class="form-control" type="number" name="type" max="20" id="course_number" value="1" placeholder="最少两节课，最多二十节课" disabled>
									<i class="fa form-control-feedback fa-check"></i></input>
									</div><span class="error">*</span>
								</div>
								
								<div class="form-group has-feedback has-error" id="amount">
									<label for="course_number" class="control-label col-sm-2">课程容量</label>
									
									<div class="col-md-offset-0 col-md-8">
									<input class="form-control" type="number" name="amount" max="50" id="course_amount" placeholder="课程可容纳的最大人数" >
									<i class="fa form-control-feedback fa-times"></i></input>
									</div><span class="error">*</span>
								</div>

							</form>

							<!-- button to control submit -->

							<div class="col-md-4 col-md-offset-0">
								<button class="btn btn-primary btn-sm pull-right" id="submit" disabled onClick="nextStep()">下一步</button>
							</div>
				</div>
				<!-- row end -->
				<hr>
					<!-- more info start -->
			</div>
			<!-- main end -->
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
			
			$('#upload_info_m').ssi_uploader({url:'#',maxFileSize:15,allowed:[]});
			
	</script>
	


</body>
</html>