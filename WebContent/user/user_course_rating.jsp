<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<script type="text/javascript">
		$(function() {
		//check old
			$('#subject').bind('input propertychange', function() {
				var title = $('#subject').val();
				if(title.length>45){
					$('#title_err').html("您输入的标题过长");
					$('#submit').attr('disabled','disabled');
				}else{
					$('#title_err').html("");
					$('#submit').removeAttr('disabled');
				}
			});
		
			$('#message').bind('input propertychange', function() {
				var title = $('#message').val();
				if(title.length>1000){
					$('#input_err').html("您输入的内容过长");
					$('#submit').attr('disabled','disabled');
				}else{
					$('#input_err').html("");
					$('#submit').removeAttr('disabled');
				}
			});
		});
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
		function sendRequest(){
			var content = document.getElementById("message").value;
			var title = document.getElementById("subject").value;
		    var star = document.getElementById("review").value;
		    var course_code = "<%= request.getParameter("course_code")%>";
		    var class_id = <%= request.getParameter("class_id")%>;
		    var launcher_id = <%= request.getParameter("launcher_id")%>;
		    var name = document.getElementById("anonymous").value;
		    if(title.length==0){
		    	$('#title_err').html("标题不能为空");
		    	return false;
		    }
		    if(content.length==0){
		    	$('#input_err').html("内容不能为空");
		    	return false;
		    }
			CreateXHR();
			if(XHR){
				var uri = "<%= request.getContextPath()%>"+"/user/assess.action?launcher_id="+launcher_id+"&content="+content+"&title="+title+"&star="+star+
				"&course_code="+course_code+"&class_id="+class_id+"&name="+name;
			    XHR.open("GET", uri, true);
			    XHR.onreadystatechange = resultHandler;
			    XHR.send(null);
			}
			function resultHandler(){
				if(XHR.readyState == 4 && XHR.status == 200){
					alert(XHR.responseText);
					if(XHR.responseText=="您需要先登录"){
						window.location.href = "<%= request.getContextPath()%>"+"login.jsp";
					}else{
						window.location.href = "<%= request.getContextPath()%>"+"/user/listcourse.action?pageNo=1";
					}
				}
			}
		}
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
							<li><i class="fa fa-home pr-10"></i><a
								href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
							<li><a
								href="${pageContext.request.contextPath }/user/listcourse.action?pageNo=1">已加入的课程</a></li>
							<li class="active">课程打分</li>
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
					<h2 class="title">编写您的评价</h2>
					<h4 class="title">Add your Review</h4>
					<hr>
					<form role="form" method="post" id="comment-form" action="assessaction">
						<dl id="info-table" class="dl-horizontal">
							<dt>课程标题：</dt>
							<dd id="class_title">${param.title}</dd>
							<dt>课程代号：</dt>
							<dd id="course_code">${param.course_code}</dd>
							<dt>编号：</dt>
							<dd id="class_id">${param.class_id}</dd>
							<dt>讲师：</dt>
							<dd id="instructor">${param.tutor}</dd>
						</dl>
						<hr>
							

								<div class="form-group has-feedback">
									<label for="subject4">标题 | Subject</label> <input type="text"
										class="form-control" id="subject" placeholder="" name = "title"
										name="subject4" required> <i
										class="fa fa-pencil form-control-feedback"></i>
										<p>
											<span id="title_err" style="color: red"><span>
										</p>
								</div>
								<div class="form-group">
									<label>分数 | Rating</label> <select class="form-control" name = "star"
										id="review">
										<option value="5">5</option>
										<option value="4">4</option>
										<option value="3">3</option>
										<option value="2">2</option>
										<option value="1">1</option>
									</select>
								</div>
								<div class="form-group has-feedback">
									<label for="message4">评语 | Message</label>
									<textarea class="form-control" rows="8" id="message" name="content"
										placeholder="" name="message4" required></textarea>
									<i class="fa fa-envelope-o form-control-feedback"></i>
									<p>
										<span id="input_err" style="color: red"><span>
									</p>
								</div>
								<div class="checkbox form-group">
									<label> <input type="checkbox" id="anonymous" name="name">
											匿名评价 </label>
								</div>
								<input type="button" value="Submit" id="submit" onclick="sendRequest();" class="btn btn-default">
							</form>
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

	
</body>
</html>