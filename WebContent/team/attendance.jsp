<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-dojo-tags" prefix="sx"%>
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
							<li><a href="user_course.html">已加入的课程</a></li>
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
				<div class="main col-md-9" data-animation-effect="fadeInUpSmall" data-effect-delay="200">

							<!-- page-title start -->
							<h2 class="title">学生列表</h2>							
							<h4 class="title">Enrolled Student List</h4>
							<hr>
							
							<!-- row start -->
							<div class="row">
							<!-- general info start-->
							<div class="basic-info col-md-6">
								<dl id="info-table" class="dl-horizontal">							  
								  <dt>课程标题：</dt>
								  <dd id="title">${resultClass.title}</dd>

								  <dt>课程代号：</dt>
								  <dd id="course-id">${resultClass.code}</dd>

								  <dt>商品编号：</dt>
								  <dd id="product-id">${resultClass.class_id}</dd>

								  <dt>价格：</dt>
								  
								  <dd id="price">$<span>${resultClass.n_price}</span></dd>

								  <dt>状态：</dt>
								  <dd id="status">							  	
									已开课 <span id="current_step" style="color:dodgerblue">${lessonDone}</span> 次，共 <span style="color:dodgerblue" id="total_step">${resultClass.type}</span> 次。						
								  </dd>
								  
								  <dt>人数：</dt>
								  
								  <dd id="size"><span id="current_p" style="color:green">${resultClass.total_seat-resultClass.remain_seat}</span> / <span id="total_p">${resultClass.total_seat}</span> 人</dd>
								  
								  </dl>
							</div>
						    <!-- general info end -->
							
							</div>
							 <!-- row end -->    
							<hr>
							<small class="error">请注意，单次开课的点名只能进行一次，我们建议您在每次下课前进行登记。</small>
							<!-- attendence list start -->
							<div class="table-responsive">
						  		<form id="form" action="attendance" namespace="/team">
									<!-- student info table-->
									<input type="hidden" name="class_id" value="${resultClass.class_id}"/>
									<input type="hidden" name="lesson_id" value="${nextLessonId}"/>
									<input type="hidden" name="lesson_seq" value="${lessonDone+1}"/>
									<table class="table table-bordered" id="table">
										<thead>
											<tr>
											  <th>#</th>
											  <th>学生昵称</th>
											  <th>微信</th>
											  <th>邮箱</th>										  
											  <th>性别</th>
											  <c:forEach begin="1" end="${resultClass.type}" varStatus="seq">
											  <th>开课${seq.index}</th>
											  </c:forEach>
											</tr>
										</thead>
										
										 <tbody id="tbody">
										 <c:forEach items="${attendance}" var="attendant" varStatus="count">
											<tr>
											  <td>${count.index+1}</td>
											  <td>${attendant.student.nickname}</td>
											  <td>${attendant.student.wechat}</td>
											  <td>${attendant.student.email}</td>
											  <td>${attendant.student.sex}</td>
											  <c:forEach begin="0" end="${resultClass.type-1}" varStatus="seq">
											  <c:if test="${attendant.record[seq.index]==1}">
											  <td><input type="checkbox" name="resultList" value="${attendant.student.id}" disabled checked/></td>
											  </c:if>
											  <c:if test="${attendant.record[seq.index]==0}">
											  <td><input type="checkbox" name="resultList" value="${attendant.student.id}" disabled/></td>
											  </c:if>
											  </c:forEach>
											</tr>
										</c:forEach>
										</tbody>
									</table>
								</form>
							</div>
							<div class="pull-right">
									<button  type="button" class="btn btn-primary btn-sm" id="edit" onClick="start()" style="display: inline">开课</button>
									<button  type="button" class="btn btn-warning btn-sm" id="cancel" onClick="c()" style="display: none">取消</button>
									<button  type="button" class="btn btn-success btn-sm" id="save" onClick="s()" style="display: none">保存</button>
							</div>
							
							
						</div>
						<!-- main end -->

						

					</div>
				</div>
			</section>
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

<script type="text/javascript" src="../js/attendence.js"></script>


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