
$(function(){
	//if current is not 1, to first page
	if(current != 1){
		var prev = current - 1;
		$(".pagination").append("<li><a href=/ututor/user/listcourse.action?pageNo=" + 1 + ">首页</a></li>");
		$(".pagination").append("<li><a href=/ututor/user/listcourse.action?pageNo=" + prev + ">«</a></li>");
	}else{
		var prev = current - 1;
		$(".pagination").append("<li><a href=/ututor/user/listcourse.action?pageNo=" + 1 + ">首页</a></li>");
		$(".pagination").append("<li><a href=/ututor/user/listcourse.action?pageNo=" + 1 + ">«</a></li>");
	}
	
	var i,j;
	if(total <= 5)//less than 5 pages
	{
		for(i=1;i<=total;i++){
			$(".pagination").append("<li><a href=/ututor/user/listcourse.action?pageNo=" + i + ">"+ i +"</a></li>");
		}
	}else if((total - current) < 2){// last 2 pages
		i = current - 2;
		for(i;i<=total;i++){
			$(".pagination").append("<li><a href=/ututor/user/listcourse.action?pageNo=" + i + ">"+ i +"</a></li>");
		}
	}else{//in the middle of long arrays
		if(current > 2){ // 3.....
			i = current - 2;
			j = i + 4;
		}else{ // 1 , 2
			i = 1;
			j = 5;
		}
		for(i;i<=j;i++){
			$(".pagination").append("<li><a href=/ututor/user/listcourse.action?pageNo=" + i + ">"+ i +"</a></li>");
		}
	}
	
	//next and end
	if(current !== total){
		var next = current + 1;
		$(".pagination").append("<li><a href=/ututor/user/listcourse.action?pageNo=" + next + ">»</a></li>");
		$(".pagination").append("<li><a href=/ututor/user/listcourse.action?pageNo=" + total + ">末页</a></li>");
	}else{
		var next = current + 1;
		$(".pagination").append("<li><a href=/ututor/user/listcourse.action?pageNo=" + total + ">»</a></li>");
		$(".pagination").append("<li><a href=/ututor/user/listcourse.action?pageNo=" + total + ">末页</a></li>");
	}
	
	$(".pagination li").each(function(){
		if($(this).text() == current){
			$(this).addClass("active");
		}
		
	});

});
