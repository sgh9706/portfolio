<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ include file="../header.jsp" %>
 
 <script type="text/javascript" src="script/member.js"></script>
 <title>회원가입</title>
 <form action="main.do" method="post" name="frm" >
 	<input type="hidden" name="command" value="join"> 
            <!-- content-->
            <div id="content">
            
        	  <li class="clear">
					<span class="tit_lbl">등급</span>
						<div class="reg_content radio_area">
										<input type="radio" class="css-radio" id="mmm_lbl" name="admin" value="1" ><label for="mmm_lbl">관리자</label>
										<input type="radio" class="css-radio" id="www_lbl" name="admin" value="0" checked="checked"><label for="www_lbl">사용자</label>
									</div>
			  </li>  
        
                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" name="userid"  maxlength="20" placeholder="4자리 이상 입력해주세요.">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pass">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pass" name="pwd" maxlength="20" placeholder="비밀번호"/>
                      
                    </span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pass-check">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pass-check" name="pwd_check" maxlength="20" placeholder="비밀번호 확인"/>
                       
                    </span>
                </div>
         <!--      
            <input type="submit" value="비밀번호 확인" id="pass-check-Confirming" 
                    onclick="return pwdCheck();"/>
			-->  
                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" name="name"  maxlength="20" placeholder="이름을 입력해 주세요.">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="number" id="yy" name="yy" class="int" maxlength="4" placeholder="년(4자)">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" class="sel" name="mm">
                                    <option>월</option>
                                    <option value="01">1월</option>
                                    <option value="02">2월</option>
                                    <option value="03">3월</option>
                                    <option value="04">4월</option>
                                    <option value="05">5월</option>
                                    <option value="06">6월</option>
                                    <option value="07">7월</option>
                                    <option value="08">8월</option>
                                    <option value="09">9월</option>                                    
                                    <option value="10">10월</option>
                                    <option value="11">11월</option>
                                    <option value="12">12월</option>
                                </select>
                            </span>
                        </div>

                        <!-- BIRTH_DD -->
                        <div id="bir_dd">
                            <span class="box">
                                <input type="number" id="dd" name="dd" class="int" maxlength="2" placeholder="일">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>

              

                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">이메일<span class="optional">(선택)</span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" name="email"class="int" maxlength="100" placeholder="선택입력">
                    </span>
                   
                </div>

                <!-- MOBILE -->
                <div class = "btn_phonNomber">
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" name="mobile" class="int" maxlength="11" placeholder="전화번호 11자리 입력(-는 넣지 마세요)">
                    </span>
                    <span class="error_next_box"></span>    
                </div>


                <!-- JOIN BTN-->
                <div class="btn_area">
                    <input type="submit" value="가입하기" id="btnJoin"
                    onclick="return joinCheck();"/>

                </div>

      
            </div> 
            <!-- content-->

        </form>
</body>
</html>