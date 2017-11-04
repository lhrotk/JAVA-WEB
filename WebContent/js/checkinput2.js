var pass_newPsw = false;
var pass_oldPsw = false;
var pass_rePsw = false;

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
			$('#len_error').html('密码长度需要8位以上&nbsp;&nbsp;&nbsp;');
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
	
	
	
});

$(document).ready(function(){
				$(".enrrolled-table tr td:nth-child(5)").each(function (key, value) { 
					
					if($(this).html() === "已评价")
					{
						$(this).parent().find("td").eq(5).html('<a href="user_course_detail.html">查看详细</a>');
						
						$(this).parent().addClass("success");
					}else if($(this).html() === "已取消" || $(this).html() === "未到达")
					{
						$(this).parent().find("td").eq(5).html('<a href="user_course_detail.html">查看详细</a>');
						$(this).parent().css("background-color","#F2DEDE");
					}else if($(this).html() === "进行中")
					{
						$(this).parent().find("td").eq(5).html('<a href="#">Drop</a> / <a href="user_course_detail.html">查看详细</a>');
						$(this).parent().addClass("info");
					}else if($(this).html() === "待评价")
					{
						$(this).parent().find("td").eq(5).html('<a href="user_course_rating.html">马上评价</a> / <a href="user_course_detail.html">查看详细</a>');
						$(this).parent().addClass("warning");
					}else if($(this).html() === "未开课")
					{
						$(this).parent().find("td").eq(5).html('<a href="#">Drop</a> / <a href="user_course_detail.html">查看详细</a>');
						
					}
						
					 

				}); 
});


// ver 0.0.0.2


// ver 0.0.0.2
