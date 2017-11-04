<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<sx:head parseContent="false" />
<!-- 用于简化路径，通过网址设定base，之后页面自动跟进path -->
<!--<base href="index.html"> -->
<title>Ututor-约克华人辅导平台</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.4.3.js"></script>

<link rel="shortcut icon" href="../images/favicon.ico">

<!-- Bootstrap core CSS -->
<link href="../bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Font Awesome CSS -->
<link href="../fonts/font-awesome/css/font-awesome.css" rel="stylesheet">

<!-- Fontello CSS -->
<link href="../fonts/fontello/css/fontello.css" rel="stylesheet">

<!-- Plugins -->
<link href="../plugins/magnific-popup/magnific-popup.css"
	rel="stylesheet">
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
<script type="text/javascript">
		function func1(){
			$("#updateContainer").find("img").each(function(index, element) {
				var bili = 0.618;
				var width = $(element).parent().parent().width();
				$(element).css("height", width * bili);
			});
			$("#recommendContainer").find("img").each(function(index, element) {
				var bili = 0.618;
				var width = $(element).parent().width();
				$(element).css("height", width * bili);
			});
		}
		function func2(){
			setTimeout("func1()",1000);
		}
		</script>


</head>

<body class="front" onresize="func2()">
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
		<%@include file="../common/header-top.jsp"%>
		<!-- header-top end -->

		<!-- header start (remove fixed class from header in order to disable fixed navigation mode) -->
		<!-- ================ -->
		<%@include file="../common/header-fixed.jsp"%>
		<!-- header end -->




		<!-- page-intro start-->
		<div class="page-intro">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><i class="fa fa-home pr-10"></i><a href="../index.jsp">Home</a></li>
							<li class="active">${classDetail.code}</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!-- page-intro end -->

		<!-- main-container start -->
		<!-- ================ -->
		<section class="main-container">

			<div class="container">
				<div class="row">

					<!-- main start -->
					<!-- ================ -->
					<div class="main col-md-12">

						<!-- page-title start -->
						<!-- ================ -->
						<h1 class="page-title margin-top-clear">${classDetail.code} ${classDetail.title}</h1>
						<!-- page-title end -->

						<div class="row">
							<div class="col-md-4">
								<!-- Nav tabs -->
								<!--ul class="nav nav-pills white space-top" role="tablist">
										<li class="active"><a href="#product-images" role="tab" data-toggle="tab" title="images"><i class="fa fa-camera pr-5"></i> Photo</a></li>
									</ul-->

								<!-- Tab panes start-->
								<div class="tab-content clear-style">
									<div class="tab-pane active" id="product-images">
										<div id="updateContainer"
											class="owl-carousel content-slider-with-controls-bottom">
											<div class="overlay-container">
												<img
													src="${pageContext.request.contextPath}/${classDetail.img_src}"
													width="100%" alt=""> <a
													href="${pageContext.request.contextPath}/${classDetail.img_src}"
													class="popup-img overlay"><i class="fa fa-search-plus"></i></a>
											</div>
											<div class="overlay-container">
												<img src="${pageContext.request.contextPath}/${team.image}"
													width="100%" alt=""> <a
													href="${pageContext.request.contextPath}/${team.image}"
													class="popup-img overlay"><i class="fa fa-search-plus"></i></a>
											</div>
											<div class="overlay-container">
												<img src="${pageContext.request.contextPath}/${tutor.image}"
													width="100%" alt=""> <a
													href="${pageContext.request.contextPath}/${tutor.image}"
													class="popup-img overlay"><i class="fa fa-search-plus"></i></a>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="product-video">
										<div class="embed-responsive embed-responsive-16by9"></div>
									</div>
								</div>
								<!-- Tab panes end-->
								<hr>
								<span class="price"> $ ${classDetail.n_price}</span>
								<div class="elements-list pull-right clearfix"></div>
								<div class="clearfix"></div>
								<hr>
								<div class="row">

									<div class="col-md-12">
										<s:action namespace="/action" executeResult="true" name="checkclass">
											<s:param name="class_id" value="#classDetail.class_id"/>
										</s:action>
									</div>

								</div>
							</div>

							<!-- product side start -->
							<aside class="col-md-8">
								<div class="sidebar">
									<div class="side product-item vertical-divider-left">
										<div class="tabs-style-2">
											<!-- Nav tabs -->
											<ul class="nav nav-tabs" role="tablist">
												<li class="active"><a href="#h2tab1" role="tab"
													data-toggle="tab"><i class="fa fa-file-text-o pr-5"></i>课程描述</a></li>
												<li><a href="#h2tab2" role="tab" data-toggle="tab"><i
														class="fa fa-files-o pr-5"></i>详细信息</a></li>
												<li><a href="#h2tab3" role="tab" data-toggle="tab"><i
														class="fa fa-star pr-5"></i>(${numberOfAssessment})
														Reviews</a></li>
											</ul>
											<!-- Tab panes -->
											<div
												class="tab-content padding-top-clear padding-bottom-clear">
												<div class="tab-pane fade in active" id="h2tab1">
													${classDetail.description}</div>
												<div class="tab-pane fade" id="h2tab2">
													<h4 class="space-top">详细信息</h4>
													<hr>
													<dl class="dl-horizontal">
														<dt>发布者</dt>
														<dd>${team.nickname}</dd>
														<dt>讲师</dt>
														<dd>${tutor.nickname}</dd>
														<dt>课程人数</dt>
														<dd id="member">
															<span class="current-member">${classDetail.current_seat}</span>&nbsp;/&nbsp;<span
																class="max-member">${classDetail.total_seat}</span>
														</dd>
														<dt>课程状态</dt>
														<dd id="status">${classDetail.status}</dd>
														<dt>课程类型</dt>
														<dd>
															<c:if test="${classDetail.type==1}">单次</c:if>
															<c:if test="${classDetail.type!=1}">Package</c:if>
														</dd>

														<s:iterator value="#request.lessons" id="lesson">
															<hr>
															<c:if test="${classDetail.type!=1}">
																<h4>第&nbsp${lesson.lesson_seq}&nbsp次课程</h4>
															</c:if>
															<br>
															<dt>开课时间</dt>
															<dd>
																<c:choose>
																	<c:when test="${lesson.status.equals('not decided')}">待定
															</c:when>
																	<c:otherwise>${lesson.time_text}
								  							</c:otherwise>
																</c:choose>
															</dd>
															<dt>课程时长</dt>
															<dd><c:if test="${lesson.duration!=0}">${lesson.duration}min</c:if><c:if test="${lesson.duration==0}">待定</c:if></dd>
															<dt>开课地点</dt>
															<dd><c:if test="${lesson.place==null||lesson.place==''}">待定</c:if>${lesson.place}</dd>
															<dt>内容介绍</dt>
															<dd><c:if test="${lesson.description==null||lesson.description==''}">暂无</c:if>${lesson.description}</dd>
															  <dt>附件</dt>
															  <dd>${lesson.fileAccess}</dd>
															  <s:action name="filesearch" executeResult="true"
																		namespace="/course">
																<s:param name="lesson_id" value="#lesson.lesson_id"/>
															</s:action>
														</s:iterator>
													</dl>
													<hr>
												</div>
												<div class="tab-pane fade" id="h2tab3">
													<!-- comments start -->
													<div class="comments margin-clear space-top">
														<!-- comment start -->
														<c:forEach items="${AssessmentList}" var="assessment">
															<div class="comment clearfix" style="margin-bottom: 30px">
																<div class="comment-avatar"
																	style="word-break: break-all; text-align: center; margin: 0 auto">
																	<img
																		src="${pageContext.request.contextPath}/${assessment.rater_img}"
																		width="64px" height="64px" style="margin: 0 auto"
																		alt="avatar"> ${assessment.rater_name}
																</div>
																<div class="comment-content">
																	<h3>${assessment.title}</h3>
																	<div class="comment-meta">
																		<c:if test="${assessment.star>=1}">
																			<i class="fa fa-star text-default"></i>
																		</c:if>
																		<c:if test="${assessment.star<1}">
																			<i class="fa fa-star"></i>
																		</c:if>
																		<c:if test="${assessment.star>=2}">
																			<i class="fa fa-star text-default"></i>
																		</c:if>
																		<c:if test="${assessment.star<2}">
																			<i class="fa fa-star"></i>
																		</c:if>
																		<c:if test="${assessment.star>=3}">
																			<i class="fa fa-star text-default"></i>
																		</c:if>
																		<c:if test="${assessment.star<3}">
																			<i class="fa fa-star"></i>
																		</c:if>
																		<c:if test="${assessment.star>=4}">
																			<i class="fa fa-star text-default"></i>
																		</c:if>
																		<c:if test="${assessment.star<4}">
																			<i class="fa fa-star"></i>
																		</c:if>
																		<c:if test="${assessment.star>=5}">
																			<i class="fa fa-star text-default"></i>
																		</c:if>
																		<c:if test="${assessment.star<5}">
																			<i class="fa fa-star"></i>
																		</c:if>
																		| ${assessment.time}
																	</div>
																	<div class="comment-body clearfix">
																		<p>${assessment.content}</p>
																	</div>
																</div>

															</div>
														</c:forEach>
														<!-- comment end -->

													</div>
													<!-- comments end -->


												</div>
											</div>
										</div>
									</div>
								</div>
							</aside>
							<!-- product side end -->
						</div>

					</div>
					<!-- main end -->

				</div>
			</div>
		</section>
		<!-- main-container end -->



		<!-- section start -->
		<!-- ================ -->
		<div class="section clearfix">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2>相关课程</h2>
						<div class="separator-2"></div>
						<p>您可能也对以下课程感兴趣</p>
						<s:action name="recommendcourse" executeResult="true" namespace="/course">
							<s:param name="mainCode" value="#request.classDetail.code"/>
							<s:param name="class_id" value="#request.classDetail.class_id"/>
						</s:action>
					</div>
				</div>
			</div>
		</div>
		<!-- main-container end -->

		<%@include file="../common/footer.jsp"%>
		<!-- footer end -->

	</div>
	<!-- page-wrapper end -->

	<!-- JavaScript files placed at the end of the document so the pages load faster
		================================================== -->
	<!-- Jquery and Bootstap core js files -->
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



	<script type="text/javascript" src="../js/course-list.js"></script>
	<script type="text/javascript">
			$(function(){if($(document).width() > 991){
				$(".main").css("min-height",600);
				if($(".left-side").height() < $(".main").height())
					{
						$(".left-side").css("height",$(".main").height());
					}
				}})
			
			$('#upload_info_m').ssi_uploader({url:'#',maxFileSize:15,allowed:[]);
		</script>

	<script type="text/javascript">
		$("#updateContainer").find("img").each(function(index, element) {
			var bili = 0.618;
			var width = $(element).parent().parent().width();
			$(element).css("height", width * bili);
		});
		$("#recommendContainer").find("img").each(function(index, element) {
			var bili = 0.618;
			var width = $(element).parent().width();
			$(element).css("height", width * bili);
		});
</script>

</body>
</html>