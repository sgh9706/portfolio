package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.BoardsDAO;

public class NoticeDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String boardname=request.getParameter("boardname");
		System.out.println(boardname);
		
		int num = Integer.parseInt(request.getParameter("num"));
		BoardsDAO boardsDAO = BoardsDAO.getInstance();
		
		
		boardsDAO.deleteBoards(num,boardname);
		request.setAttribute("boardname",boardname);
		
		new NoticeFormAction().execute(request, response); //객체 강제 실행
	}

}
