
function ReviewCheck(){

	if(document.frm.pwd.value.length == 0){
		alert("암호는 반드시 입력해야 합니다.");
		document.frm.pwd.focus();
		return false;
	}
	if(document.frm.pwd.value != document.frm.pwd_check.value){
		alert("암호가 일치하지 않습니다.");
		document.frm.pwd.focus();
		return false;
	}

return true;
}