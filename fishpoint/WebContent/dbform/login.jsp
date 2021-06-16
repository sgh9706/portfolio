<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <script type="text/javascript" src="script/member.js"></script>
 <%@ include file="../header.jsp" %>

 	<title>로그인</title>
   
   
   <form action="main.do" method="post" name="frm" class="main_form">
   <input type="hidden" name="command" value="login"> 
    <section class="login-input-section-wrap">
			<div class="login-input-wrap">	
				<input placeholder="Username" type="text" name="userid"/>
			</div>
			
			<div class="login-input-wrap password-wrap">	
				<input placeholder="Password" type="password" name ="pwd"/>
			</div>
			
			<div class="login-submit-wrap">
				<input type="submit" value="로그인" onclick="return loginCheck();"/>
            </div>
           
          <div> 
          			
	                <input type="button" value="아이디찾기" class="idcheck" onclick="location.href='main.do?command=whereidform'"/>
	                <input type="button" value="회원가입" class="newbie" onclick="location.href='main.do?command=joinform'"/>
          </div>
            
        </section>
        </form>
			 <div class="msg">
				${msg}
			</div>
        </body>
</html>
  