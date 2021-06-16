<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- 태그 라이브러리 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
 	<%@ include file="../header.jsp" %>

  <meta charset="UTF-8">
<title>여름</title>
 
 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>

 <div class="location_area summer">
			<div class="box_inner">
				<h2 class="tit_page">SUMMER <span class="in">&</span> POINT</h2>
				<p class="location">계절낚시 <span class="path">/</span> 여름</p>
				<ul class="page_menu clear">
					<li><a href="#" class="on">공지사항</a></li>
					<li><a href="#">문의하기</a></li>
				</ul>
			</div>
		</div>	
		<!-- //location_area -->
 

	<!-- about_area -->
		<div class="about_area">
			<h2>여름 물고기<b>TOP 3</b></h2>
			<div class="about_box">
				<ul class="place_list box_inner clear">
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.nong_pop').show();">
							<img class="img_topplace" src="img/nong.jpg" alt="다리를 높이 들어 운동" />
							<h3>농어</h3>
							<p class="txt"> 몸은 약간 길고 납작하며 등은 푸른빛이 도는 회색, 배는 은백색이다. 개체에 따라 몸의 측면과 등지느러미에 작은 검은점이 흩어져 있다. </p>
							<span class="view">VIEW</span></a>
					</li>
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.chamdom_pop').show();">
							<img class="img_topplace" src="img/dom.jpg" alt="바닷가에서 스트레칭" />
							<h3>참돔</h3>
							<p class="txt">농어목 도미과의 바닷물고기이다. 체색이 아름다워 '바다의 여왕', '바다의 왕자'라고 불리우며, 낚시 대상어로도 인기 있는 어종이다.</p>
							<span class="view">VIEW</span></a>
					</li>
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.bang_pop').show();">
							<img class="img_topplace" src="img/gang2.jpg" alt="앉아서 스트레칭" />
							<h3>전갱이</h3>
							<p class="txt"> 방패 지느러미가 발달해 있고 몸빛깔은 등쪽이 암청색, 배쪽이 은백색이다. 난류성 회유어로서 한국에는 봄, 여름에 걸쳐 떼를 지어 북상한다. </p>
							<span class="view">VIEW</span></a>
					</li>
				</ul>
			</div>
		</div>
	

	
     <%@ include file="../footer.jsp" %>
 