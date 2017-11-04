<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row grid-space-20" id="recommendContainer">
	<c:forEach items="${recommendList}" var="oneclass">

		<div class="col-md-3 col-sm-6">
			<div class="listing-item">
				<div class="overlay-container">
				<c:if test="${oneclass.img_src==null}">
					<img src="${pageContext.request.contextPath}/images/product-1.png" width="100%" alt=""> <a
						href="${pageContext.request.contextPath}/course/showcourse.action?class_id=${oneclass.class_id}" class="overlay small"> <i
						class="fa fa-plus"></i> <span>View Details</span>
					</a>
				</c:if>
				<c:if test="${oneclass.img_src!=null}">
					<img src="${pageContext.request.contextPath}/${oneclass.img_src}" width="100%" alt=""> <a
						href="${pageContext.request.contextPath}/course/showcourse.action?class_id=${oneclass.class_id}" class="overlay small"> <i
						class="fa fa-plus"></i> <span>View Details</span>
					</a>
				</c:if>
				</div>
				<div class="listing-item-body clearfix">
					<h3 class="title">
						<a href="/html/shop-product.html">${oneclass.code} ${oneclass.title}</a>
					</h3>
					<p>${oneclass.description}</p>
					<span class="price">$ ${oneclass.n_price}</span>
				</div>
			</div>
		</div>

	</c:forEach>
</div>