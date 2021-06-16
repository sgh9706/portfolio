<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<title> 낚시의 모든것 </title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="css/swiper.min.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/season.css">
<link rel="stylesheet" href="css/join.css">
<link rel="stylesheet" href="css/notice.css">
<link rel="stylesheet" href="css/whereid.css">

<script src="js/member.js"></script>
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/rollmain.js"></script>
<script src="js/jquery.easing.js"></script>	
<script src="js/common.js"></script>  
<script src="js/jquery.smooth-scroll.min.js"></script> 

</head>
<body>
<ul class="skipnavi">
    <li><a href="#container">본문내용</a></li>
</ul>
<!-- wrap -->
<div id="wrap">

	<header id="header">
		<div class="header_area box_inner clear">	
			<h1><a href="main.do?command=mainform">Tourist in tour</a></h1>
			<p class="openMOgnb"><a href="#"><b class="hdd">메뉴열기</b> <span></span><span></span><span></span></a></p>
			<!-- header_cont -->
			<div class="header_cont">
				<ul class="util clear">
				
				<%	 
       		 //LoginAction에 있는 loginUserid !!
                if(session.getAttribute("loginUserid")==null){  // getAttribute - LoginAction에 있는 세션 데이터를 가져오는 메서드
            %>
					<li><a href="main.do?command=loginform">로그인</a></li>
					<li><a href="main.do?command=joinform">회원가입</a></li>
					
					<% 
                }else {
					%>
					
				<%=session.getAttribute("loginUserid")%>님 환영합니다. <!-- getAttribute - 메서드를 호출하면 세션 데이터 영역의 데이터를 가져올 수 있다 -->
		       <li><a href="main.do?command=logoutform">로그아웃</a></li>
		       <li>
		      	 	<a href="main.do?command=mypageform&name=<%=session.getAttribute("loginUserid")%>">마이페이지</a>
		       </li>
		       
		<%} %>
				</ul>	
				<nav>
				<ul class="gnb clear">
					<li><a href="javascript:;" class="openAll1">낚시정보</a>

                        <div class="gnb_depth gnb_depth2_1">
                            <ul class="submenu_list">
                                <li><a href="main.do?command=domesticform">국내</a></li>
                            </ul>
                        </div>
					</li>
					<li><a href="javascript:;" class="openAll2">공지사항/문의사항</a>
				        <div class="gnb_depth gnb_depth2_2">
                            <ul class="submenu_list">
                                <li><a href="main.do?command=noticeform&boardname=fishboarder">공지사항</a></li> <!-- noticeform&boardname=fishboarder 에 있는 boardname은 변수이다 .-->
                                <li><a href="main.do?command=noticeform&boardname=fishinquiry">문의사항</a></li> <!-- noticeform&boardname=fishboarder 에 있는 boardname은 변수이다 .-->
                            </ul>
                        </div>
					</li>
					<li><a href="javascript:;" class="openAll3">계절낚시</a>
                        <div class="gnb_depth gnb_depth2_3">
                            <ul class="submenu_list">
                                <li><a href="main.do?command=springform">봄</a></li>
								<li><a href="main.do?command=summerform">여름</a></li>
								<li><a href="main.do?command=autumnform">가을</a></li>
								<li><a href="main.do?command=winterform">겨울</a></li>
                            </ul>
                        </div>
					</li>
					<li><a href="javascript:;" class="openAll4">배편</a>
                        <div class="gnb_depth gnb_depth2_4">
                            <ul class="submenu_list">
                                <li><a href="javascript:;">5만원이하</a></li>
                                <li><a href="javascript:;">5만원이상</a></li>
                            </ul>
                        </div>
					</li>
				</ul>
                </nav>
				<p class="closePop"><a href="javascript:;">닫기</a></p>
			</div>
			<!-- //header_cont -->
		</div>
	</header>
	