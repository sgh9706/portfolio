<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>메인</title>
</head>
 
<body>
	<%
	//관리자:아이디- ryan1  비밀번호 - 3333
	//사용자:아이디- test  비밀번호 - 1111

	
	/* 메인 페이지에 보여 줄 내용이 없음 >>강제적으로 페이지 이동 */
	 response.sendRedirect("http://localhost:8181/fishpoint/main.do?command=mainform");
	%>
</body>
</html>

