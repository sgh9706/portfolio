package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.MembersDAO;
import com.ezen.dto.MembersVO;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("joinAction");
		request.setCharacterEncoding("UTF-8");
		int admin =Integer.parseInt(request.getParameter("admin"));
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String pwd_check = request.getParameter("pwd_check");
		String name = request.getParameter("name");
		int yy = Integer.parseInt(request.getParameter("yy"));
		int mm = Integer.parseInt(request.getParameter("mm"));
		int dd = Integer.parseInt(request.getParameter("dd"));
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		
		System.out.println(userid);
		MembersVO membersVO = new MembersVO();
		membersVO.setAdmin(admin);
		membersVO.setUserid(userid);
		membersVO.setPwd(pwd);
		membersVO.setPwd_check(pwd_check);
		membersVO.setName(name);
		membersVO.setYy(yy);
		membersVO.setMm(mm);
		membersVO.setDd(dd);
		membersVO.setEmail(email);
		membersVO.setMobile(mobile);
		
		
		MembersDAO membersDAO = MembersDAO.getInstance();
		int result = membersDAO.insertMember(membersVO);
		
		if(result == 1) {
			request.setAttribute("msg", "회원가입에 성공했습니다.");
		}else {
			request.setAttribute("msg", "회원가입에 실패했습니다.");
		}
		
		new LoginFormAction().execute(request, response);
		
	}
}
