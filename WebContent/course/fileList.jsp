<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach items="${fileList}" var="file">
	<c:choose>
		<c:when test="${file.fileContentType.equals('rar/zip')}">
			<dd><a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-archive-o pr-10"></i>${file.fileName}</a></dd>
		</c:when>
		<c:when test="${file.fileContentType.equals('application/msword')}">
			<dd><a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-word-o pr-10"></i>${file.fileName}</a></dd>
		</c:when>
		<c:when test="${file.fileContentType.equals('image/jpeg')}">
			<dd><a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-picture-o pr-10"></i>${file.fileName}</a></dd>
		</c:when>
		<c:when test="${file.fileContentType.equals('application/pdf')}">
			<dd><a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-pdf-o pr-10"></i>${file.fileName}</a></dd>
		</c:when>
		<c:when test="${file.fileContentType.equals('application/vnd.ms-excel')}">
			<dd><a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-excel-o pr-10"></i>${file.fileName}</a></dd>
		</c:when>
		<c:when test="${file.fileContentType.equals('application/vnd.ms-powerpoint')}">
			<dd><a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-powerpoint-o pr-10"></i>${file.fileName}</a></dd>
		</c:when>
		<c:otherwise>
			<dd><a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-o pr-10"></i>${file.fileName}</a></dd>
		</c:otherwise>
	</c:choose>
</c:forEach>