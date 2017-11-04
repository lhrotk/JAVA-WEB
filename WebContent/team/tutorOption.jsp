<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript">
function checkTutor(){
	var obj = document.getElementById("course_tutor");
	var name = obj.options[obj.selectedIndex].getAttribute('name');
	if(name.length<1){
		$("#tutor").removeClass("has-success");
		$("#tutor").addClass("has-warning");
		$("#tutor i").removeClass("fa-user");
		$("#tutor i").addClass("fa-warning");
	}else{
		$("#tutor").addClass("has-success");
		$("#tutor").removeClass("has-warning");
		$("#tutor i").addClass("fa-user");
		$("#tutor i").removeClass("fa-warning");
	}
}
	function option_func(){
		var obj = document.getElementById("course_tutor");
		var phone = obj.options[obj.selectedIndex].getAttribute('phone');
		var email = obj.options[obj.selectedIndex].getAttribute('email');
		var wechat = obj.options[obj.selectedIndex].getAttribute('wechat');
		var name = obj.options[obj.selectedIndex].getAttribute('name');
		$("#course_email").val(email);
		$("#course_phone").val(phone);
		$("#course_wechat").val(wechat);
		checkPhone();
		checkWechat();
		checkTutor();
	}
	$(document).ready(function() { 
		$("#course_tutor").change();
		$("#new_tutor").attr("checked",true);
		$("#type_once").attr("checked",true);
		$("#type_package").ramoveAttr("checked");
		checkAmount();
	}); 
</script>
<select class="form-control " id="course_tutor" placeholder="输入讲师"
 onchange="option_func()" name="tutor_id">
	<c:forEach items="${tutorList}" var="tutor" varStatus="status">
		<option value="${tutor.id}" email="${tutor.email}" wechat="${tutor.wechat}" phone="${tutor.phone}" name="${tutor.nickname}">${tutor.nickname}
			&nbsp(${tutor.email})</option>
	</c:forEach>
</select>



