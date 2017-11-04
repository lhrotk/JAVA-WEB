var pass_title = false;
var pass_price = false;
var pass_steps = true;
var check_steps = false;
var pass_amount = false;
var new_tutor = true;
var confirm_info = "";
//check title function
function checkTitle(){
	var title = $('#course_title').val();
	if(title.length < 1 || title.length > 45){
		$('.c-title').addClass("has-error");
		$('.c-title i').addClass("fa-times");
		pass_title = false;
		$('#submit').attr("disabled",true);
	}else{
		$('.c-title').removeClass("has-error");
		$('.c-title i').removeClass("fa-times");
		$('.c-title').addClass("has-success");
		$('.c-title i').addClass("fa-check");
		pass_title = true;
		if(new_tutor == true && pass_price === true && pass_steps === true && pass_amount == true){
			$('#submit').removeAttr("disabled");
		}
	}
}

function checkNewTutor(){
	if($("#course_new_tutor").val().length<1){
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

function checkPhone(){
	//check phone
	var r = /^\+?([0-9]||\(||\))*$/;
	var phone = $("#course_phone").val();
	if($("#course_phone").val().length<1 || !r.test($("#course_phone").val())){
		$("#phone").removeClass("has-success");
		$("#phone").addClass("has-warning");
		$("#phone i").removeClass("fa-phone");
		$("#phone i").addClass("fa-warning");
	}else{
		$("#phone").addClass("has-success");
		$("#phone").removeClass("has-warning");
		$("#phone i").addClass("fa-phone");
		$("#phone i").removeClass("fa-warning");
	}
}
function checkWechat(){	
	if($("#course_wechat").val().length<1||$("#course_wechat").val().length>20){
		$("#wechat").removeClass("has-success");
		$("#wechat").addClass("has-warning");
		$("#wechat i").removeClass("fa-wechat");
		$("#wechat i").addClass("fa-warning");
	}else{
		$("#wechat").addClass("has-success");
		$("#wechat").removeClass("has-warning");
		$("#wechat i").addClass("fa-wechat");
		$("#wechat i").removeClass("fa-warning");
	}
}

function checkStep(){
	if(check_steps){	
		var steps = $('#course_number').val();
		var reg = /^[0-9]*[1-9][0-9]*$/;
		if(steps < 2 || steps>20 || (reg.test(steps) == false)){
			$('#steps').addClass("has-error");
			$('#steps i').addClass("fa-times");
			pass_steps = false;
			$('#submit').attr("disabled",true);
		}else{
			$('#steps').removeClass("has-error");
			$('#stepse i').removeClass("fa-times");
			$('#steps').addClass("has-success");
			$('#steps i').addClass("fa-check");
			pass_steps = true;
			if( new_tutor == true && pass_price === true && pass_title === true && pass_amount == true){
				$('#submit').removeAttr("disabled");
			}
		}
	}
}

function checkAmount(){	
		var steps = $('#course_amount').val();
		var reg = /^[0-9]*[1-9][0-9]*$/;
		if((reg.test(steps) == false)){
			$('#amount').addClass("has-error");
			$('#amount i').addClass("fa-times");
			pass_amount = false;
			$('#submit').attr("disabled",true);
		}else{
			$('#amount').removeClass("has-error");
			$('#amount i').removeClass("fa-times");
			$('#amount').addClass("has-success");
			$('#amount i').addClass("fa-check");
			pass_amount = true;
			if( new_tutor == true && pass_price === true && pass_title === true && pass_steps == true){
				$('#submit').removeAttr("disabled");
			}
		}
}

function checkPrice(){
	var price = $('#course_price').val();
	var reg = /^\d+(.\d{1,2})?$/;
	if(reg.test(price) === false || price > 99999){
		$('.c-price').addClass("has-error");
		$('.c-price i').addClass("fa-times");
		pass_price = false;
		$('#submit').attr("disabled",true);
	}else{
		
		$('.c-price').removeClass("has-error");
		$('.c-price i').removeClass("fa-times");
		$('.c-price').addClass("has-success");
		$('.c-price i').addClass("fa-check");
		pass_price = true;
		if(new_tutor == true && pass_title === true && pass_steps === true && pass_amount == true){
			$('#submit').removeAttr("disabled");
		}
	}
}

// input check
$(function(){
	//initial
	checkTitle();
	checkPrice();
	checkStep();
	
	//check title
	$('#course_title').bind('input propertychange', checkTitle);

	//check price
	$('#course_price').bind('input propertychange', checkPrice);

	
	//check step number
	$('#course_number').bind('input propertychange', checkStep);
	
	//check wechat
	$('#course_wechat').bind('input propertychange', checkWechat);
	
	//check phone
	$('#course_phone').bind('input propertychange', checkPhone);
	
	$('#course_new_tutor').bind('input propertychange', checkNewTutor);
	
	$('#course_amount').bind('input propertychange', checkAmount);
	
	$("#course_email")
	.blur(
			function() {
				new_tutor = false;
				$('#submit').attr("disabled",true);
				var email = $(this).val();
				if (email == "") {
					$("#code_span").html("邮箱不能为空");
					$("#email").addClass("has-error");
					$("#email").removeClass("has-success");
					$("#email i").removeClass("fa-envelope-o");
					$("#email i").addClass("fa-times");
					$('#submit').attr("disabled",true);
					return;
				}
				// 检查格式
				var pattern = /\b(^['_A-Za-z0-9-]+(\.['_A-Za-z0-9-]+)*@([A-Za-z0-9-])+(\.[A-Za-z0-9-]+)*((\.[A-Za-z0-9]{2,})|(\.[A-Za-z0-9]{2,}\.[A-Za-z0-9]{2,}))$)\b/;
				if (!pattern.test(email)) {
					$("#code_span").html("邮箱格式不正确");
					$("#email").addClass("has-error");
					$("#email").removeClass("has-success");
					$("#email i").removeClass("fa-envelope-o");
					$("#email i").addClass("fa-times");
					$('#submit').attr("disabled",true);
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
										$("#code_span").html("注意:课程发布后,我们将使用此邮箱为团队的新导师创建一个帐号,初始密码为'12345678',请联系您的导师尽快登录帐号完善个人信息");
										$("#email").removeClass("has-error");
										$("#email").addClass("has-success");
										$("#email i").addClass("fa-envelope-o");
										$("#email i").removeClass("fa-times");
										new_tutor = true;
										if( new_tutor == true && pass_price === true && pass_title === true && pass_steps == true && pass_amount == true){
											$('#submit').removeAttr("disabled");
										}
									} else {
										$("#code_span").html("邮箱已经被使用,如果无法在已注册条目下找到您的导师,请联系管理员将导师加入您的团队");
										new_tutor=false;
										$("#email").addClass("has-error");
										$("#email").removeClass("has-success");
										$("#email i").removeClass("fa-envelope-o");
										$("#email i").addClass("fa-times");
										$('#submit').attr("disabled",true);
									}
								}, "json");
			});
	
	
	//action for radio
	$('#type-package').click(function(){
		check_steps = true;
		$('#course_number').removeAttr("disabled");
		$('#course_number').val(2);
	 });
	
	$('#type-once').click(function(){
		check_steps = false;
		$('#course_number').attr('disabled','disabled');
		$('#course_number').val(1);
		$('#steps').removeClass("has-error");
		$('#steps i').removeClass("fa-times");
		$('#steps').addClass("has-success");
		$('#steps i').addClass("fa-check");
	 });
	
	$("#new_tutor").change(function(){
		if($("#new_tutor").is(':checked')){
			$("#course_new_tutor").hide();
			$("#course_new_tutor_icon").hide();
			$("#course_tutor").show();
			$("#course_tutor").change();
			document.getElementById("course_email").readOnly=true;
			document.getElementById("course_phone").readOnly=true;
			document.getElementById("course_wechat").readOnly=true;
			$("#code_span").html("");
			checkWechat();
			checkPhone();
			checkTutor();
			new_tutor=true;
			if(pass_price == true && pass_title === true && pass_steps === true && pass_amount == true){
				$('#submit').removeAttr("disabled");
			}
			$('#email').addClass("has-success");
			$('#email').removeClass("has-error");
			$('#email i').addClass("fa-envelope-o");
			$('#email i').removeClass("fa-times");
		}else{
			$("#course_new_tutor").show();
			$("#course_new_tutor_icon").show();
			$("#course_tutor").hide();
			document.getElementById("course_email").readOnly=false;
			document.getElementById("course_phone").readOnly=false;
			document.getElementById("course_wechat").readOnly=false;
			$('#course_email').val('');
			$('#course_phone').val('');
			$('#course_wechat').val('');
			checkWechat();
			checkPhone();
			checkNewTutor();
			new_tutor=false;
			$('#email').removeClass("has-success");
			$('#email').addClass("has-error");
			$('#email i').removeClass("fa-envelope-o");
			$('#email i').addClass("fa-times");
			$('#submit').attr("disabled",true);
		}
	});
	
 });

// confirm and submit
function nextStep(){
	var confirm_info;
	if($("#new_tutor").is(':checked')){
	confirm_info = "请确认以下信息以创建课程：\n" + 
	"--------------------------------------\n" + 
	"课程标题： " + $('#course_title').val() +"\n" + 
	"课程代号： " + $('#course_id').val() + 
	"\n发布者： " + $('#course_releaser').val() + 
	"\n讲师： " + $('#tutor option:selected').text() + 
	"\n班级人数： " + $('#course_amount').val()+ 
	"\n价格： " + $('#course_price').val() +
	"\n开课次数： " + $('#course_number').val() + 
	"\n--------------------------------------\n确认无误请点击确定以创建此课程，之后进行课程内容填写";
	}else{
		confirm_info = "请确认以下信息以创建课程：\n" + 
		"--------------------------------------\n" + 
		"课程标题： " + $('#course_title').val() +"\n" + 
		"课程代号： " + $('#course_id').val() + 
		"\n发布者： " + $('#course_releaser').val() + 
		"\n讲师： " + $('#course_new_tutor').val() + 
		"\n班级人数： " + $('#course_amount').val()+ 
		"\n价格： " + $('#course_price').val() +
		"\n开课次数： " + $('#course_number').val() + 
		"\n--------------------------------------\n确认无误请点击确定以创建此课程，之后进行课程内容填写";
	}
	var r = confirm(confirm_info);
	if(r)
		{
			window.onbeforeunload = null;
			//取消离开页面的提醒
			document.getElementById("form").submit();
			//具体提交操作就交给你了
			showdiv();
			//这个东西是从CSDN找到，没后台没法测试，要是不能用就把上面这一行删掉
		}
	
}

window.onbeforeunload = function (event) {
var event = event || window.event;
// 兼容IE8和Firefox 4之前的版本
if (event) {
event.returnValue = "确定要关闭窗口吗？";
}
// Chrome, Safari, Firefox 4+, Opera 12+ , IE 9+
return '确定要关闭窗口吗？';
};



//防止反复提交
//关闭等待窗口
function closediv()
 {
    //Close Div 
    document.body.removeChild(document.getElementById("bgDiv"));
    document.getElementById("msgDiv").removeChild(document.getElementById("msgTitle"));
    document.body.removeChild(document.getElementById("msgDiv"));
}
//显示等待窗口
function showdiv(str)
 {
    var msgw, msgh, bordercolor;
    msgw = 400; //提示窗口的宽度
    msgh = 100; //提示窗口的高度
    bordercolor = "#336699";
//提示窗口的边框颜色
    titlecolor = "#99CCFF";
//提示窗口的标题颜色
 
    var sWidth,
 sHeight;
    sWidth = window.screen.availWidth;
    sHeight = window.screen.availHeight;
 
    var bgObj
 = document.createElement("div");
    bgObj.setAttribute('id',
'bgDiv');
    bgObj.style.position= "absolute";
    bgObj.style.top= "0";
    bgObj.style.background= "#777";
    bgObj.style.filter= "progid:DXImageTransform.Microsoft.Alpha(style=3,opacity=25,finishOpacity=75";
    bgObj.style.opacity= "0.6";
    bgObj.style.left = "0";
    bgObj.style.width = sWidth + "px";
    bgObj.style.height = sHeight + "px";
    document.body.appendChild(bgObj);
    var msgObj = document.createElement("div");
    msgObj.setAttribute("id",
"msgDiv");
    msgObj.setAttribute("align",
"center");
    msgObj.style.position= "absolute";
    msgObj.style.background = "white";
    msgObj.style.font = "12px/1.6em; Verdana, Geneva, Arial, Helvetica, sans-serif";
    msgObj.style.border = "1px; solid " + bordercolor;
    msgObj.style.width= msgw + "px";
    msgObj.style.height = msgh + "px";
    msgObj.style.top = (document.documentElement.scrollTop + (sHeight - msgh) / 2) + "px";
    msgObj.style.left = (sWidth - msgw) / 2 + "px";
    var title
 = document.createElement("h4");
    title.setAttribute("id",
"msgTitle");
    title.setAttribute("align",
"right");
    title.style.margin= "0";
    title.style.padding = "3px";
    title.style.background = bordercolor;
    title.style.filter = "progid:DXImageTransform.Microsoft.Alpha(startX=20,startY=20, finishX=100, finishY=100,style=1,opacity=75,finishOpacity=100);";
    title.style.opacity = "0.75";
    title.style.border = "1px solid " + bordercolor;
    title.style.height = "18px";
    title.style.font = "12px Verdana, Geneva, Arial, Helvetica, sans-serif";
    title.style.color = "white";
    //title.style.cursor = "pointer";
    //title.innerHTML= "关闭";
    //title.onclick = closediv;
    document.body.appendChild(msgObj);
    document.getElementById("msgDiv").appendChild(title);
    var txt = document.createElement("p");
    txt.style.margin = "1em0";
    txt.setAttribute("id","msgTxt");
    txt.innerHTML = str;
    document.getElementById("msgDiv").appendChild(txt);
}
//屏蔽F5
document.onkeydown = mykeydown;
function mykeydown()
 {
    if (event.keyCode == 116) //屏蔽F5刷新键  
    {
        window.event.keyCode = 0;
        return false;
    }
} 
