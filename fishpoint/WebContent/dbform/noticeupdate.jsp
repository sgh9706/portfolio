<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- 태그 라이브러리 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
 	<%@ include file="../header.jsp" %>
 
<script type="text/javascript" src="js/board.js"></script>		
  <meta charset="UTF-8">
<title> 수정</title>
 
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
 
 
 <form name="frm" method="post" action="main.do?command=noticeupdate&boardname=${boardname}" class="noticewriteform">
	<!-- 	<input type="hidden" name="command" value="noticeupdate"/> -->
			<input type="hidden" name="num" value="${boardsVO.num }"/>
			
	<div align="center" class="noticeview">	
	<tr>
		<td bgcolor=white>
			<table class = "table2">
				<tr>
					<td>제목*</td>
					<td>
						<input type="text" size="50" name="title" 
						value="${boardsVO.title }"/>
					</td>
				</tr>
				
				<tr>
					<td>작성자*</td>
					<td>
						<input type="text" size="30" name="name"
						readonly value="${boardsVO.name }"/>
					</td>
				</tr>
				
			
				<tr>
					<td>내용*</td>
					<td>
						<textarea cols="70" rows="15" name="content">${boardsVO.content }</textarea>
					</td>
				</tr>
				
			</table>
		</td>
	</tr>
		
		<input id="noticewritebtn" type="submit" value="등록"
			onclick="return boardCheck();" />
		<input id="noticewritebtn" type="reset" value="다시 작성" 
		onclick="return();"/>
		<input id="noticewritebtn" type ="button" value="목록" 
		onclick="location.href='main.do?command=noticeform&boardname=${boardname}'"/>
		</div>
	</form>
	

 
 
 	
     <%@ include file="../footer.jsp" %>