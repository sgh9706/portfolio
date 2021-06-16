package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.MembersDAO;
import com.ezen.dto.MembersVO;

public class MypageFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		String path="dbform/mypage.jsp";
		
		
		String name = request.getParameter("name"); //userid 는 header.jsp 에  있는<a href="main.do?command=mypageform&userid=<%=session.getAttribute("loginUserid")%>
		
		System.out.println("MypageFormAction의"+ name);
		
		MembersDAO membersDAO=MembersDAO.getInstance();
		MembersVO membersVO=membersDAO.getMember(name);	//로그인한 사용자의 정보
		request.setAttribute("membersVO", membersVO); //"membersVO"의 변수는 String path="dbform/Mypage.jsp";에 사용한다.
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
