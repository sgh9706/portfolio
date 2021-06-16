package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.dao.MembersDAO;
import com.ezen.dto.MembersVO;

public class MypageUpdateForm implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//세션 변환
		String userid = (String) session.getAttribute("loginUserid");
		System.out.println("mypageupdateform실행"); 		//실행
		//System.out.println("mypageupdateuserid="+userid); //실행
		
		//2021-06-10 - userid 시작
	//	String userid=request.getParameter("loginUserid");
		
		MembersVO membersVO = new MembersVO();
		//2021-06-10 -userid 끝
		
		// null값을 받아옴
		/*String name = request.getParameter("name"); //"name" 값이 안들어감 
		System.out.println("mypageupdateform_name="+name);
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		*/
		
		
		membersVO.setUserid(request.getParameter("userid"));
		membersVO.setName(request.getParameter("name"));
		System.out.println("mypageupdateform_name="+userid);

		membersVO.setMobile(request.getParameter("mobile"));
		membersVO.setEmail(request.getParameter("email"));
		
		/*membersVO.setUserid(userid);
		membersVO.setName(name);
		membersVO.setMobile(mobile);
		membersVO.setEmail(email);
		*/
		
		
		MembersDAO membersDAO = MembersDAO.getInstance();
		membersDAO.updatemypage(membersVO);
		
		new MainFormAction().execute(request, response);
	}

}
