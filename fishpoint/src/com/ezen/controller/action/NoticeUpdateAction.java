package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.BoardsDAO;
import com.ezen.dto.BoardsVO;


public class NoticeUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String boardname=request.getParameter("boardname");
		System.out.println(boardname); // db의 fishboarder 출력 
		
		int boardsnum=Integer.parseInt(request.getParameter("num"));
	
		
		//BoardsDAO boardsDAO=BoardsDAO.getInstance();
		BoardsVO boardsVO =new BoardsVO();
		
		boardsVO.setTitle(request.getParameter("title"));
		boardsVO.setName(request.getParameter("name"));
		boardsVO.setContent(request.getParameter("content"));
		boardsVO.setNum(Integer.parseInt(request.getParameter("num")));
		
		BoardsDAO boardsDAO =BoardsDAO.getInstance();
		boardsDAO.updateBoards(boardsVO , boardname);
		

		System.out.println(boardsVO+"BoardsVO [ ] 값 나오는곳");
		
		request.setAttribute("boardname",boardname); //("이름",값)
		
		
		new NoticeFormAction().execute(request, response);
	}
}
