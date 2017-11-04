<%@page contentType="text/html;charset=utf-8"%>
<header class="header fixed clearfix">
				<div class="container">
					<div class="row">
						<div class="col-md-3">

							<!-- header-left start -->
							<!-- ================ -->
							<div class="header-left clearfix">

								<!-- logo -->
								<div class="logo">
									<a href="${pageContext.request.contextPath}/index.jsp"><img id="logo" src="${pageContext.request.contextPath}/images/logo_red.png" alt="iDea"></a>
								</div>

								<!-- name-and-slogan -->
								<div class="site-slogan" style="font-style: normal">
									约克大学中文辅导平台
								</div>

							</div>
							<!-- header-left end -->

						</div>
						<div class="col-md-9">

							<!-- header-right start -->
							<!-- ================ -->
							<div class="header-right clearfix">

								<!-- main-navigation start -->
								<!-- ================ -->
								<div class="main-navigation animated">

									<!-- navbar start -->
									<!-- ================ -->
									<nav class="navbar navbar-default" role="navigation">
										<div class="container-fluid">

											<!-- Toggle get grouped for better mobile display -->
											<div class="navbar-header">
												
												<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
													<span class="sr-only">Toggle navigation</span>
													<span class="fa fa-list-ul"> 更多</span>
													
													
												</button>
											</div>

											<!-- Collect the nav links, forms, and other content for toggling -->
											<div class="collapse navbar-collapse" id="navbar-collapse-1">
												<ul class="nav navbar-nav navbar-right">
													<li>
														<a href="${pageContext.request.contextPath}/index.jsp" >首页</a>														
													</li>
													
													<li>
														<a href="${pageContext.request.contextPath}/course/course_list.jsp">辅导课程</a>	
													</li>
													<!-- mega-menu start -->
													<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown">名师团队</a>
														<ul class="dropdown-menu">
															<li class="dropdown">
																<a href="#" class="dropdown-toggle" data-toggle="dropdown">GPA+</a>
																<ul class="dropdown-menu">
																	<li><a href="/GPAplus/gpaplus.html">GPA+ 首页</a></li>
																	
																	<li><a href="/ututor/course/course_list.jsp?team=GPAplus">GPA+ 课程</a></li>
																</ul>
																
															</li>
															<li class="divider"></li>
															<li><a href="${pageContext.request.contextPath}/FAQ.jsp#team_join">加入我们（团队）</a></li>
														</ul>
													</li>
													<!-- mega-menu end -->
													
													<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown">其他</a>
														<ul class="dropdown-menu">
															<li><a href="${pageContext.request.contextPath}/instructions.jsp">使用说明</a></li>
															<li><a href="${pageContext.request.contextPath}/FAQ.jsp">FAQ</a></li>
															<li><a href="${pageContext.request.contextPath}/instructions.html#header-9">Bug Report</a></li>
														</ul>
													</li>
													<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown">关于我们</a>
														<ul class="dropdown-menu">
															<li><a href="${pageContext.request.contextPath}/about.jsp#contact">联系我们</a></li>
															<li><a href="${pageContext.request.contextPath}/about.jsp#member">成员介绍</a></li>
															<li><a href="${pageContext.request.contextPath}/about.jsp#join_us">加入我们</a></li>
														</ul>
													</li>
													<li class="dropdown">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown">学校链接</a>
														<ul class="dropdown-menu">
															<li><a href="http://currentstudents.yorku.ca/"  target="_blank">Current Student</a></li>
															<li><a href="https://w2prod.sis.yorku.ca/Apps/WebObjects/cdm"  target="_blank">Search for courses</a></li>
															<li><a href="https://moodle.yorku.ca/"  target="_blank">Moodle@York</a></li>
															<li class="divider"></li>
															<li><a href="http://www.ratemyprofessors.com/"  target="_blank">Rate My Professor</a></li>
															
														</ul>
													</li>
												</ul>
											</div>

										</div>
									</nav>
									<!-- navbar end -->

								</div>
								<!-- main-navigation end -->

							</div>
							<!-- header-right end -->

						</div>
					</div>
				</div>
			</header>
		<!-- header end -->
