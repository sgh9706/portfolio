<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- 태그 라이브러리 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
 	<%@ include file="../header.jsp" %>

  <meta charset="UTF-8">
<title>공지사항보기</title>
<script type="text/javascript" src="js/board.js"></script>
 <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
 
 <div class="location_area customer">
			<div class="box_inner">
				<h2 class="tit_page">FISH <span class="in">&</span> POINT</h2>
				<c:if  test="${boardname eq 'fishboarder' }">
					<p class="location">고객센터 <span class="path">/</span> 공지사항</p>
				</c:if>
				
				<c:if  test="${boardname eq 'fishinquiry' }">
					<p class="location">고객센터 <span class="path">/</span> 문의사항</p>
				</c:if>
				
			</div>
		</div>	
		<!-- //location_area -->

	
		<!-- bodytext_area -->
		<div class="bodytext_area box_inner">			
			<ul class="bbsview_list">
				<li class="bbs_title">${boardsVO.title}</li>
				<li class="bbs_hit">작성일 : <span><fmt:formatDate value="${boardsVO.writedate}"/></span></li>
				<li class="bbs_name">작성자 : <span><td>${boardsVO.name}</td></span></li>
				<li class="bbs_date">조회수 : <span><td>${boardsVO.readcount}</td></span></li>
				<li class="bbs_content">
					<div class="editer_content">
					 ${boardsVO.content}
                    </div>
				</li>
			</ul>
			
			<%
       		 //LoginAction에 있는 loginUserid !!
                if(session.getAttribute("loginUserid")==null){ 
      	    %>
      	    <p class="btn_line txt_right"><a href="main.do?command=noticeform&boardname=${boardname}" class="btn_bbs">목록</a></p>			
			<% 
                } else{
			%>
			<c:if test="${boardname eq 'fishboarder'}"> <!-- header.jsp에 있는 공지사항 확인 -->
				<c:if test="${loginUserAdmin eq '1'}">
				
				 <c:if test ="${loginUserid eq boardsVO.name}">
					<input type="button" value="게시글 수정"
					onclick="location.href='main.do?command=noticeupdeateform&num=${boardsVO.num}&boardname=${boardname}'"/>	
					<input type="button" value="게시글 삭제"
					onclick="location.href='main.do?command=noticedelete&num=${boardsVO.num}&boardname=${boardname}'"/>	
				</c:if>	
			</c:if>	
		</c:if>
		
		<c:if test="${boardname eq 'fishinquiry'}"> <!-- header.jsp에 있는 문의사항 확인 -->
				<c:if test="${loginUserAdmin eq '1'}">
					<input type="button" value="게시글 수정"
					onclick="location.href='main.do?command=noticeupdeateform&num=${boardsVO.num}&boardname=${boardname}'"/>	
					<input type="button" value="게시글 삭제"
					onclick="location.href='main.do?command=noticedelete&num=${boardsVO.num}&boardname=${boardname}'"/>	
			</c:if>	
		</c:if>
		
		
		<c:if test="${boardname eq 'fishinquiry'}"> <!-- header.jsp에 있는 문의사항 확인 -->
				<c:if test="${loginUserAdmin eq '0'}">
				
				 <c:if test ="${loginUserid eq boardsVO.name}">
					<input type="button" value="게시글 수정"
					onclick="location.href='main.do?command=noticeupdeateform&num=${boardsVO.num}&boardname=${boardname}'"/>	
					<input type="button" value="게시글 삭제"
					onclick="location.href='main.do?command=noticedelete&num=${boardsVO.num}&boardname=${boardname}'"/>	
				</c:if>	
			</c:if>	
		</c:if>
			<!--누구나 볼 수 있도록 해놨음(목록) -->
			<input type="button" value="게시글 목록"
					onclick="location.href='main.do?command=noticeform&boardname=${boardname}'"/>
				
				
			<%
                }
			%>
		
		
			
		</div>
		<!-- //bodytext_area -->

 

	
     <%@ include file="../footer.jsp" %>
 