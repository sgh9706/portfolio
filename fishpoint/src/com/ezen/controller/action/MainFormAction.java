package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.MembersDAO;
import com.ezen.dto.MembersVO;

public class MainFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path="main.jsp";
		String userid = request.getParameter("userid"); //userid를 요청하다.
		
		MembersDAO membersDAO = MembersDAO.getInstance();
		MembersVO membersVO =membersDAO.getMember(userid);
		
		request.setAttribute("membersVO", membersVO);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
