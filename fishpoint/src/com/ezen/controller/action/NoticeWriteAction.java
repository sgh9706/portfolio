package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.BoardsDAO;
import com.ezen.dto.BoardsVO;

public class NoticeWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");  // 매우 중요(값을 받을때 한글 깨짐 방지)
		
		String boardname=request.getParameter("boardname");
		System.out.println(boardname);
		
		BoardsVO boardsVO = new BoardsVO();
		
		boardsVO.setTitle(request.getParameter("title"));
		boardsVO.setName(request.getParameter("name"));
		boardsVO.setContent(request.getParameter("content"));
		
		BoardsDAO boardsDAO =BoardsDAO.getInstance();
		boardsDAO.insertBoards(boardsVO, boardname);
		
		request.setAttribute("boardname",boardname);
		
	
		new NoticeFormAction().execute(request, response);
	}

}
