
// onload dynamic bind input check
$(function(){
			
			
			$(".steps").each(function(){
			    
				
				
				//TBA checkbox
				$(this).find('.form-group').each(function(){
					//find the checkbox
					//this = form group
					$(this).find(':checkbox').click(function(){
						var check = $(this).is(':checked');
						if(check)
							{
								$(this).parents('.form-group').find('input:eq(0)').attr('disabled',true);
								$(this).parents('.form-group').find('input:eq(0)').val(null);
								$(this).parents('.form-group').removeClass('has-error');
							}else{
								$(this).parents('.form-group').find('input:eq(0)').removeAttr('disabled');
								$(this).parents('.form-group').find('input:eq(0)').val(null);
								$(this).parents('.form-group').addClass('has-error');
								
							}
						//alert(check);
					});
				});
				
				
			  });
			
			//check date
			$("[type=date]").each(function(){
				//for each date input, check value
				$(this).bind('input propertychange', function() {
					var input = $(this).val().split('-');
					var current = getNowFormatDate().split('-');
					var str_input = $(this).val();
					var str_current = current[0] + '-' + current[1] +'-' + current[2];
					
					if(input[0].length == 4 && str_current < str_input)
						{
							//alert(true);
							$(this).parents('.form-group').removeClass('has-error');
							
						}else{
							//alert(false);
							$(this).parents('.form-group').addClass('has-error');
						}
					
				});
			});
			
			//check time
			$("[type=time]").each(function(){
				//for each time input, check value
				$(this).bind('input propertychange', function() {
					
					if($(this).val() != null)
						{
							//alert(true);
							$(this).parents('.form-group').removeClass('has-error');
							
						}else{
							//alert(false);
							$(this).parents('.form-group').addClass('has-error');
						}
					
				});
			});
			
			//check len
			$("[type=number]").each(function(){
				//for each time input, check value
				$(this).bind('input propertychange', function() {
					
					if($(this).val() >= 30 && $(this).val() <= 600)
						{
							//alert(true);
							$(this).parents('.form-group').removeClass('has-error');
							
						}else{
							//alert(false);
							$(this).parents('.form-group').addClass('has-error');
						}
					
				});
			});
	
	
			$("[type=text]").each(function(){
				//for each time input, check value
				$(this).bind('input propertychange', function() {
					
					if($(this).val() != null)
						{
							//alert(true);
							$(this).parents('.form-group').removeClass('has-error');
							
						}else{
							//alert(false);
							$(this).parents('.form-group').addClass('has-error');
						}
					
				});
			});


});


function nextStep(){
	var date_pass = true;
	var time_pass = true;
	var len_pass = true;
	var loca_pass = true;
	
	$("[type=date]").each(function(){
				//for each date input, check value
				//box is not checked
				var input = $(this).val().split('-');
				var current = getNowFormatDate().split('-');
				var str_input = $(this).val();
				var str_current = current[0] + '-' + current[1] +'-' + current[2];
				if($(this).parents('.form-group').find('input:eq(1)').is(':checked') == false){
					date_pass =  date_pass && (input[0].length == 4 && str_current < str_input);
				}
				
			});
	
	$("[type=time]").each(function(){
				//for each time input, check value
				//box is not checked
				var t = $(this).val();
				
				if($(this).parents('.form-group').find('input:eq(1)').is(':checked') == false){
					time_pass = time_pass && (t != "");
					
				}
			});
	
	$("[type=number]").each(function(){
				//for each len input, check value
				//box is not checked
				var t = $(this).val();
				if($(this).prop("name")!='n_price' && $(this).parents('.form-group').find('input:eq(1)').is(':checked') == false){
					len_pass = len_pass && (t >= 30 && t <= 600);
					
				}
			});
	
	$("#form [type=text]").each(function(){
				//for each loca input, check value
				//box is not checked
				var t = $(this).val();
				//alert(t);
				if($(this).parents('.form-group').find('input:eq(1)').is(':checked') == false){
					loca_pass = loca_pass && (t != "");
				}
			});
	

	if(date_pass && time_pass && len_pass && loca_pass)
	{
		var r = confirm("您确定要提交么？请确保您已经将文件上传框内的东西成功上传（点击upload按钮）");
		if(r){
			window.onbeforeunload = null;

			//取消离开页面的提醒

			document.getElementById("form").submit();

			//具体提交操作就交给你了

			showdiv();

			//这个东西是从CSDN找到，没后台没法测试，要是不能用就把上面这一行删掉
		}
	}else{
		alert("请确认红框内内容是否正确，修改后重试！");
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

function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = "-";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate + " " + date.getHours() + seperator2 + date.getMinutes() + seperator2 + date.getSeconds();
    return currentdate;
}


function RQcheck(RQ) {
            var date = RQ;
            var result = date.match(/^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/);

            if (result == null)
                return false;
            var d = new Date(result[1], result[3] - 1, result[4]);
            return (d.getFullYear() == result[1] && (d.getMonth() + 1) == result[3] && d.getDate() == result[4]);

        }

function CheckAdd() {
            var ret = true;
            if (!RQcheck($id("txt_LLRQ").value)) {
                alert("请输入正确的日期");
                return false;
            }
            return ret;
        }


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

history.pushState(null, null, document.URL);
window.addEventListener('popstate',function(){
	history.pushState(null, null, documentURL);
});