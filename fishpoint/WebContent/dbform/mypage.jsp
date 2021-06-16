<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- 태그 라이브러리 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
 	<%@ include file="../header.jsp" %>
 

<title>마이페이지</title>

 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>

 <div class="location_area mypage">
			<div class="box_inner">
				<h2 class="tit_page">MYPAGE</h2>
				<p class="location">마이페이지 <span class="path">/</span> 수정</p>
				
			</div>
		</div>	
		<!-- //location_area -->
	
		
		<!-- bodytext_area -->
		<div class="bodytext_area box_inner">
			<!-- myinfo -->
			<dl class="myinfo">
				<dt>내 정보</dt>
				<dd>
					<!-- appForm -->
		<form action="main.do"  class="regForm" name="frm" method="post" >	
		<!-- <input type="hidden" name="command" value="mypageupdate"/> -->
		
		
						<fieldset>
							<legend>내정보 입력 양식</legend>
							<ul class="reg_list">
								<li class="clear">
									<span class="tit_lbl">이름</span> 
									<div class="reg_content">
									<input type="text" size="30" name="name" readonly value="${membersVO.name}"/>
									</div>
								</li>

								<li class="clear">
									<span class="tit_lbl">핸드폰</span>
									<div class="reg_content"></div>
									<input type="text" size="20" maxlength="30" 
										name="mobile" value="${membersVO.mobile }" />
								</li>
							
								<li class="clear">
									<span class="tit_lbl">이메일</span>
									<div class="reg_content"></div> 
									<input type="text" size="20" maxlength="30"  
										name="email" value="${membersVO.email }" />
								</li>
							
							</ul>
							  <li><a href="main.do?command=mypageupdate">수정하기</a></li>
							<!-- <input type="button" value="수정"
								class="btn_bbs" onclick="return();" /> -->
						</fieldset>
					</form>
					<!-- //appForm -->
				</dd>
			</dl>
			<!-- //myinfo -->			
			
		</div>
		<!-- //bodytext_area -->

	

  <%@ include file="../footer.jsp" %>
  