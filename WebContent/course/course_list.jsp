<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-dojo-tags" prefix="sx"%>
<html lang="zh-CN">

<head>
<sx:head parseContent="false"/>
<!-- 用于简化路径，通过网址设定base，之后页面自动跟进path -->
<!--<base href="index.html"> -->
<title>Ututor-约克华人辅导平台</title>
<link href="../images/favicon.ico"  rel="shortcut icon" />
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />



<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.4.3.js"></script>


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



<!-- Custom css -->
<link href="../css/custom.css" rel="stylesheet">
<link href="../css/base.css" rel="stylesheet">
<link href="../css/style-list.css" rel="stylesheet">
<!--[if lt IE 9]>
		<script type="text/javascript"  src="js/html5shiv.js"></script>
		<script type="text/javascript" src="js/selectivizr.js"></script>
		<![endif]-->

<!-- Color Scheme (In order to change the color scheme, replace the red.css with the color scheme that you prefer)-->
<link href="../css/skins/red.css" rel="stylesheet">

<script type="text/javascript">

function load(){
	var team = document.getElementById("course-launcherid").options;
	var teamName = "${param.team}";
	var target = "team "+ teamName;
	for(i=0;i<team.length;i++){
		if(team[i].text==target){
			team[i].selected=true;
		}
	}
	$("#submitbtn").click();
}
function func1(){
	$("#ResultContainer").find("img").each(function(index, element) {
		var bili = 0.618;
		var width = $(element).parent().parent().width();
		$(element).css("height", width * bili);
	});
}
function func2(){
	setTimeout("func1()",1000);
}
</script>


</head>

<body class="front" onload="load()" onresize="func2()">
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
		<!-- ================ -->
		<div class="page-intro">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<ol class="breadcrumb">
							<li><i class="fa fa-home pr-10"></i><a href="../index.jsp">首页</a></li>
							<li class="active">辅导课程</li>
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

					<form id="searchForm" ">
					
					<aside class="col-md-3">
						<div class="sidebar">

							<div class="block clearfix">
								<h2>Search Filters</h2>
								<div class="separator"></div>
								<div class="sorting-filters">
									
										<div class="form-group">
											<label>搜索课程代号</label>
											<div>
												<input type="text" id="course-code" class="form-control" name="conditions.CourseCode" placeholder="e.g: EECS1000" value="${param.course_code}">
											</div>
										</div>
										<div class="form-group">
											<label>搜索课程名称</label>
											<div>
												<input type="text" id="course-title" class="form-control" name="conditions.CourseTitle" placeholder="e.g: ARTS" value="">
											</div>
										</div>
										<div class="form-group">
											<label>类型</label> <select class="form-control" id="course-uni" name="conditions.Uni">
												<option selected="selected" value="0">全部</option>
												<option value="1">单次</option>
												<option value="2">Package</option>
											</select>

										</div>

										<div class="form-group">
											<label>人数</label> <select class="form-control" id="course-student" name="conditions.TotalStudent">
												<option selected="selected" value="0">不限制</option>
												<option value="1">1对1</option>
												<option value="2">1对2</option>
												<option value="3">1对3</option>
												<option value="4">1对4</option>
												<option value="5">5人以上大班</option>
											</select>
										</div>
										
										<div class="form-group">
											<label>价格 $ (min/max)</label>
											<div class="row grid-space-10">
												<div class="col-sm-6">
													<input type="text" id="course-minprice" class="form-control" name="conditions.MinPrice">
												</div>
												<div class="col-sm-6">
													<input type="text" id="course-maxprice" class="form-control col-xs-6" name="conditions.MaxPrice">
												</div>
											</div>
										</div>

										<div class="form-group">
											<label>开课日期 (min/max)</label>

											<div>
												<input type="date"  id="course-mindate" class="form-control" name="conditions.MinDate">
											</div>
											<div>
												<input type="date"  id="course-maxdate" class="form-control col-xs-6" name="conditions.MaxDate">
											</div>

										</div>
										<div class="form-group">
											<label>选择发布者</label> <select class="form-control" id="course-launcherid" name="conditions.Launcher_id">
												<option selected="selected" value="-1">全部</option>
												<s:action name="teamlist" executeResult="true"
													namespace="/course">

												</s:action>
											</select>
										</div>
										<div class="form-group">								
											<s:url id="searchUrl" value="searchcourse.action"/>
											<sx:submit id="submitbtn" href="%{searchUrl}" formId="searchForm" type="button" targets="ResultContainer" label="Search" executeScripts="true" cssClass="btn btn-default"/>
										</div>
								</div>
							</div>
							<div class="block clearfix">
								<h2>更多筛选</h2>
								<div class="separator"></div>
								<form role="form" class="form-list">
									<div class="checkbox">
										<label> <input type="checkbox" id="finished-course" name="conditions.Start" value="true">
											显示已开课/已结束课程
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" id="full-course" name="conditions.Full" value="true" >
											显示已满课程
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" id="notime-course" name="conditions.NoTime" value="true" checked>
											显示时间未确定课程
										</label>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox" id="noplace-course" name="conditions.NoPlace" value="true" checked>
											显示地址未确定课程
										</label>
									</div>
							
							</div>

						</div>
					</aside>

					<!-- main start -->
					<!-- ================ -->
					<!--<s:url id="firstUrl" action="teamlist.action">
					</s:url>
					
					
					<input type="button" value="dasdfasdfsdf" onclick="dojo.event.topic.publish('/request')"/>-->
					<sx:div id="ResultContainer" cssClass="main col-md-9" >


					</sx:div>
					<!--<sx:bind targets="ResultContainer" href="%{#firstUrl}" listenTopics="/request"/>-->
					<!-- main end -->
					</form>

				</div>
			</div>
		</section>
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

</body>
</html>
