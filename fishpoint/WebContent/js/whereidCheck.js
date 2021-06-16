
function whereidCheck(){
	
	if(document.frm.name.value.length == 0){
		alert("이름을 입력하세요.");
		document.frm.name.focus();
		return false;
	}
	if(document.frm.yy.value.length >1 & document.frm.yy.value.length <4){
		alert("4글자를 입력하세요.");
		document.frm.yy.focus();
		return false;
	}
	if(document.frm.yy.value.length == 0){
		alert("생년을 입력하세요.");
		document.frm.yy.focus();
		return false;
	}
	if(document.frm.mm.value.length < 2){
		alert("월을 입력하세요.");
		document.frm.mm.focus();
		return false;
	}
	if(document.frm.dd.value.length == 0){
		alert("일을 입력하세요.");
		document.frm.dd.focus();
		return false;
	}
	if(document.frm.mobile.value.length == 0){
		alert("번호를 입력하세요.");
		document.frm.mobile.focus();
		return false;
		
	}if(document.frm.mobile.value.length <11){
		alert("번호를 11자리 까지 입력하세요.");
		document.frm.mobile.focus();
		return false;
	}if(document.frm.mobile.value.length >11){
		alert("번호를 11자리 까지 입력하세요.");
		document.frm.mobile.focus();
		return false;
	}
	
	return true;
	}
	



