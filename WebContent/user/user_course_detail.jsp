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

		<div class="page-intro">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<ol class="breadcrumb">
								<li><i class="fa fa-home pr-10"></i><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
								<li><a href="${pageContext.request.contextPath }/user/listcourse.action?pageNo=1">已加入的课程</a></li>
								<li class="active">课程详情</li>
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
											<li><a href="user_info.jsp">我的信息</a></li>
											<li class="active"><a href="${pageContext.request.contextPath }/user/listcourse.action?pageNo=1">已加入的课程</a></li>
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
						<div class="main col-md-9" data-animation-effect="fadeInUpSmall" style="min-height:650px" data-effect-delay="200">

							<!-- page-title start -->
							<h2 class="title">课程详情</h2>							
							<h4 class="title">Detailed course information
							</h4>
							<s:action name="checkauth" namespace="/team" executeResult="true">
								<s:param name="class_id" value="#parameters.class_id"/>
							</s:action>
							</br>
							<hr>
							
							<!-- row start -->
							<div class="row">
							<!-- general info start-->
							<div class="basic-info col-md-6">
								<dl id="info-table" class="dl-horizontal">							  
								  <dt>课程标题：</dt>
								  <dd id="title">${classDetail.title}</dd>

								  <dt>课程代号：</dt>
								  <dd id="course-id">${classDetail.code}</dd>

								  <dt>发布者：</dt>
								  <dd id="publisher"><a herf="team_example.html">${team.nickname}</a></dd>

								  <dt>讲师：</dt>
								  <dd id="instructor">${tutor.nickname}</dd>

								  <dt>联系方式：</dt>
								  <dd id="instructor-contact">
									<i class="fa fa-wechat pr-10"></i>${tutor.wechat}
									<br>
									<i class="fa fa-envelope-o pr-10"></i>${tutor.email}
									<br>

									<i class="fa fa-phone pr-10"></i>${tutor.phone}
									<br>
								  </dd>

								  <dt>价格：</dt>
								  <!-- 如果有旧的价格则显示 -->
								  <dd id="price"><c:if test="${classDetail.o_price!= classDetail.n_price}"><del>$ ${classDetail.o_price}</del> </c:if>&nbsp $ ${classDetail.n_price}</dd>

								  <dt>类型：</dt>
								  <c:if test="${classDetail.type==1}">
								  <dd>							  	
										<input type="radio" name="type-once" id="type-once" value="type-once" checked disabled>
										单次

										<input type="radio" name="type-pack" id="type-pack" value="type-pack" disabled>
										Package								
								  </dd>
								  </c:if>
								  <c:if test="${classDetail.type!=1}">
								  <dd>							  	
										<input type="radio" name="type-once" id="type-once" value="type-once" disabled>
										单次

										<input type="radio" name="type-pack" id="type-pack" value="type-pack" checked disabled>
										Package								
								  </dd>
								  
								  
								  </c:if>
								  <div class="pack-info">
									  <dt>开课次数：</dt>
									  <dd id="times"><span id="pack-current">${classDetail.n_done}</span>&nbsp;/&nbsp;<span id="pack-total">${classDetail.type}</span>&nbsp;次</dd>
									  <dt>状态：</dt>
								  	  <dd id="status">${classDetail.status}</dd>
								  	  <dt>课程简介：</dt>
								  	  <dd id="status"><c:if test="${classDetail.description==null||classDetail.description==''}">暂无</c:if>${classDetail.description}</dd>
								  
								  </div>
								  
								  </dl>
							</div>
						    <!-- general info end -->
							
							<!-- image slider start -->  
							<div class="image-slider col-md-5">
							  		<div class="tab-pane active" id="pill-1">
									<div id="updateContainer" class="owl-carousel content-slider-with-controls">
										<div class="overlay-container">
											<img id="image1" src="${pageContext.request.contextPath}/${tutor.image}" alt="" width="100%">
											<a href="${pageContext.request.contextPath}/${tutor.image}" class="popup-img overlay" title="image title"><i class="fa fa-search-plus"></i></a>
										</div>
										<div class="overlay-container">
											<img id="image2" src="${pageContext.request.contextPath}/${classDetail.img_src}" alt="" width="100%">
											<a href="${pageContext.request.contextPath}/${classDetail.img_src}" class="popup-img overlay" title="image title"><i class="fa fa-search-plus"></i></a>
										</div>
										<div class="overlay-container">
											<img id="image3" src="${pageContext.request.contextPath}/${team.image}" alt="" width="100%">
											<a href="${pageContext.request.contextPath}/${team.image}" class="popup-img overlay" title="image title"><i class="fa fa-search-plus"></i></a>
										</div>
									</div>
								</div>

							 </div>
							 <!-- image slider end -->
							</div>
							 <!-- row end -->    
							<s:iterator value="#request.lessons" id="lesson">
							<!-- more info start --> 	
							<div class="row">
							<hr>
							<c:if test="${classDetail.type!=1}">
							<h4>第&nbsp${lesson.lesson_seq}&nbsp次课程</h4>
							</c:if>  
							</br>
							<div class="more-info col-md-9">
							
							  <dl id="info-table2" class="dl-horizontal">
								  <dt>开课时间：</dt>
								  <dd id="date"><span class="start-time">
								  <c:choose>
								  <c:when test="${lesson.status.equals('not decided')}">待定
								  </c:when>
								  <c:otherwise>${lesson.time_text}
								  </c:otherwise>
								  </c:choose>
								  </span></dd>

								  <dt>人数：</dt>
								  <dd id="member"><span class="current-member">${classDetail.total_seat-classDetail.remain_seat}</span>&nbsp;/&nbsp;<span class="max-member">${classDetail.total_seat}</span></dd>

								  <dt>地点：</dt>
								  <dd id="location" class="address">
								 ${lesson.place}
								 <c:if test="${lesson.place==null||lesson.place.equals('')}">待定</c:if>
								  </dd>
								  
								  <dt>时长：</dt>
								  <dd id="length" class="address">
								  <c:if test="${lesson.duration!=0}">${lesson.duration} min</c:if>
								 
								 <c:if test="${lesson.duration==0}">待定</c:if>
								  </dd>
							  
							  
							  
							  
							  
								  <dt>简介：</dt>
								  <dd id="description"><p>${lesson.description}<c:if test="${lesson.description==null||lesson.description.equals('')}">暂无</c:if></p></dd>

								  <dt>状态：</dt>
								  <dd id="status">
								  <c:choose>
								  <c:when test="${classDetail.status.equals('已取消')}">已取消
								  </c:when>
								  <c:when test="${lesson.lesson_seq<=classDetail.n_done}">已结束
								  </c:when>
								  <c:otherwise>未开课
								  </c:otherwise>
								  </c:choose>
								  </dd>
								 </dl>
							</div>
							<!-- more info end -->
							
								  
								  
							<!-- attachment start -->
							<div class="attachment col-md-9"> 
								  <dl id="attachment" class="dl-horizontal">
								  <dt>附件：</dt>
								  <dd>${lesson.fileAccess}</dd>
								  <s:action name="filesearch" executeResult="true"
													namespace="/course">
										<s:param name="lesson_id" value="#lesson.lesson_id"/>
									</s:action>
								  

								  </dl>
							  </div>
							  </div>
							  </s:iterator>
							
							
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
		$("#updateContainer").find("img").each(function(index, element) {
			var bili = 0.618;
			var width = $(element).parent().parent().width();
			$(element).css("height", width * bili);
		});
</script>
</body>
</html>