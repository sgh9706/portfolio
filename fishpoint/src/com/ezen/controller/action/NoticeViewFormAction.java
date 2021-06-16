package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.BoardsDAO;
import com.ezen.dto.BoardsVO;

public class NoticeViewFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path="dbform/noticeview.jsp";
		int num=Integer.parseInt(request.getParameter("num"));
		
		BoardsDAO boardsDAO=BoardsDAO.getInstance();
		String boardname=request.getParameter("boardname");

		boardsDAO.updateReadCount(num,boardname);
		BoardsVO boardsVO=boardsDAO.selectOneBoardsByNum(num,boardname);
		
		request.setAttribute("boardname",boardname);
		request.setAttribute("boardsVO", boardsVO);
		RequestDispatcher dispatcher=request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
