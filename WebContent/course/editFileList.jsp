<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
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

	function resultHandler(){
		if(XHR.readyState == 4 && XHR.status == 200){
			dojo.event.topic.publish('/request');
		}
	}
</script>
<c:forEach items="${fileList}" var="file">
<dd>
	<c:choose>
		<c:when test="${file.fileContentType.equals('rar/zip')}">
			<a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-archive-o pr-10"></i>${file.fileName}</a>
		</c:when>
		<c:when test="${file.fileContentType.equals('application/msword')}">
			<a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-word-o pr-10"></i>${file.fileName}</a>
		</c:when>
		<c:when test="${file.fileContentType.equals('image/jpeg')}">
			<a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-picture-o pr-10"></i>${file.fileName}</a>
		</c:when>
		<c:when test="${file.fileContentType.equals('application/pdf')}">
			<a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-pdf-o pr-10"></i>${file.fileName}</a>
		</c:when>
		<c:when test="${file.fileContentType.equals('application/vnd.ms-excel')}">
			<a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-excel-o pr-10"></i>${file.fileName}</a>
		</c:when>
		<c:when test="${file.fileContentType.equals('application/vnd.ms-powerpoint')}">
			<a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-powerpoint-o pr-10"></i>${file.fileName}</a>
		</c:when>
		<c:otherwise>
			<a href=${pageContext.request.contextPath}/${file.address} download> <i class="fa fa-file-o pr-10"></i>${file.fileName}</a>
		</c:otherwise>
	</c:choose>
	
	<button type="button" id="${file.fileId}">删除</button>
	<script type="text/javascript">
		var id=${file.fileId}
		$("#"+id).click(function(){
			var path = "${file.address}";
			var class_id = ${class_id};
			var fileId = ${file.fileId};
			CreateXHR();
			if(XHR){
				var uri = "<%= request.getContextPath()%>"+"/team/deletefile.action?class_id="+class_id+"&fileId="+fileId+"&filePath="+path;
			    XHR.open("GET", uri, true);
			    XHR.onreadystatechange = resultHandler;
			    XHR.send(null);
			}
			
		});
	</script>
	</dd>
</c:forEach>