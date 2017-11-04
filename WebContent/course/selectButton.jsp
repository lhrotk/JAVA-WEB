<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:if test="${result.equals('no')}">
		<input type="button" value="添加课程" onclick="sendRequest()" class="btn btn-default" />
	</c:if>
	<c:if test="${result.equals('yes')}">
		<input type="button" value="已经加入了课程" class="btn btn-default" disabled/>
	</c:if>
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
	function sendRequest(){
	    var class_id = ${classDetail.class_id}+"";
		CreateXHR();
		if(XHR){
			var uri = "<%= request.getContextPath()%>"+"/user/joincourse.action?class_id="+class_id;
			//XHR.setRequestHeader("X-Requested-With", "Bar");
		    XHR.open("GET", uri, true);
		    XHR.onreadystatechange = resultHandler;
		    XHR.send(null);
		}
		function resultHandler(){
			if(XHR.readyState == 4 && XHR.status == 200){
				alert(XHR.responseText);
				if(XHR.responseText=="您需要先登录"){
					window.location.href = "<%= request.getContextPath()%>"+"/action/login.jsp";
					return;
				}else if(XHR.responseText=="您需要验证您的邮箱"){
					window.location.href = "<%= request.getContextPath()%>"+"/action/emailVerify.jsp";
					return;
				}else{
					location.reload();
					return;
				}
			}
		}
	}
	</script>
