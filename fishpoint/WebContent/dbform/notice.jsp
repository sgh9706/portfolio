<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- 태그 라이브러리 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
 	<%@ include file="../header.jsp" %>
 

 
<title>공지사항</title>
 

	
	<div id="container">
		<!-- location_area -->
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
			<form action="#" class="minisrch_form" method="post">
				<fieldset>
					<legend>검색</legend>
					<input type="text" class="tbox" title="검색어를 입력해주세요" placeholder="검색어를 입력해주세요">
					<a href="javascript:;" class="btn_srch">검색</a>
				</fieldset>
			</form>

	<div id="mainWrapper">

        <ul>
            <!-- 게시판 제목 -->
         
          <c:if  test="${boardname eq 'fishboarder' }">
          	  <h2> 공지사항 </h2>
          </c:if>
          
           <c:if  test="${boardname eq 'fishinquiry' }">
          	  <h2> 문의사항 </h2>
          </c:if>
          
        <table class="bbsListTbl" summary="번호,제목,조회수,작성일 등을 제공하는 표">
            	<thead>
					<tr>
						<th scope="col">No</th>
						<th scope="col">사용자</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
						<th scope="col">조회수</th>
					</tr>
				</thead>
				<c:forEach var="boards" items="${boardsList}">
				<tbody>
					<tr>
						<td>${boards.num}</td>
						<td class="tit_notice">${boards.admin}</td>
						<td><a href="main.do?command=noticeviewform&num=${boards.num}&boardname=${boardname}">${boards.title}</a></td>
						<td>${boards.name}</td>
						<td><fmt:formatDate value="${boards.writedate}" /></td>
						<td>${boards.readcount}</td>
					</tr>
				</tbody>
				</c:forEach>
				</table>
	<!-- 게시물이 출력될 영역 -->

	<div>
		   <%
       		 //LoginAction에 있는 loginUserid !!
                if(session.getAttribute("loginUserid")==null){ 
      	   %>
      	   <div class="notice_logingo">
      	   		<a href="main.do?command=loginform">로그인 후 글쓰기</a>		
      	  </div>
      	   <%
                } else{
			%>
			<!-- 관리자 공지사항 글쓰기-->
			<c:if test="${boardname eq 'fishboarder'}"> <!-- header.jsp에 있는 공지사항 확인 -->
				<c:if test="${loginUserAdmin eq '1'}"> <!-- 로그인한 유저의 등급 확인 -->
					<p class="btn_line txt_right">
					   <a href="main.do?command=noticewriteform&userid=<%=session.getAttribute("loginUserid")%>&boardname=${boardname}" class="btn_bbs">관리자 등록</a> 
					</p>	
				</c:if>
			</c:if>	
			
				<!-- 관리자 문의사항 글쓰기-->
			<c:if test="${boardname eq 'fishinquiry'}"> <!-- header.jsp에 있는 공지사항 확인 -->
				<c:if test="${loginUserAdmin eq '1'}"> <!-- 로그인한 유저의 등급 확인 -->
					<p class="btn_line txt_right">
					   <a href="main.do?command=noticewriteform&userid=<%=session.getAttribute("loginUserid")%>&boardname=${boardname}" class="btn_bbs">관리자 등록</a> 
					</p>	
				</c:if>
			</c:if>	
			
			<!-- 문의사항 사용자 글쓰기 -->
			<c:if  test="${boardname eq 'fishinquiry'}"> 
				<c:if test="${loginUserAdmin eq '0'}">
					<p class="btn_line txt_right">
					   <a href="main.do?command=noticewriteform&userid=<%=session.getAttribute("loginUserid")%>&boardname=${boardname}" class="btn_bbs">문의하기</a> 
					</p>	
				</c:if>
			</c:if> <!-- header.jsp에 있는 공지사항 확인 -->		
		
		
		
			<%
                }
			%>
		
	</div>	

		</div>
		<!-- //bodytext_area -->
	
			
			<!-- pagination -->
			<div class="pagination">
				<a href="javascript:;" class="firstpage  pbtn"><img src="img/btn_firstpage.png" alt="첫 페이지로 이동"></a>
				<a href="javascript:;" class="prevpage  pbtn"><img src="img/btn_prevpage.png" alt="이전 페이지로 이동"></a>
				<a href="javascript:;"><span class="pagenum currentpage">1</span></a>
				<a href="javascript:;"><span class="pagenum">2</span></a>
				<a href="javascript:;"><span class="pagenum">3</span></a>
				<a href="javascript:;"><span class="pagenum">4</span></a>
				<a href="javascript:;"><span class="pagenum">5</span></a>
				<a href="javascript:;" class="nextpage  pbtn"><img src="img/btn_nextpage.png" alt="다음 페이지로 이동"></a>
				<a href="javascript:;" class="lastpage  pbtn"><img src="img/btn_lastpage.png" alt="마지막 페이지로 이동"></a>
			</div>
			<!-- //pagination -->
			
		</div>
		<!-- //bodytext_area -->

	</div>
	<!-- //container -->

     <%@ include file="../footer.jsp" %>
 