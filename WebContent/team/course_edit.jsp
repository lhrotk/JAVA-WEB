<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-dojo-tags" prefix="sx"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<sx:head parseContent="false"/>
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
								<li class="active"><a href="${pageContext.request.contextPath }/team/postedclasslist.action?pageNo=1">已发布的课程</a></li>
								<li ><a
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
				<div class="main col-md-9">

					<!-- page-title start -->
					<h2>更改课程信息</h2>
					<hr>
						<h4>完善课程内容</h4>
						<small>您的课程已创建完成，以下内容您可以进行更改</small>
						<hr>
						<form class="form-horizontal col-md-12" id="form" namespace="/team" action="createlesson">
							<!-- general info start-->
							<div class="basic-info">
								<dl id="info-table" class="dl-horizontal">
									<dt>课程标题：</dt>
									<dd id="title">${classDetail.title}</dd>

									<dt>课程代号：</dt>
									<dd id="course-id">${classDetail.code}</dd>

									<dt>发布者：</dt>
									<dd id="publisher">
										<a herf="#">${team.nickname}</a>
									</dd>

									<dt>讲师：</dt>
									<dd id="instructor">${tutor.nickname}</dd>

									<dt>联系方式：</dt>
									<dd id="instructor-contact">
										<i class="fa fa-wechat pr-10"></i>${tutor.wechat} <br> <i
											class="fa fa-envelope-o pr-10"></i>${tutor.email} <br> <i
												class="fa fa-phone pr-10"></i>${tutor.phone} <br>
									</dd>

									<dt>价格：</dt>
									<!-- 如果有旧的价格则显示 -->
									<dd id="price">$<input type="number" name="n_price" id="course_price" value="${classDetail.n_price}" placeholder="输入课程价格，最大99999，单位CAD" pattern="[0-9]*" required>
										<i class="fa form-control-feedback"></i></dd>

									<dt>类型：</dt>
									<dd>
									<c:if test="${classDetail.type==1}">
										<input type="radio"  id="type-once"
											value="type-once" checked disabled/> 单次 <input
											type="radio"  id="type-pack"
											value="type-pack" disabled/> Package
									</c:if>
									<c:if test="${classDetail.type>1}">
										<input type="radio" id="type-once"
											value="type-once"  disabled/> 单次 <input
											type="radio" id="type-pack"
											value="type-pack" disabled checked/> Package
									</c:if>
									</dd>
									<input type="hidden" name="class_id" value="${classDetail.class_id}"/>
									<dt>课程简介:</dt>
									<dd><textarea  class="form-control" style="width:100%; height:200px;" name="description" id="course_des_1" row="15"  placeholder="简单介绍您的课程" maxlength="1000">${classDetail.description}</textarea>
											<i class="fa form-control-feedback"></i>
									</dd>

								</dl>
								<hr>
							</div>
							<h4>请将需要的文件拖拽或选择后点击upload按钮，未成功上传的文件将在离开页面后丢失！</h4>
							
							

							<!-- cover image uploader start -->
							<div class="row">
								<div class="col-md-12 hidden-sm hidden-xs">
									<h3>
										上传您的课程封面图片&nbsp;&nbsp;<small>限制为1张.jpg .gif
											.png，总量请小于5M</small>
									</h3>

									<input type="file" id="upload_info_m" />
								</div>
							</div>


							<div class="row">
								<div class="col-md-12 hidden-md hidden-lg">
									<h3>
										上传您的课程封面图片&nbsp;&nbsp;<small>限制为1张.jpg .gif
											.png，总量请小于5M</small>
									</h3>
									<input type="file"  id="upload_info_s"  />
								</div>
							</div>
							<script type="text/javascript">
							$(function(){
								var class_id = ${classDetail.class_id};
								$('#upload_info_m').ssi_uploader({url:'/ututor/uploadimage.action?',data:{"class_id":class_id},maxFileSize:15,allowed:['jpg','gif','png'],maxNumberOfFiles:1});
								$('#upload_info_s').ssi_uploader({url:'/ututor/uploadimage.action?',data:{"class_id":class_id},maxFileSize:15,dropZone:false,allowed:['jpg','gif','png'],maxNumberOfFiles:1});
							});
							</script>
							<!-- general info end -->
							<div class="steps">
								  	
								  	<s:iterator value="#request.lessons" id="lesson" status="lessonSeq" >
								  	<hr>
								  	<input type="hidden" name="lessonList[${lessonSeq.index}].lesson_id" value="${lesson.lesson_id}">
									<h4 class="title">第${lessonSeq.index+1}次课程</h4>

									<div class="form-group has-feedback">
										<label for="course_date" class="control-label col-sm-2">开课日期</label>
										<div class="col-md-4">
										<c:if test="${lesson.status.equals('not decided')||lesson.time_text.substring(0,10)=='1994-12-24'}">
											<input type="date" class="form-control" id="course_date_1" name="lessonList[${lessonSeq.index}].inputDate" value="" disabled/>
										</c:if>	
										<c:if test="${!(lesson.status.equals('not decided')||lesson.time_text.substring(0,10)=='1994-12-24')}">
											<input type="date" class="form-control" id="course_date_1" name="lessonList[${lessonSeq.index}].inputDate" value="${lesson.time_text.substring(0,10)}"/>
										</c:if>	
											<i class="fa form-control-feedback"></i>
										</div>

										<div class="checkbox col-md-6">
										<label>
											<c:if test="${lesson.status.equals('not decided')||lesson.time_text.substring(0,10)=='1994-12-24'}">
											<input type="checkbox" id="tba_date1" checked>TBA
											</c:if>	
											<c:if test="${!(lesson.status.equals('not decided')||lesson.time_text.substring(0,10)=='1994-12-24')}">
											<input type="checkbox" id="tba_date1">TBA
											</c:if>	
											
										</label>
										</div>
									</div>

									<div class="form-group has-feedback">
										<label for="course_time" class="control-label col-sm-2">开课时间</label>
										<c:if test="${empty lesson.time_text||fn:length(lesson.time_text)<16}">
										<div class="col-md-4">
											<input type="time" value="" name="lessonList[${lessonSeq.index}].inputTime" class="form-control" id="course_time_1" disabled>
											<i class="fa form-control-feedback"></i>
										</div>

										<div class="checkbox col-md-6">
										<label>
											<input type="checkbox" id="tba_time1" checked>TBA
										</label>
										</div>
										</c:if>
										<c:if test="${not empty lesson.time_text&&fn:length(lesson.time_text)==16}">
										<div class="col-md-4">
											<input type="time" value="${lesson.time_text.substring(11,16)}" name="lessonList[${lessonSeq.index}].inputTime" class="form-control" id="course_time_1">
											<i class="fa form-control-feedback"></i>
										</div>

										<div class="checkbox col-md-6">
										<label>
											<input type="checkbox" id="tba_time1">TBA
										</label>
										</div>
										</c:if>
									</div>

									<div class="form-group has-feedback">
										<label for="course_time" class="control-label col-sm-2">课程时长</label>
										<c:if test="${lesson.duration==0}">
										<div class="col-md-4">
											<input type="number" value="" name="lessonList[${lessonSeq.index}].duration" class="form-control" id="course_length_1" min="30" max="600" step="15" placeholder="最短30分钟，最长600分钟" disabled>
											<i class="fa form-control-feedback"></i>
										</div>

										<div class="checkbox col-md-6">
										<label>
											<input type="checkbox" id="tba_length1" checked>TBA
										</label>
										</div>
										</c:if>
										<c:if test="${lesson.duration!=0}">
										<div class="col-md-4">
											<input type="number" value="${lesson.duration}" name="lessonList[${lessonSeq.index}].duration" class="form-control" id="course_length_1" min="30" max="600" step="15" placeholder="最短30分钟，最长600分钟">
											<i class="fa form-control-feedback"></i>
										</div>

										<div class="checkbox col-md-6">
										<label>
											<input type="checkbox" id="tba_length1">TBA
										</label>
										</div>
										</c:if>
									</div>

									<div class="form-group has-feedback">
										<c:if test="${empty lesson.place}">
										<label for="course_loc" class="control-label col-sm-2">开课地点</label>
										<div class="col-md-4">
											<input type="text" name="lessonList[${lessonSeq.index}].place" value="${lesson.place}" class="form-control" id="course_loc_1" maxlength="30" disabled>
											<i class="fa form-control-feedback"></i>
										</div>

										<div class="checkbox col-md-6">
										<label>
											<input type="checkbox" id="tba_loc1" checked>TBA
										</label>
										</div>
										</c:if>
										<c:if test="${not empty lesson.place}">
										<label for="course_loc" class="control-label col-sm-2">开课地点</label>
										<div class="col-md-4">
											<input type="text" name="lessonList[${lessonSeq.index}].place" value="${lesson.place}" class="form-control" id="course_loc_1" maxlength="30">
											<i class="fa form-control-feedback"></i>
										</div>

										<div class="checkbox col-md-6">
										<label>
											<input type="checkbox" id="tba_loc1" >TBA
										</label>
										</div>
										</c:if>
									</div>

									<div class="form-group has-feedback">
										<label for="course_des" class="control-label col-sm-2">课程简介</label>
										<div class="col-md-6">
											<textarea  class="form-control" style="width:100%; height:200px;" name="lessonList[${lessonSeq.index}].description" id="course_des_1" row="15"  placeholder="简单介绍您的课程" maxlength="1000">${lesson.description}</textarea>
											<i class="fa form-control-feedback"></i>
										</div>
									</div>

									<div class="form-group">
										<label for="url_status" class="control-label col-sm-2">附件状态</label>
										<div class="col-md-8 radio-inline">
										<input type="radio" id="stauts_all_1" value="1" name="lessonList[${lessonSeq.index}].fileAccess"> 所有人可见&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="radio" id="status_added_1" value="2" name="lessonList[${lessonSeq.index}].fileAccess"> 仅加课学员可见&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="radio" id="status_classed_1" value="3" name="lessonList[${lessonSeq.index}].fileAccess" checked> 仅出勤学员可见								
										</div>
									 </div>
									 
									 <div class="form-group">
										
										
										<dl class="dl-horizontal attachment">
										<label for="files" class="control-label col-sm-2">附件</label>
										</br>
											<s:url id="searchUrl" escapeAmp="false" value="/course/editfilesearch">
												<s:param name="lesson_id" value="#lesson.lesson_id"/>
												<s:param name="class_id" value="#request.classDetail.class_id"/>
											</s:url>
											<sx:div href="%{searchUrl}" id="div_%{#lesson.lesson_id}" executeScripts="true"></sx:div>
											
											<sx:bind executeScripts="true" targets="div_%{#lesson.lesson_id}" href="%{#searchUrl}" listenTopics="/request"/>
								  		</dl>
										
									 </div>


											<div class="row">
												<div class="col-md-12 hidden-sm hidden-xs">
													<h3>
														<h3>
															上传您的课程附件&nbsp;&nbsp;<small>每个请小于5M,命名相同将自动覆盖,命名请不要带有空格和斜杠等特殊字符</small>
														</h3>
													</h3>

													<input type="file" multiple
														id="upload_info_${lessonSeq.index+1}m" />
												</div>
											</div>


											<div class="row">
												<div class="col-md-12 hidden-md hidden-lg">
													<h3>
														<h3>
															上传您的课程附件&nbsp;&nbsp;<small>每个请小于5M,命名相同将自动覆盖,命名请不要带有空格和斜杠等特殊字符</small>
														</h3>
													</h3>
													<input type="file" multiple
														id="upload_info_${lessonSeq.index+1}s" />
												</div>
											</div>
											<script type="text/javascript">
													$(function(){
														var class_id = ${classDetail.class_id};
														var lesson_id = ${lesson.lesson_id};
														var seq = ${lessonSeq.index+1};
														var id1= "upload_info_"+${lessonSeq.index+1}+"m";
														var id2= "upload_info_"+${lessonSeq.index+1}+"s";
														$("#"+id1).ssi_uploader({url:'/ututor/uploadfile.action?',data:{"class_id":class_id, "lesson_id":lesson_id},maxFileSize:5,allowed:['any'],onUpload:function(){
															dojo.event.topic.publish('/request');
														}});
														$("#"+id2).ssi_uploader({url:'/ututor/uploadfile.action?',data:{"class_id":class_id, "lesson_id":lesson_id},maxFileSize:5,dropZone:false,allowed:['any'],onUpload:function(){
															dojo.event.topic.publish('/request');
														}});
													});
											</script>	
								</s:iterator>
								</div>
								
								<hr>
								<div class="row">
								 	<div class="col-md-12">
								 	<h3>通知内容</h3>
								 		<textarea  class="form-control" style="width:100%; height:200px;" name="notification" id="course_des_1" row="15"  placeholder="通知内容，您编辑的邮件内容将以通知的形式发给所有的选课学员" maxlength="1000"></textarea>
									</div>
								</div>
								
								</form>
								<div class="col-md-4 col-md-offset-0">
						 	 	<button class="btn btn-primary btn-sm pull-right" id="submit" onClick="nextStep()">完成</button>
								</div>
								
							
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

	<!-- Initialization of Plugins -->
	<script type="text/javascript" src="../js/post_step3.js"></script>



	<!-- auto height align on PC -->
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