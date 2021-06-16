 package com.ezen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List; 
import javax.naming.Context;
import javax.naming.InitialContext; 
import javax.sql.DataSource;

import com.ezen.dto.BoardsVO;
import com.ezen.dto.MembersVO;

import util.DBManager;


public class MembersDAO {
	
public MembersDAO() {}
	private static MembersDAO instance = new MembersDAO(); 
	public static MembersDAO getInstance() {
		return instance; 
	}  
	   
	public Connection getConnection() throws Exception{ 
		Connection conn=null;  
		Context initContext = new InitialContext();   
		Context envContext   
		= (Context) initContext.lookup("java:/comp/env");
		DataSource ds   
		= (DataSource) envContext.lookup("jdbc/myoracle");
	conn =ds.getConnection();
	return conn; 
	} 
		  
	public int confirmID(String userid) {
		int result= -1;	
		String sql = "select userid from fishmember where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userid);			
				rs = pstmt.executeQuery();
				if(rs.next()) { 
					result=1; 
				}
			
		}catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	} 
	
	public int insertMember(MembersVO memberVO) { 
		int result = -1;
		System.out.println("insertMember");
		String sql = "insert into fishmember values(?,?,?,?,?,?,?,?,?,?)";	
		Connection conn = null;
		PreparedStatement pstmt =null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,memberVO.getAdmin());
			pstmt.setString(2, memberVO.getUserid());
			pstmt.setString(3,memberVO.getPwd());
			pstmt.setString(4,memberVO.getPwd_check());
			pstmt.setString(5,memberVO.getName());
			pstmt.setInt(6,memberVO.getYy());
			pstmt.setInt(7, memberVO.getMm());
			pstmt.setInt(8, memberVO.getDd());
			pstmt.setString(9, memberVO.getEmail());
			pstmt.setString(10, memberVO.getMobile());
			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
		
	public int userCheck(String userid,String pwd) {
		int result = -1;
		
		String sql = "select pwd from fishmember where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn =getConnection();
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1,userid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				
				if(rs.getString("pwd") != null &&			
						rs.getString("pwd").equals(pwd)) { 
						result =1;
						
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	}
	
	public MembersVO getMember(String userid) {
		MembersVO memberVO =null;	
		String sql = "select * from fishmember where userid=?";	
		Connection conn = null;	
		PreparedStatement pstmt = null;	
		ResultSet rs= null;	
		
		try {
			
			conn=getConnection();
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1,userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				memberVO =new MembersVO();
				memberVO.setAdmin(rs.getInt("admin"));
				memberVO.setUserid(rs.getString("userid"));
				memberVO.setPwd(rs.getString("pwd"));
				memberVO.setPwd_check(rs.getString("pwd_check"));
				memberVO.setName(rs.getString("name"));
				memberVO.setYy(rs.getInt("yy"));
				memberVO.setMm(rs.getInt("mm"));
				memberVO.setDd(rs.getInt("dd"));
				memberVO.setEmail(rs.getString("email"));
				memberVO.setMobile(rs.getString("mobile"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		} 
		return memberVO;
	}
	
	
	public int getUserGrade(String userid) {
		int admin=1;
		String sql="select admin from fishmember where userid=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		
		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				admin=rs.getInt("admin");
			}
			System.out.println("getUserGrade 호출 : "+ admin);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return admin;
		
	}

public void updatemypage(MembersVO membersVO) {
	//마이페이지 수정
		System.out.println("member_updatemypage실행");
		String sql="update fishmember set name=?,mobile=?,email=? where userid=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
	
		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,membersVO.getName());
			pstmt.setString(2,membersVO.getMobile());  
			pstmt.setString(3,membersVO.getEmail());		
			pstmt.setString(4,membersVO.getUserid());
			//실행하기
			//result 1값이 들어가면 수정가능
			int result=pstmt.executeUpdate();
			System.out.println("updatemypage result="+result);
		}catch (Exception e) {
			e.printStackTrace();	
		}finally { 
			DBManager.close(conn, pstmt);
			
		}
	
	} 
}











