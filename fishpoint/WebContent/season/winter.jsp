<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- 태그 라이브러리 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
 	<%@ include file="../header.jsp" %>

  <meta charset="UTF-8">
<title>겨울</title>
 
 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>

 <div class="location_area winter">
			<div class="box_inner">
				<h2 class="tit_page">WINTER <span class="in">&</span> POINT</h2>
				<p class="location">계절낚시 <span class="path">/</span> 겨울</p>
				<ul class="page_menu clear">
					<li><a href="#" class="on">공지사항</a></li>
					<li><a href="#">문의하기</a></li>
				</ul>
			</div>
		</div>	
		<!-- //location_area -->
 	<!-- about_area -->
		<div class="about_area">
			<h2>겨울 물고기<b>TOP 3</b></h2>
			<div class="about_box">
				<ul class="place_list box_inner clear">
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.banga_pop').show();">
							<img class="img_topplace" src="img/bang.jpg" alt="다리를 높이 들어 운동" />
							<h3>방어</h3>
							<p class="txt">방어는 몸 길이가 1m를 훌쩍 넘는 대형 어류로 한국 연안을 회유하며 정어리·멸치·꽁치 등 작은 물고기를 잡아 먹고 사는 어종이다.</p>
							<span class="view">VIEW</span></a>
					</li>
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.dozzi_pop').show();">
							<img class="img_topplace" src="img/dozzi.jpg" alt="바닷가에서 스트레칭" />
							<h3>도치</h3>
							<p class="txt">7속 30여 종으로 이루어져 있다. 북극해와 북대서양 그리고 북태평양의 차가운 바다에서 발견된다. <br></p>
							<span class="view">VIEW</span></a>
					</li>
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.bom_pop').show();">
							<img class="img_topplace" src="img/bom.jpg" alt="앉아서 스트레칭" />
							<h3>범치</h3>
							<p class="txt"> 성장에 대한 자료 역시 없으나 어시장에 판매되는 크기로 미루어 15∼20cm 크기의 성어로 자라기까지는 약 2∼3년이 걸릴 것으로 생각되며, 생후 만 1년만에 10cm 전후로 자랄 것으로 추정된다.</p>
							<span class="view">VIEW</span></a>
					</li>
				</ul>
			</div>
		</div>
	

	
     <%@ include file="../footer.jsp" %>
 