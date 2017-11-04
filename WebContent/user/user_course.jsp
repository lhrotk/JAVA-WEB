<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<!-- 用于简化路径，通过网址设定base，之后页面自动跟进path -->
<!--<base href="index.html"> -->
<title>Ututor-约克华人辅导平台</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />


<link rel="shortcut icon" href="../images/favicon.ico">

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-1.4.3.js"></script>

	<!-- Bootstrap core CSS -->
	<link href="../bootstrap/css/bootstrap.css" rel="stylesheet" />

	<!-- Font Awesome CSS -->
<link href="../fonts/font-awesome/css/font-awesome.css" rel="stylesheet" />

<!-- Fontello CSS -->
<link href="../fonts/fontello/css/fontello.css" rel="stylesheet" />

<!-- Plugins -->
<link href="../plugins/magnific-popup/magnific-popup.css"
	rel="stylesheet" />
<link href="../css/animations.css" rel="stylesheet">
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
							<li><i class="fa fa-home pr-10"></i><a href="../index.jsp">首页</a></li>
							<li class="active">已加入的课程</li>
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
							<li class="active"><a
								href="${pageContext.request.contextPath }/user/listcourse.action?pageNo=1">已加入的课程</a></li>
							<c:if
								test="${sessionScope.userIdentity.equals('team')||sessionScope.userIdentity.equals('tutor')}">
								<li><a
									href="${pageContext.request.contextPath }/team/postedclasslist.action?pageNo=1">已发布的课程</a></li>
								<li><a
									href="${pageContext.request.contextPath }/team/course_release.jsp">发布新课</a></li>
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
				<div class="main col-md-9" data-animation-effect="fadeInUpSmall"
					data-effect-delay="200" style="min-height: 650px">

					<!-- page-title start -->
					<h2>我加入的课程</h2>
					<hr>
						<div class="table-responsive" style="height: 300px;">
							<table class="table table-bordered enrrolled-table">
								<colgroup>
									<col style="width: 15%">
										<col style="width: 30%">
											<col style="width: 15%">
												<col style="width: 15%">
													<col style="width: 10%">
														<col style="width: 15%">
								</colgroup>

								<thead>
									<tr>
										<th>#课程代号</th>
										<th>课程标题</th>
										<th>时长</th>
										<th>开课时间</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody style="font-size: 12px;">
									<c:forEach items="${listCourse}" var="course">
										<tr>
											<td>${course.code}</td>
											<td class="t-title">${course.title}</td>
											<td>${course.length}</td>
											<td>${course.time}</td>
											<td class="status">${course.status}</td>
											<td>${course.operation}</td>
										</tr>
									</c:forEach>
									<!--
								  	<tr>
										<td>001706170001</td>
										<td class="t-title">测试长度0000000000000000000000000000000000000</td>
										<td>3小时</td>
										<td>2017-05-15&nbsp;&nbsp;18：30</td>
										<td class="status">已评价</td>
										<td>000</td>
									</tr>
									<tr>
										<td>001706170002</td>
										<td class="t-title">ECON考前刷题。。。</td>
										<td>1小时</td>
										<td>2017-05-15&nbsp;&nbsp;18：30</td>
										<td class="status">待评价</td>
										<td></td>
									</tr>
								  <tr>
										<td>001706170003</td>
										<td class="t-title">大牛讲aaaaaaaaaaaaaaaaaaaaaaaaaaaa</td>
										<td>3小时</td>
										<td>2017-05-15&nbsp;&nbsp;18：30</td>
										<td class="status">已取消</td>
										<td></td>
									</tr>
									<tr>
										<td>001706170004</td>
										<td class="t-title">大牛讲aaaaaaaaaaaaaaaaaaaaaaaaaaaa</td>
										<td>1小时</td>
										<td>2017-05-15&nbsp;&nbsp;18：30</td>
										<td class="status">未开课</td>
										<td></td>
									</tr>
									<tr>
										<td>001706170004</td>
										<td class="t-title">大牛讲aaaaaaaaaaaaaaaaaaaaaaaaaaaa</td>
										<td>1小时</td>
										<td>2017-05-15&nbsp;&nbsp;18：30</td>
										<td class="status">未到达</td>
										<td></td>
									</tr>
								 	 <tr>
										<td>001706170005</td>
										<td class="t-title">全年物理1410宝A冲A+！！！</td>
										<td>Package</td>
										<td>2017-05-15&nbsp;&nbsp;18：30</td>
										<td class="status">进行中</td>
										<td></td>
									</tr>
									  -->

								</tbody>




							</table>
						</div>

						<div style="text-align:center;">
						<ul class="pagination">
								<script type="text/javascript">
									var total = ${totalPage};
									var current = ${pageNo};
								</script>
						</ul>
						</div>


						<!-- main end -->
				</div>
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
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/pagination.js"></script>
	
	<script type="text/javascript">
	var XHR=false;
	function CreateXHR(){
		try{
			XHR = new ActiveXObject("msxml2.XMLHTTP");
		}catch(e1){
			try{
				XHR = new ActiveXObject("microsoft.XMLHTTP");
			}catch(e2){
				try{
					XHR = new XMLHttpRequest();
				}catch(e3){
					XHR = false;
				}
			}
		}
	};
	function sendDrop(class_id){
		if(confirm("您确定要退出这节课吗？")){
		CreateXHR();
		if(XHR){
			var uri = "<%=request.getContextPath()%>"+"/user/dropcourse.action?class_id="+class_id;
		    XHR.open("GET", uri, true);
		    XHR.onreadystatechange = resultHandler;
		    XHR.send(null);
		}
		function resultHandler(){
			if(XHR.readyState == 4 && XHR.status == 200){
				alert(XHR.responseText);
				if(XHR.responseText=="您需要先登录"){
					window.location.href = "<%=request.getContextPath()%>"+ "/action/login.jsp";
							return;
						} else {
							location.reload();
							return;
						}
					}
				}
			}
		}
	</script>

</body>
</html>
