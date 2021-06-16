package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.dao.MembersDAO;
import com.ezen.dto.MembersVO;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path="dbform/login.jsp";
		System.out.println("LoginAction");  //값 받음
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		System.out.println("이름:"+userid); // 값을 못받음
		
		MembersDAO membersDAO=MembersDAO.getInstance();
		int result=membersDAO.userCheck(userid, pwd);
		int admin=membersDAO.getUserGrade(userid);
		System.out.println(admin);  // 값 받음
	
		
		if(result==1) {//로그인 성공시
		   path="main.jsp";
		   HttpSession session=request.getSession(); //getSession - 세션을 시작하는/새로 가져오는 메서드
		   //session.setAttribute("데이터이름",데이터값); 
		   session.setAttribute("loginUserid",userid); //setAttribute - 세션 데이터를 저장하는 메서드
		   session.setAttribute("loginUserAdmin",admin);  
		   
		   
		}else {//로그인 실패시
	         request.setAttribute("msg", "아이디 또는 비밀번호가 다릅니다.");
	      }

		
		
		MembersVO membersVO = new MembersVO();
		membersVO.setUserid(userid);
		membersVO.setPwd(pwd);
		
		new MainFormAction().execute(request, response);		
		
	}

}
