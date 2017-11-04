var current_step = 0;

$(function(){
	current_step = $('#current_step').text();
	if(current_step == $('#total_step').text()){
		$('#edit').attr('disabled','disabled');
		$('#edit').text('已结束');
	}
	//alert(current_step);	
});

function start(){

	
	window.onbeforeunload = function (event) {

	var event = event || window.event;

	// 兼容IE8和Firefox 4之前的版本

	if (event) {

	event.returnValue = "您还未提交本次记录，是否选择离开？";

	}

	// Chrome, Safari, Firefox 4+, Opera 12+ , IE 9+

	return '您还未提交本次记录，是否选择离开？';

	};
	
	$("#tbody tr").each(function() {    // 遍历每一行
    	$(this).find('input:eq(' + current_step + ')').removeAttr('disabled'); 
		
	});
	//alert($('#edit').css('display'));			
	$('#edit').css('display','none');
	$('#save').css('display','inline');
	$('#cancel').css('display','inline');
}

function c(){
	
	var r = confirm("是否要放弃本次点名?");
	if(r){
	window.onbeforeunload = null;
	
	$("#tbody tr").each(function() {    // 遍历每一行
		$(this).find('input:eq(' + current_step + ')').removeAttr('checked');
    	$(this).find('input:eq(' + current_step + ')').attr('disabled','disabled'); 
		
	});
	//alert($('#edit').css('display'));		
	$('#edit').css('display','inline');
	$('#save').css('display','none');
	$('#cancel').css('display','none');
	}
}

function s(){
	
	var r = confirm("确定要提交本次点名结果么? 一旦提交，该次开课学员名单将无法再次更改！");
	if(r){
	window.onbeforeunload = null;
		
	document.getElementById("form").submit();
	
	$("#tbody tr").each(function() {    // 遍历每一行
		
    	$(this).find('input:eq(' + current_step + ')').attr('disabled','disabled'); 
		
	});
	//alert($('#edit').css('display'));		
	$('#edit').css('display','inline');
	$('#save').css('display','none');
	$('#cancel').css('display','none');
	}
}

