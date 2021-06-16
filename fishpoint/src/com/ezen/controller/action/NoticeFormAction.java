package com.ezen.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.BoardsDAO;
import com.ezen.dto.BoardsVO;

public class NoticeFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
		System.out.println("NoticeFormAction실행");
		String path="dbform/notice.jsp";
		String boardname=request.getParameter("boardname");
		
		System.out.println("NoticeFormAction boardname:"+boardname);
		
		BoardsDAO boardsDAO =BoardsDAO.getInstance();
		List<BoardsVO> boradsList = boardsDAO.selectAllBoards(boardname); //BoardVO는 dto에 있다
		
		request.setAttribute("boardsList",boradsList);
		request.setAttribute("boardname",boardname);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
	}

}
