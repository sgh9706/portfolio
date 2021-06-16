
function joinCheck(){
	//아이디 확인
	if(document.frm.userid.value.length == 0){ 
		alert("아이디를 입력하세요."); 
		document.frm.userid.focus();
		return false; 
		}
	if(document.frm.userid.value.length < 4){ 
		alert("아이디를 4글자 이상이어야 합니다.."); 
		document.frm.userid.focus();
		return false; 
		}
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
	
	
//로그인 체크 
function loginCheck() {
	if(document.frm.userid.value.length == 0) {
		alert("아이디를 입력해 주세요");
		document.frm.userid.focus();
		return false;
	}
	
	if(document.frm.pwd.value.length == 0) {
		alert("암호를 입력해 주세요");
		document.frm.pwd.focus();
		return false;
		}
	return true;

}

//아이디 찾기 
function whereidCheck() {
	if(document.frm.name.value.length == 0){
		alert("이름을 입력하세요.");
		document.frm.name.focus();
		return false;
	}
	
	if(document.frm.yy.value.length == 0){
		alert("생년을 입력하세요.");
		document.frm.yy.focus();
		return false;
	}
	if(document.frm.yy.value.length >1 & document.frm.yy.value.length <4){
		alert("4글자를 입력하세요.");
		document.frm.yy.focus();
		return false;
	}
	if(document.frm.mm.value.length < 2){
		alert("월을 입력하세요.");
		document.frm.mm.focus();
		return false;
	}
	if(document.frm.mobile.value.length == 0){
		alert("번호를 입력하세요.");
		document.frm.mobile.focus();
		return false;
	}
	if(document.frm.mobile.value.length <11){
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
   


