<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

 	<%@ include file="../header.jsp" %>
 
 
<title>메인페이지</title>
 

	<div id="container">
        <div class="main_rolling_pc">
            <div class="visualRoll">
                <ul class="viewImgList">
                    <li class="imglist0">
                        <div class="roll_content">
                            <a href="javascript:;">
                            <img src="img/fishpoint.png" alt="낚시를 할 수 있는 모든 곳"></a>
                           
                        </div>
                    </li>
                    <li class="imglist1">
                        <div class="roll_content">
                            <a href="javascript:;">
                            <img src="img/fishpoint.png" alt="낚시를 할 수 있는 모든 곳"></a>
                           
                        </div>
                    </li>
                    <li class="imglist2">
                        <div class="roll_content">
                            <a href="javascript:;">
                            <img src="img/fishpoint.png" alt="낚시를 할 수 있는 모든 곳"></a>
                           
                        </div>
                    </li>
                </ul>

                <div class="rollbtnArea">
                    <ul class="rollingbtn">
                        <li class="seq butt0"><a href="#butt"><img src="img/btn_rollbutt_on.png" alt="1번" /></a></li>
                        <li class="seq butt1"><a href="#butt"><img src="img/btn_rollbutt_off.png" alt="2번" /></a></li>
                        <li class="seq butt2"><a href="#butt"><img src="img/btn_rollbutt_off.png" alt="3번" /></a></li>
                        <li class="rollstop"><a href="#" class="stop"><img src="img/btn_roll_stop.png" alt="멈춤" /></a></li>
                        <li class="rollplay"><a href="#" class="play"><img src="img/btn_roll_play.png" alt="재생" /></a></li>
                    </ul>
                </div><!-- //rollbtnArea -->

            </div><!-- //visualRoll -->
        </div><!-- //main_rolling_pc -->
        
       
	
		<!-- about_area -->
		<div class="about_area">
			<h2>바다 낚시 3대 명소 <b>TOP 3</b></h2>
			<div class="about_box">
				<ul class="place_list box_inner clear">
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.contact_pop').show();">
							<img class="img_topplace" src="img/jangbongdo.jpg" alt="다리를 높이 들어 운동" />
							<h3>장봉도</h3>
							<p class="txt">장봉도는 인천광역시 옹진군 북도면에 있는 섬이다. 장봉도 주변 갯벌은 습지보호지역이다.</p>
							<span class="view">VIEW</span></a>
					</li>
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.space_pop').show();">
							<img class="img_topplace" src="img/chojado.jpg" alt="바닷가에서 스트레칭" />
							<h3>추자도</h3>
							<p class="txt">추자군도는 제주시에서 가장 북쪽 제주해협에 위치한 군도로, 행정구역상 제주특별자치도 제주시 추자면에 속한다.</p>
							<span class="view">VIEW</span></a>
					</li>
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.program_pop').show();">
							<img class="img_topplace" src="img/chagdo33.jpg" alt="앉아서 스트레칭" />
							<h3>차귀도</h3>
							<p class="txt">차귀도는 제주특별자치도 제주시 한경면 고산리에 있는 제주특별자치도의 섬으로 면적 0.16km²이다.</p>
							<span class="view">VIEW</span></a>
					</li>
				</ul>
			</div>
		</div>
		<!-- //about_area -->

		<!-- app_area -->
		<div class="appbbs_area">
			<div class="appbbs_box box_inner clear">
				<h2 class="hdd">상담과 최근게시물</h2>
				<p class="app_line">
					<a href="#">전화 상담 신청</a>
				</p>
				<div class="bbs_line">
					<h3>NOTICE</h3>
					<ul class="notice_recent">
						<li><a href="main.do?command=noticeform&boardname=fishboarder">공지사항</a></li>
						<li><a href="main.do?command=noticeform&boardname=fishinquiry">문의사항</a></li>

					</ul>
				</div>
			</div>
		</div>
		<!-- //app_area -->

	</div>
	<!-- //container -->

     <%@ include file="../footer.jsp" %>
 