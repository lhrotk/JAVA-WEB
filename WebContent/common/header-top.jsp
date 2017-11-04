<%@page contentType="text/html;charset=utf-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">

							<!-- header-top-first reserved -->

						</div>
					<div class="col-xs-12 col-sm-6">

						<!-- header-top-second start -->
						<!-- ================ -->
						<div id="header-top-second" class="clearfix">

							<!-- header top dropdowns start -->
							<!-- ================ -->
							<div class="header-top-dropdown">
								<div class="btn-group dropdown">
									<button type="button"
										class="btn dropdown-toggle btn-topbar"
										data-toggle="dropdown" maxlength="8">
										<i class="fa fa-search"></i>快速搜索一门课程
									</button>
									<ul
										class="dropdown-menu dropdown-menu-left dropdown-animation">
										<li>
											<form role="search" class="search-box" action="${pageContext.request.contextPath}/course/course_list.jsp">
												<div class="form-group has-feedback">
													<input type="text" name="course_code" class="form-control" id="search-box" value="ECON1010">
													<i class="fa fa-search form-control-feedback"></i>
													<p id="serror"></p>
												</div>
											</form>
										</li>
									</ul>
								</div>
								<c:if test="${sessionScope.name==null}">
									<div class="btn-group dropdown">
										<button type="button" class="btn btn-topbar"
											onclick="location='${pageContext.request.contextPath}/action/sign_up.jsp'">
											<i class="icon icon-user-add"></i>注册
										</button>

									</div>
									<div class="btn-group dropdown">
										<button type="button" class="btn btn-topbar"
											onclick="location='${pageContext.request.contextPath}/action/login.jsp'">
											<i class="icon icon-user"></i> 登录
										</button>
									</div>
								</c:if>
							
								<c:if test="${sessionScope.name!=null}">
									<div class="btn-group dropdown">
										<button type="button" class="btn btn-topbar"
											onclick="location='${pageContext.request.contextPath}/user/user_info.jsp'">
											<i class="icon icon-user"></i>WELCOME! ${sessionScope.name} 
										</button>

									</div>
									<div class="btn-group dropdown">
										<button type="button" class="btn btn-topbar" onclick="location='${pageContext.request.contextPath}/action/logout.action'">
											<i class="icon icon-share-alt"></i> 登出
										</button>
									</div>
								</c:if>
							</div>
							<!--  header top dropdowns end -->

						</div>
						<!-- header-top-second end -->

					</div>
				</div>
			</div>
		</div>
		<!-- header-top end -->