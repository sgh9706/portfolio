package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.BoardsDAO;
import com.ezen.dto.BoardsVO;

public class NoticeUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String path="dbform/noticeupdate.jsp";

			int num=Integer.parseInt(request.getParameter("num"));
			String boardname=request.getParameter("boardname");
			
			System.out.println("NoticeUpdateFormAction의"+boardname); //뜸

			BoardsDAO boardsDAO=BoardsDAO.getInstance();
			BoardsVO boardsVO=boardsDAO.selectOneBoardsByNum(num,boardname);
	
			request.setAttribute("boardname",boardname);
			request.setAttribute("boardsVO",boardsVO);
			
			RequestDispatcher dispatcher=request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		
	}

}
