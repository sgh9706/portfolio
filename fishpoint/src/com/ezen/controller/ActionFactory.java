package com.ezen.controller;

import com.ezen.controller.action.Action; 
import com.ezen.controller.action.AutumnActionForm;
import com.ezen.controller.action.DomesticFormAction;
import com.ezen.controller.action.JoinAction;
import com.ezen.controller.action.JoinFormAction;
import com.ezen.controller.action.LogOutActionForm;
import com.ezen.controller.action.LoginAction;
import com.ezen.controller.action.LoginFormAction;
import com.ezen.controller.action.MainFormAction;
import com.ezen.controller.action.MypageFormAction;
import com.ezen.controller.action.MypageUpdateForm;
import com.ezen.controller.action.NoticeDeleteAction;
import com.ezen.controller.action.NoticeFormAction;
import com.ezen.controller.action.NoticeUpdateAction;
import com.ezen.controller.action.NoticeUpdateFormAction;
import com.ezen.controller.action.NoticeViewFormAction;
import com.ezen.controller.action.NoticeWriteAction;
import com.ezen.controller.action.NoticeWriteFormAction;
import com.ezen.controller.action.SpringActionForm;
import com.ezen.controller.action.SummerActionForm;
import com.ezen.controller.action.WhereidFormAction;
import com.ezen.controller.action.WinterActionForm;


public class ActionFactory {
	private ActionFactory(){
		
	}
	
	private static ActionFactory instance=new ActionFactory();

	public static ActionFactory getInstance() { 
		return instance; 
	}
	public Action getAction(String command) { 
		Action action = null; 
		System.out.println("command : " + command); //메인에서 시작 시 
		//로고[메인페이지]
		if(command.equals("mainform")) {
			action=new MainFormAction();
		}else if(command.equals("loginform")) {
			action=new LoginFormAction();
		}else if(command.equals("login")) {//DB연결
			action=new LoginAction();
		}else if(command.equals("logoutform")) {
			action=new LogOutActionForm();
		}else if(command.equals("joinform")) {
			action=new JoinFormAction();
		}else if(command.equals("join")) {//DB연결
			action=new JoinAction();
		}else if(command.equals("noticeform")) {
			action=new NoticeFormAction();
		}else if(command.equals("noticeviewform")) {
			action=new NoticeViewFormAction();
		}else if(command.equals("noticewriteform")) {
			action=new NoticeWriteFormAction();
		}else if(command.equals("noticewrite")) {
			action=new NoticeWriteAction();
		}else if(command.equals("springform")) {
			action=new SpringActionForm();
		}else if(command.equals("summerform")) {
			action=new SummerActionForm();
		}else if(command.equals("autumnform")) {
			action=new AutumnActionForm();
		}else if(command.equals("winterform")) {
			action=new WinterActionForm();
		}else if(command.equals("noticedelete")) {
			action=new NoticeDeleteAction();
		}else if(command.equals("noticeupdeateform")) {
			action=new NoticeUpdateFormAction();
		}else if(command.equals("noticeupdate")) {
			action=new NoticeUpdateAction();
		}else if(command.equals("whereidform")) {
			action=new WhereidFormAction();
		}else if(command.equals("mypageform")) {
			action=new MypageFormAction();
		}else if(command.equals("mypageupdate")){
			action=new MypageUpdateForm();
		}else if(command.equals("domesticform")) {
			action=new DomesticFormAction();
		}
		return action;
	}
	
}
