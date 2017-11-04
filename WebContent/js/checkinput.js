/**
 * 
 */
var flag = {
	"email" : false,
	"password" : false,
	"name" : false,
	"pic" : false,
	"wechat": true,
	"phone": true
};
// 验证码
$(function() {
	flag.pic = false;
	$("#change").click(function() {
		$("#code").attr("src", "imagecode.action?dt=" + new Date().getTime());
		return false;

	});
	$("#code").click(function() {
		$("#change").click();

	});

});
$(function() {
	$("#code_text")
			.blur(
					function() {
						var code = $("#code_text").val();
						if (code == "") {
							$("#code_span").html("验证码不能为空");
							$("#code_text")
									.attr("style",
											"border:1px red solid;background-color:pink;");
							return;
						}
						$
								.post(
										"checkcode.action",
										{
											"code" : code
										},
										function(data) {
											if (data == true) {
												$("#code_text")
														.attr("style",
																"border:1px green solid;background-color:#E8E8D0;");
												$("#code_span").html("&nbsp");
												flag.pic = true;
											} else {
												$("#code_span").html("验证码错误！");
												$("#code_text")
														.attr("style",
																"border:1px red solid;background-color:pink;");
											}
										}, "json");
					});
});
// 验证码

$(function() {
	$("#txtEmail")
			.blur(
					function() {
						flag.email = false;
						var email = $(this).val();
						if (email == "") {
							$("#code_span").html("邮箱不能为空");
							$("#txtEmail")
									.attr("style",
											"border:1px red solid;background-color:pink;");
							return;
						}
						// 检查格式
						var pattern = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
						if (!pattern.test(email)) {
							$("#code_span").html("邮箱格式不正确");
							$("#txtEmail")
									.attr("style",
											"border:1px red solid;background-color:pink;");
							return;
						}
						// 检查唯一性
						$
								.post(
										"checkemail.action",
										{
											"email" : email
										},
										function(data) {
											if (data) {
												$("#code_span").html("&nbsp");
												$("#txtEmail")
														.attr("style",
																"border:1px green solid;background-color:#E8E8D0;");
												flag.email = true;
											} else {
												$("#code_span").html("邮箱已经被使用");
												$("#txtEmail")
														.attr("style",
																"border:1px red solid;background-color:pink;");
											}
										}, "json");
					});

	//
	$("#txtEmail2")
	.blur(
			function() {
				flag.email = false;
				var email = $(this).val();
				if (email == "") {
					$("#code_span").html("邮箱不能为空");
					$("#txtEmail2")
							.attr("style",
									"border:1px red solid;background-color:pink;");
					return;
				}
				// 检查格式
				var pattern = /\b(^['_A-Za-z0-9-]+(\.['_A-Za-z0-9-]+)*@([A-Za-z0-9-])+(\.[A-Za-z0-9-]+)*((\.[A-Za-z0-9]{2,})|(\.[A-Za-z0-9]{2,}\.[A-Za-z0-9]{2,}))$)\b/;
				if (!pattern.test(email)) {
					$("#code_span").html("邮箱格式不正确");
					$("#txtEmail2")
							.attr("style",
									"border:1px red solid;background-color:pink;");
					return;
				}
				// 检查唯一性
				$
						.post(
								"checkemail.action",
								{
									"email" : email
								},
								function(data) {
									if (data) {
										$("#code_span").html("该帐号不存在");
										$("#txtEmail2")
												.attr("style",
														"border:1px red solid;background-color:pink;");
										flag.email = true;
									} else {
										$("#code_span").html("&nbsp");
										$("#txtEmail2")
												.attr("style",
														"border:1px green solid;background-color:#E8E8D0;");
									}
								}, "json");
			});
	// 昵称不能为空
	$("#txtNickName")
			.blur(
					function() {
						flag.name = false;
						var name = $(this).val();
						if (name == "") {
							$("#code_span").html("昵称不能为空");
							$("#txtNickName")
									.attr("style",
											"border:1px red solid;background-color:pink;");
							return;
						}
						if (name.length < 3 || name.length > 20) {
							$("#code_span").html("您的昵称太短或太长了");
							$("#txtNickName")
									.attr("style",
											"border:1px red solid;background-color:pink;");
						} else {
							$("#code_span").html("&nbsp");
							$("#txtNickName")
									.attr("style",
											"border:1px green solid;background-color:#E8E8D0;");
							flag.name = true;
						}
					});
	$("#txtWechat")
	.blur(
			function() {
				var name = $(this).val();
				if (name == "") {
					$("#code_span").html("建议您填写微信号");
					$("#txtWechat")
							.attr("style",
									"border:1px LightGoldenRodYellow  solid;background-color:LightGoldenRodYellow ;");
					flag.wechat=true;
					return;
				}
				if (name.length < 6 || name.length > 20) {
					$("#code_span").html("您的微信号太短或太长了");
					$("#txtWechat")
							.attr("style",
									"border:1px red solid;background-color:pink;");
					flag.wechat=false;
				} else {
					$("#code_span").html("&nbsp");
					$("#txtWechat")
							.attr("style",
									"border:1px green solid;background-color:#E8E8D0;");
					flag.wechat=true;
				}
			});
	$("#txtPhone")
	.blur(
			function() {
				var r = /^\+?[1-9][0-9]*$/;
				var name = $(this).val();
				if (name == "") {
					$("#code_span").html("建议您填写联系电话");
					$("#txtPhone")
							.attr("style",
									"border:1px LightGoldenRodYellow  solid;background-color:LightGoldenRodYellow ;");
					flag.phone=true;
					return;
				}
				if (name.length < 6 || name.length > 20) {
					$("#code_span").html("您的联系电话太短或太长了");
					$("#txtPhone")
							.attr("style",
									"border:1px red solid;background-color:pink;");
					flag.phone=false;
				} else if(!r.test(name)){
					$("#code_span").html("您的电话输入有误");
					$("#txtPhone")
							.attr("style",
									"border:1px red solid;background-color:pink;");
					flag.phone=false;
				}else {
					$("#code_span").html("&nbsp");
					$("#txtPhone")
							.attr("style",
									"border:1px green solid;background-color:#E8E8D0;");
					flag.phone=true;
				}
			});
	// 密码设置
	$("#txtPassword")
			.blur(
					function() {

						var password = $(this).val();
						if (password == "") {
							$("#code_span").html("密码不能为空");
							$("#txtPassword")
									.attr("style",
											"border:1px red solid;background-color:pink;");
							return;
						}
						// 密码格式
						var pattern = /\b(^.{6,20}$)\b/;
						if (!pattern.test(password)) {
							$("#code_span").html("密码格式不正确");
							$("#txtPassword")
									.attr("style",
											"border:1px red solid;background-color:pink;");
							return;
						} else {
							$("#code_span").html("&nbsp");
							$("#txtPassword")
									.attr("style",
											"border:1px green solid;background-color:#E8E8D0;");
						}
					});
	// 重复密码
	$("#txtRepeatPass")
			.blur(
					function() {
						flag.password = false;
						password = $("#txtPassword").val();
						pwd = $("#txtRepeatPass").val();
						if (pwd == "") {
							$("#code_span").html("密码不能为空");
							$("#txtRepeatPass")
									.attr("style",
											"border:1px red solid;background-color:pink;");
							return;
						}
						if (!(password == pwd)) {
							$("#code_span").html("密码不一致！请重新输入");
							$("#txtRepeatPass")
									.attr("style",
											"border:1px red solid;background-color:pink;");
						} else {
							$("#code_span").html("&nbsp");
							$("#txtRepeatPass")
									.attr("style",
											"border:1px green solid;background-color:#E8E8D0;");
							flag.password = true;
						}
					});
});
$(function() {
	$("#f").submit(function() {
		var ok = flag.email && flag.password && flag.name && flag.pic && flag.wechat && flag.phone;
		if (ok == false) {
			alert("表单项正在检测或存在错误！");
			return false;
		}
		return true;
	});
});
$(function() {
	$("#f2").submit(function() {
		var ok = flag.name && flag.wechat && flag.phone;
		if (ok == false) {
			alert("表单项正在检测或存在错误！");
			alert(flag.name);
			alert(flag.wechat);
			alert(flag.phone);
			return false;
		}
		return true;
	});
});