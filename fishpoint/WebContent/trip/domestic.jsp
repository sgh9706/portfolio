<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- 태그 라이브러리 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
 	<%@ include file="../header.jsp" %>
 
 <title>국내</title>
 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>

 <div class="location_area black">
			<div class="box_inner">
				<h2 class="tit_page">DOMESTIC<span class="in">&</span>FISH</h2>
				<p class="location">낚시정보<span class="path">/</span>국내낚시</p>
				<ul class="page_menu clear">
					<li><a href="#" class="on">공지사항</a></li>
					<li><a href="#">문의하기</a></li>
				</ul>
			</div>
		</div>	
		<!-- //location_area -->
  <div id="container">
		<!-- bodytext_area -->
		<div class="bodytext_area place_area box_inner">
			<ul class="program_list clear">
				<li>
					<img class="img_place" src="img/domesticmap.jpg" alt="지역별 낚시" />
					<h3>상반기 낚시</h3>
					<div class="program_content">
						<p>1월~6월 <br> <span class="subtxt">빙어,산천어,임연수어,광어,우럭,감성돔,도다리,볼락,열기,참돔등 잡힌다.</span></p>
					</div>
					<p class="btn_more"><a href="javascript:;">더보기</a></p>
				</li>
				<li>
					<img class="img_place" src="img/domesticmap2.jpg" alt="지역별낚시" />
					<h3>하반기 낚시</h3>
					<div class="program_content">
						<p>7월~12월 <br> <span class="subtxt">가자미,숭어,삼치,망둥어,광어,우럭,갑오징어,쭈꾸미,감성돔,돌돔,농어,민어,갈치,벵에돔,긴꼬리벵에둠,농어등이 잡힌다.</span></p>
					</div>
					<p class="btn_more"><a href="javascript:;">더보기</a></p>
				</li>
				<li>
					<img class="img_place" src="img/newbie.jpg" alt="기본낚싯줄채비" />
					<h3>기본 낚싯줄 채비</h3>
					<div class="program_content">
						<p>초보자를 위한 기본 낚싯줄 채비<br> <span class="subtxt">기본적으로 낚싯줄 용어와 채비한 이미지 입니다. 참고 바랍니다.</span></p>
					</div>
					<p class="btn_more"><a href="javascript:;">더보기</a></p>
				</li>
				
				<li>
					<img class="img_place" src="img/fishg.jpg" alt="기본낚싯줄채비" />
					<h3>늘고 있는 낚시인</h3>
					<div class="program_content">
						<p>점점 늘어나는 낚시인<br> <span class="subtxt">이전보다 낚시에 대환 관심이 많아지는 많큼 새롭게 낚시를 즐기는 사람들이 늘고 있습니다.</span></p>
					</div>
					<p class="btn_more"><a href="javascript:;">더보기</a></p>
				</li>
				
				<li>
					<img class="img_place" src="img/fishg1.jpg" alt="기본낚싯줄채비" />
					<h3>낚시용품</h3>
					<div class="program_content">
						<p>낚시용품 판매량 증가<br> <span class="subtxt">낚시를 즐기는 인원이 늘어나는 만큼 당연스럽게 낚시 용품의 판매량도 늘고 있습니다.</span></p>
					</div>
					<p class="btn_more"><a href="javascript:;">더보기</a></p>
				</li>
				
				<li>
					<img class="img_place" src="img/fishg2.jpg" alt="기본낚싯줄채비" />
					<h3>실버세대 낚시</h3>
					<div class="program_content">
						<p>실버세대의 낚시구매량<br> <span class="subtxt">실버세대의 낚시용품 구매량을 보여주는 이미지입니다.</span></p>
					</div>
					<p class="btn_more"><a href="javascript:;">더보기</a></p>
				</li>
				
		</div>
		<!-- //bodytext_area -->

	</div>
 
 <%@ include file="../footer.jsp" %>