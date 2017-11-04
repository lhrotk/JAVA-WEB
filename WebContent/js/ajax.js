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