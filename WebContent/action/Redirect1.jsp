<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>您需要登录</title>
<script language="javascript" type="text/javascript">
	var i = 5;
	var intervalid;
	intervalid = setInterval("fun()", 1000);
	function fun() {
		if (i == 0) {
			window.location.href = "login.jsp";
			clearInterval(intervalid);
		}
		document.getElementById("mes").innerHTML = i;
		i--;
	}
</script>
</head>
<body>
<p>尊敬的用户您需要先<a href="login.jsp">登录</a></p> 
<p>将在 <span id="mes">5</span> 秒钟后自动跳转到登录页面！</p> 
</body>
</html>