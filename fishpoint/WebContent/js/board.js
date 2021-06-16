//리뷰 창 삭제/수정 클릭시 나온다.
function passCheck(){
	
	if(document.frm.pwd.value.length==0){
	alert("비밀번호를 입력하세요");
	return false;
	}
	return true;
}
//확인 창 크기
function open_win(url, name) {
	window.open(url, name, "width=500, height=230");
}

function boardCheck() {
	if(document.frm.name.value.length==0){
		alert("작성자를 입력하세요");
		return false;
		}

if(document.frm.pwd.value.length==0){
	alert("비밀번호를 입력하세요");
	return false;
	}

if(document.frm.email.value.length==0){
	alert("이메일을 입력하세요");
	return false;
	}

if(document.frm.pwd.value.length==0){
	alert("비밀번호를 입력하세요");
	return false;
	}

if(document.frm.title.value.length==0){
	alert("제목을 입력하세요");
	return false;
	}

if(document.frm.content.value.length==0){
	alert("내용을 입력하세요");
	return false;
	}

return true;
}





