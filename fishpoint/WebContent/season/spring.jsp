<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- 태그 라이브러리 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
 	<%@ include file="../header.jsp" %>

  <meta charset="UTF-8">
<title>봄</title>
 
 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>

 <div class="location_area spring">
			<div class="box_inner">
				<h2 class="tit_page">SPRING <span class="in">&</span> POINT</h2>
				<p class="location">계절낚시 <span class="path">/</span> 봄</p>
				<ul class="page_menu clear">
					<li><a href="#" class="on">공지사항</a></li>
					<li><a href="#">문의하기</a></li>
				</ul>
			</div>
		</div>	
		<!-- //location_area -->
 
	<!-- about_area -->
		<div class="about_area">
			<h2>봄 물고기 <b>TOP 3</b></h2>
			<div class="about_box">
	
				<ul class="place_list box_inner clear">
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.doda_pop').show();">
							<img class="img_topplace" src="img/doda.jpg" alt="다리를 높이 들어 운동" />
							<h3>도다리</h3>
							<p class="txt">몸길이 30 cm 정도이고 마름모꼴이다. 두 눈은 몸의 오른쪽에 있고 크게 튀어나왔으며, 주둥이는 짧고 입은 작다. </p>
							<span class="view">VIEW</span></a>
					</li>
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.bori_pop').show();">
							<img class="img_topplace" src="img/bori.jpg" alt="바닷가에서 스트레칭" />
							<h3>보리멸</h3>
							<p class="txt">보리멸은 보리멸과의 물고기이다. 몸길이 24cm 가량으로 몸은 앞쪽은 원통형, 뒤쪽은 측편하고 주둥이는 길고 끝이 뾰족하다.</p>
							<span class="view">VIEW</span></a>
					</li>
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.nora_pop').show();">
							<img class="img_topplace" src="img/nora.jpg" alt="앉아서 스트레칭" />
							<h3>노래미</h3>
							<p class="txt"> 몸길이 30cm 가량이고 쥐노래미와 비슷하게 생겼다. 다만 꼬리지느러미가 둥그스름하고 몸통의 옆줄이 한 개인 점이 특징이다.</p>
							<span class="view">VIEW</span></a>
					</li>
				</ul>
			</div>
		</div>
	
     <%@ include file="../footer.jsp" %>
 