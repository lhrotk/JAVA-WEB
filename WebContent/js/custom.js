var pass_newPsw = false;
var pass_oldPsw = false;
var pass_rePsw = false;

var pass_phoneNum = false;
var pass_firstPsw = false;
var pass_secondPsw = false;
var pass_email = false;

var wechat_empty = true;
var nickname_empty = true;

var agreement_checked = false;

var mail_empty_login = true;
var psw_empty_login = true;

$(function(){
	//check old
	$('#oldPassword').bind('input propertychange', function() {
		var opsw = $('#oldPassword').val();
		if(opsw.length < 8){
			$('.oldPsw').addClass("has-error");
			$('.oldPsw i').addClass("fa-times");
			pass_oldPsw = false;
			$('#submit').attr("disabled",true);
		}else{
			$('.oldPsw').removeClass("has-error");
			$('.oldPsw i').removeClass("fa-times");
			$('.oldPsw').addClass("has-success");
			$('.oldPsw i').addClass("fa-check");
			pass_oldPsw = true;
			if(pass_newPsw === true && pass_rePsw === true){
				$('#submit').removeAttr("disabled");
			}
		}
	}); 
	
	//check new password
	$('#newPassword').bind('input propertychange', function() {
		var npsw = $('#newPassword').val();
		if(npsw.length < 8){
			$('#len_error').html('密码长度需要8位以上   ');
			$('.newPsw').addClass("has-error");
			$('.newPsw i').addClass("fa-times");
			pass_newPsw = false;
			$('#submit').attr("disabled",true);
		}else{
			$('#len_error').html('');
			$('.newPsw').removeClass("has-error");
			$('.newPsw i').removeClass("fa-times");
			$('.newPsw').addClass("has-success");
			$('.newPsw i').addClass("fa-check");
			pass_newPsw = true;
			if(pass_rePsw === true && pass_oldPsw === true){
				$('#submit').removeAttr("disabled");
			}
		}
	}); 
	
	//check re-enter
		$('#rePassword').bind('input propertychange', function() {
		var rpsw = $('#rePassword').val();
		if(rpsw !== $('#newPassword').val()){
			$('.rePsw').addClass("has-error");
			$('.rePsw i').addClass("fa-times");
			$('#submit').attr("disabled",true);
		}else{
			$('.rePsw').removeClass("has-error");
			$('.rePsw i').removeClass("fa-times");
			$('.rePsw').addClass("has-success");
			$('.rePsw i').addClass("fa-check");
			pass_rePsw = true;
			if(pass_newPsw === true && pass_oldPsw === true){
				$('#submit').removeAttr("disabled");
			}
		}
	}); 
	
	//Registration, phone number check;
	$('#InputPhoneNum').bind('input propertychange', function() 
	{
		var patten = new RegExp(/^[0-9]*$/);
		var phoneNum = $('#InputPhoneNum').val();
		pass_phoneNum = patten.test(phoneNum);
		if((phoneNum.length !== 10 && pass_phoneNum === false) || phoneNum.length === 0 || phoneNum.length !== 10)
			{
				$('#len_error').html('请输入一个正确的十位手机号码， 如：1234567890   ');
				$('.phoneNum').addClass("has-error");
				$('.phoneNum i').addClass("fa-times");
				$('#reg').attr('disabled','disabled');
			}else
			{
				$('#len_error').html('');
				$('.phoneNum').removeClass("has-error");
				$('.phoneNum i').removeClass("fa-times");
				$('.phoneNum').addClass("has-success");
				$('.phoneNum i').addClass("fa-check");
				//pass_phoneNum = true;
				if(pass_phoneNum === true && pass_firstPsw === true && pass_secondPsw === true && pass_email === true && wechat_empty === false && nickname_empty === false && agreement_checked === true)
					{
						$('#reg').removeAttr('disabled');
					}
			}
	});
	
	//check first psw;
	$('#InputPassword').bind('input propertychange', function()
	{
		var firstP = $('#InputPassword').val();
		if(firstP.length < 8)
			{
				$('#len_error2').html('密码至少由八个字符组成   ');
				$('.firstPsw').addClass("has-error");
				$('.firstPsw i').addClass("fa-times");
				$('#reg').attr('disabled','disabled');
			}else
				{
					$('#len_error2').html('');
					$('.firstPsw').removeClass("has-error");
					$('.firstPsw i').removeClass("fa-times");
					$('.firstPsw').addClass("has-success");
					$('.firstPsw i').addClass("fa-check");
					pass_firstPsw = true;
					if(pass_phoneNum === true && pass_firstPsw === true && pass_secondPsw === true && pass_email === true && wechat_empty === false && nickname_empty === false && agreement_checked === true)
					{
						$('#reg').removeAttr('disabled');
					}
				}		
	});
	
	//check reenter psw(reg);
	$('#InputPasswordRe').bind('input propertychange', function() 
	{
		var secondp = $('#InputPasswordRe').val();
		if(secondp !== $('#InputPassword').val())
		{
			$('#len_error3').html('两次输入的密码不一致');
			$('.secondPsw').addClass("has-error");
			$('.secondPsw i').addClass("fa-times");
			$('#reg').attr('disabled','disabled');
	
		}else
		{
			$('#len_error3').html('');
			$('.secondPsw').removeClass("has-error");
			$('.secondPsw i').removeClass("fa-times");
			$('.secondPsw').addClass("has-success");
			$('.secondPsw i').addClass("fa-check");
			pass_secondPsw = true;
			if(pass_phoneNum === true && pass_firstPsw === true && pass_secondPsw === true && pass_email === true && wechat_empty === false && nickname_empty === false && agreement_checked === true)
					{
						$('#reg').removeAttr('disabled');
					}
		}
	}); 
	
	
	//email check
	$('#InputEmail').bind('input propertychange', function(){
		var mail = $('#InputEmail').val();
		var pattern = new RegExp(/^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/);
		
		pass_email = pattern.test(mail);
		
		if(!pass_email)
			{
				$('#len_error4').html('请输入一个合法的邮箱，例：uinstructor@abc.com。');
				$('.Email').addClass("has-error");
				$('.Email i').addClass("fa-times");
				$('#reg').attr('disabled','disabled');
			}else
				{
					$('#len_error4').html('');
					$('.Email').removeClass("has-error");
					$('.Email i').removeClass("fa-times");
					$('.Email').addClass("has-success");
					$('.Email i').addClass("fa-check");
				
				}
		
		if(pass_phoneNum === true && pass_firstPsw === true && pass_secondPsw === true && pass_email === true && wechat_empty === false && nickname_empty === false && agreement_checked === true)
					{
						$('#reg').removeAttr('disabled');
					}
		
	});
	
	
	
	//check nickname
	$('#InputUserName').bind('input propertychange', function(){
		var nn = $('#InputUserName').val();
		
		if(nn.length > 0)
			{
				$('#len_error5').html('');
				$('.username').removeClass("has-error");
				$('.username i').removeClass("fa-times");
				$('.username').addClass("has-success");
				$('.username i').addClass("fa-check");
				nickname_empty = false;
			}else
				{
					$('#len_error5').html('用户名不能为空。');
					$('.username').removeClass("has-success");
					$('.username i').removeClass("fa-check");
					$('.username').addClass("has-error");
					$('.username i').addClass("fa-times");
					nickname_empty = true;
					$('#reg').attr('disabled','disabled');
				}
		
		if(pass_phoneNum === true && pass_firstPsw === true && pass_secondPsw === true && pass_email === true && wechat_empty === false && nickname_empty === false && agreement_checked === true)
					{
						$('#reg').removeAttr('disabled');
					}
	});
	
	//check wechat
	$('#InputWechat').bind('input propertychange', function(){
		var wc = $('#InputWechat').val();
		
		if(wc.length > 0)
			{
				$('#len_error6').html('');
				$('.wechat').addClass("has-success");
				$('.wechat i').addClass("fa-check");
				wechat_empty = false;
			}else
				{
					$('#len_error6').html('微信号不能为空。');
					$('.wechat').removeClass("has-success");
					$('.wechat i').removeClass("fa-check");
					$('.wechat').addClass("has-error");
					$('.wechat i').addClass("fa-times");
					wechat_empty = true;
					$('#reg').attr('disabled','disabled');
				}
		
		if(pass_phoneNum === true && pass_firstPsw === true && pass_secondPsw === true && pass_email === true && wechat_empty === false && nickname_empty === false && agreement_checked === true)
					{
						$('#reg').removeAttr('disabled');
					}
	});
	
	$('#agreement').click(function(){
		if($('#agreement').is(':checked'))
			{
				agreement_checked = true;
			}else
				{
					agreement_checked = false;
					$('#reg').attr('disabled','disabled');
				}
		
		if(pass_phoneNum === true && pass_firstPsw === true && pass_secondPsw === true && pass_email === true && wechat_empty === false && nickname_empty === false && agreement_checked === true)
					{
						$('#reg').removeAttr('disabled');
					}
		
	});
	
	
	$('#log').click(function(){
		var login_mail = $('#InputLogin').val();
		var login_psw = $('#InputPasswordLogin').val();
		
		if(login_mail.length() === 0)
			{
				mail_empty_login = true;
			}else
				{
					mail_empty_login = false;
				}
		
		if(login_psw.length() === 0)
			{
				psw_empty_login = true;
			}else
				{
					psw_empty_login = false;
				}
		
		if(mail_empty_login === true && psw_empty_login === false)
			{
				$('#len_error7').html('邮箱不能为空');
			}else
				if(mail_empty_login === false && psw_empty_login === true)
					{
						$('#len_error7').html('密码不能为空');
					}else
						if(mail_empty_login === true && psw_empty_login === true)
							{
								$('#len_error7').html('请输入用户名及密码');
							}
	});	
});


$(document).ready(function(){

				$(".enrrolled-table tr td:nth-child(5)").each(function (key, value) { 

					

					if($(this).html() === "已评价")

					{

						//$(this).parent().find("td").eq(5).html('<a href="user_course_detail.jsp">查看详细</a>');

						

						$(this).parent().addClass("success");

					}else if($(this).html() === "已取消" || $(this).html() === "未到达")

					{

						//$(this).parent().find("td").eq(5).html('<a href="user_course_detail.jsp">查看详细</a>');

						$(this).parent().css("background-color","#F2DEDE");

					}else if($(this).html() === "进行中")

					{

						//$(this).parent().find("td").eq(5).html('<a href="#">Drop</a> / <a href="user_course_detail.jsp">查看详细</a>');

						$(this).parent().addClass("info");

					}else if($(this).html() === "待评价")

					{

						//$(this).parent().find("td").eq(5).html('<a href="user_course_rating.jsp">马上评价</a> / <a href="user_course_detail.jsp">课程详情</a>');

						$(this).parent().addClass("warning");

					}else if($(this).html() === "未开课")

					{

						//$(this).parent().find("td").eq(5).html('<a href="#">Drop</a> / <a href="user_course_detail.html">查看详细</a>');

						

					}

						

					 



				}); 

});



// ver 0.0.0.2
