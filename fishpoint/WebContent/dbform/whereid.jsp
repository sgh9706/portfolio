<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- 태그 라이브러리 -->
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 	<script type="text/javascript" src="script/whereidCheck.js"></script>

 <%@ include file="../header.jsp" %>

  <meta charset="UTF-8">
<title>아이디찾기</title>
 
<form action="#" method="post" name="frm" >
 	<input type="hidden" name="command" value="#"> 
            <!-- content-->
            <div id="content">
          
             
                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" name="name"  maxlength="20">
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
                    <h3 class="join_title"><label for="email">본인확인 이메일<span class="optional">(선택)</span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" name="email"class="int" maxlength="100" placeholder="선택입력">
                    </span>
                   
                </div>

                <!-- MOBILE -->
                <div class = "btn_phonNomber">
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" name="mobile" class="int" maxlength="11" placeholder="전화번호 입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>


                <!-- WHERE BTN-->
                <div class="btn_area">
                    <input type="submit" value="아이디찾기" id="btnJoin"
                    onclick="return whereidCheck();"/>

                </div>

      
            </div> 
            <!-- content-->

        </form>
</body>
</html>