<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
<html xmlns="http://www.w3.org/1999/xhtml">  
  <head>  
  <sx:head parseContent="true"/>
  </head>  
  <body>
<section">
	<!-- Page Control -->
	<header class="page-control panel ptb-15 prl-20 pos-r mb-30">
		<!-- List Control View -->
		<ul class="list-inline">
			<li class="text-muted">搜索结果:</li>
			<li><b><span class="result">共找到${totalResults}条结果</span></b></li>
		</ul>
		<!-- End List Control View -->
		<div class="right-10 pos-tb-center">
			<select class="form-control input-sm" id="course-order" name="conditions.Order">
				<option value="1" selected = "true">按发布时间降序</option>
				<option value="2">按发布时间升序</option>
				<option value="3">按开课时间升序</option>
				<option value="4">按开课时间降序</option>
				<option value="5">价格升序</option>
				<option value="6">价格降序</option>
				<option value="7">人气</option>
				<option value="8">评价高到低</option>
			</select>
		</div>
	</header>
	<!-- End Page Control -->
	<div id="updateContainer">
		<div class="row row-masnory row-tb-20"
			data-animation-effect="fadeInDown" data-effect-delay="0"
			style="height: 800">
			<c:forEach items="${searchResult}" var="course">
				<div class="col-xs-12">
					<div class="coupon-single panel t-center t-sm-left">
						<div class="ribbon-wrapper is-hidden-xs-down">
							<div class="ribbon">${course.launcher}</div>
						</div>
						<div class="row row-sm-cell row-tb-0 row-rl-0">
							<div class="col-sm-5">
								<figure class="p-15">
									<c:if test="${course.image_src==null}">
										<a href="${pageContext.request.contextPath}/course/showcourse.action?class_id=${course.class_id}"><img class="cover-img"
											src="${pageContext.request.contextPath }/images/page-about-2.jpg"
											width="100%" alt="封面" /></a>
									</c:if>
									<c:if test="${course.image_src!=null}">
										<a href="${pageContext.request.contextPath}/course/showcourse.action?class_id=${course.class_id}"><img class="cover-img"
											src="${pageContext.request.contextPath }/${course.image_src}"
											width="100%" alt="封面" /></a>
									</c:if>
								</figure>
							</div>
							<!-- end col -->
							<div class="col-sm-7">
								<div class="panel-body">
									<ul class="deal-meta list-inline mb-10">
										<li class="color-green"><i class="ico lnr lnr-smile mr-5"></i><span
											class="type"> <c:if test="${course.type==1}">
								单次
								</c:if> <c:if test="${course.type>1}">
								Package
								</c:if>
										</span></li>
										<li class="color-muted"><i class="ico lnr lnr-users mr-5"></i><span
											class="taken">科目 </span><a herf=""><a href="${pageContext.request.contextPath}/course/showcourse.action?class_id=${course.class_id}">${course.course_code}</a></li>
										<li class="color-muted"><i class="ico lnr lnr-users mr-5"></i><span
											class="taken">by </span><a herf="">${course.launcher}</a></li>
										<li class="color-muted"><i class="ico lnr lnr-users mr-5"></i><span
											class="taken">${course.past_attendant}</span> 人次已上过该课程</li>

									</ul>
									<h5 class="deal-title mb-10 pr-20">
										&nbsp;<a href="${pageContext.request.contextPath}/course/showcourse.action?class_id=${course.class_id}">${course.title}</a>
									</h5>
									<div class="row text-muted">
										<div>
											<ul class="col-md-6">
												<li>开课时间： <span class="date">${course.next_time}</span></li>
												<li>发布时间： <span class="release-date">${course.launch_time }</span></li>
												<li>价格： $ <span class="current-price">${course.n_price}</span></li>
											</ul>
										</div>
										<div class="col-md-6">
											<ul>
												<li>时长： <c:if test="${course.length!=0}"><span class="time">${course.length}</span> 分钟</c:if><c:if test="${course.length==0}">待定</c:if>
												</li>
												<li>当前人数： <span class="current">${course.total_seat-course.remain_seat}</span>
													/ <span class="total">${course.total_seat}</span> 人
												</li>
												<li>开课地点： <span class="date"> <c:if
															test="${course.place!=null}">
									${course.place}
									</c:if> <c:if test="${course.place==null}">
									待定
									</c:if>
												</span></li>
											</ul>
										</div>
									</div>

								</div>
								<!-- end col -->
							</div>
							<!-- end row -->
						</div>

					</div>
				</div>
			</c:forEach>
		</div>
		<!-- Page Pagination -->
		<div class="page-pagination text-center mt-30 p-10 panel">
			<nav>
				<!-- Page Pagination -->
				<ul class="page-pagination">
					<c:if test="${pageNo-1>0}">
					<li><sx:a href="searchcourse.action?pageNo=%{pageNo-1}" targets="ResultContainer" executeScripts="true"  cssClass="page-numbers previous">Previous</sx:a></li>
					</c:if>
					<li><sx:a href="searchcourse.action?pageNo=1" targets="ResultContainer" executeScripts="true"  cssClass="page-numbers previous">首页</sx:a></li>
					<c:if test="${pageNo-3>0}">
					<li><sx:a href="searchcourse.action?pageNo=%{pageNo-3}" targets="ResultContainer" executeScripts="true"  cssClass="page-numbers">${pageNo-3}</sx:a></a></li>
					</c:if>
					<c:if test="${pageNo-2>0}">
					<li><sx:a href="searchcourse.action?pageNo=%{pageNo-2}" targets="ResultContainer" executeScripts="true"  cssClass="page-numbers">${pageNo-2}</sx:a></li>
					</c:if>
					<c:if test="${pageNo-1>0}">
					<li><sx:a href="searchcourse.action?pageNo=%{pageNo-1}" targets="ResultContainer" executeScripts="true"  cssClass="page-numbers">${pageNo-1}</sx:a></li>
					</c:if>
					<c:if test="${pageNo>0}">
					<li><span class="page-numbers current">${pageNo}</span></li>
					</c:if>
					<c:if test="${pageNo+1<=totalPageNo}">
					<li><sx:a href="searchcourse.action?pageNo=%{pageNo+1}" targets="ResultContainer" executeScripts="true"  cssClass="page-numbers">${pageNo+1}</sx:a></li>
					</c:if>
					<c:if test="${pageNo+2<=totalPageNo}">
					<li><sx:a href="searchcourse.action?pageNo=%{pageNo+2}" targets="ResultContainer" executeScripts="true"  cssClass="page-numbers">${pageNo+2}</sx:a></li>
					</c:if>
					<c:if test="${pageNo+3<=totalPageNo}">
					<li><sx:a href="searchcourse.action?pageNo=%{pageNo+3}" targets="ResultContainer" executeScripts="true"  cssClass="page-numbers">${pageNo+3}</sx:a></li>
					</c:if>
					<s:url id="finalPage" value="searchcourse.action">
						<s:param name="pageNo" value="#request.totalPageNo"/>
					</s:url>
					<li><sx:a href="%{finalPage}" targets="ResultContainer" executeScripts="true"  cssClass="page-numbers">尾页</sx:a></li>
					<c:if test="${pageNo+1<=totalPageNo}">
					<li><sx:a href="searchcourse.action?pageNo=%{pageNo+1}" targets="ResultContainer" executeScripts="true"  cssClass="page-numbers next">Next</sx:a></li>
					</c:if>
				</ul>
				<!-- End Page Pagination -->
			</nav>
		</div>
	</div>
	<!-- End Page Pagination -->
</section>
<script type="text/javascript">
		$("#updateContainer").find("img").each(function(index, element) {
			var bili = 705 / 1140;
			var width = $(element).width();
			$(element).css("height", width * bili);
		});
</script>
</body>
