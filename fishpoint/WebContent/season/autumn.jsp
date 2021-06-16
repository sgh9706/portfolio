<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- 태그 라이브러리 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
 	<%@ include file="../header.jsp" %>

  <meta charset="UTF-8">
<title>가을</title>
 
 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>

 <div class="location_area autumn">
			<div class="box_inner">
				<h2 class="tit_page">AUTUMN <span class="in">&</span> POINT</h2>
				<p class="location">계절낚시 <span class="path">/</span> 가을</p>
				<ul class="page_menu clear">
					<li><a href="#" class="on">공지사항</a></li>
					<li><a href="#">문의하기</a></li>
				</ul>
			</div>
		</div>	
		<!-- //location_area -->
 
	<!-- about_area -->
		<div class="about_area">
			<h2>가을 물고기<b>TOP 3</b></h2>
			<div class="about_box">
				<ul class="place_list box_inner clear">
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.sung_pop').show();">
							<img class="img_topplace" src="img/sung.jpg" alt="다리를 높이 들어 운동" />
							<h3>숭어</h3>
							<p class="txt">태평양, 대서양, 인도양의 온대·열대 해역에 분포하며 한반도에서는 모든 해역의 연근해에 주로 서식하나 강 하구 등 민물과 섞이는 지역에도 들어올 때가 많다. </p>
							<span class="view">VIEW</span></a>
					</li>
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.mang_pop').show();">
							<img class="img_topplace" src="img/mang.jpg" alt="바닷가에서 스트레칭" />
							<h3>망둥어</h3>
							<p class="txt">망둑어과에 속하는 물고기를 ‘망둑어’ 또는 ‘망둥어’등으로 부른다. 물고기의 과 중 가장 종류가 많아서, 200여 속에 2000여 종을 포함한다</p>
							<span class="view">VIEW</span></a>
					</li>
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.gizzard_pop').show();">
							<img class="img_topplace" src="img/gizzard.jpg" alt="앉아서 스트레칭" />
							<h3>전어</h3>
							<p class="txt">몸빛은 등은 검푸르고 배는 은백색이다. 등쪽에는 갈색 반점이 있고 옆구리 앞쪽에 갈색의 큰 반점이 하나 있다.</p>
							<span class="view">VIEW</span></a>
					</li>
				</ul>
			</div>
		</div>
	


	
     <%@ include file="../footer.jsp" %>
 