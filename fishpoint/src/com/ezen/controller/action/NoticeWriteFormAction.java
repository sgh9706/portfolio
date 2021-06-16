package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.MembersDAO;
import com.ezen.dto.MembersVO;

public class NoticeWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path="dbform/noticewrite.jsp";
		
		String userid = request.getParameter("userid"); //userid 는 notice.jsp 에  있는 a href="main.do?command=noticewriteform&userid 의 userid변수
		String boardname = request.getParameter("boardname"); 
		
		System.out.println("NoticeWriteFormAction의"+ userid);
		System.out.println("NoticeWriteFormAction의"+ boardname);
		
		MembersDAO membersDAO=MembersDAO.getInstance();
		MembersVO membersVO=membersDAO.getMember(userid);	//로그인한 사용자의 정보
		request.setAttribute("membersVO", membersVO); //"membersVO"의 변수는 String path="dbform/noticewrite.jsp";에 사용한다.
		request.setAttribute("boardname",boardname);
		RequestDispatcher dispatcher=request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
