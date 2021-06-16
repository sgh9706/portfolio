package com.ezen.dao;

import com.ezen.dto.BoardsVO;

import util.DBManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BoardsDAO {

	private BoardsDAO() {}
	
	private static BoardsDAO instance = new BoardsDAO();

	public static BoardsDAO getInstance() {
		return instance;
	}

	//리뷰 리스트 값 보여주기
	public List<BoardsVO> selectAllBoards(String boardname) {
		List<BoardsVO> list = new ArrayList<BoardsVO>();
		BoardsVO boardsVO = null;
		//객체 가져오기 
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs =null;
		System.out.println("selectAllBoards 호출");
		String sql ="select * from "+boardname+" order by num desc"; // 리뷰 페이지 내림차순
		try {
			conn= DBManager.getConnection();
			stmt= conn.createStatement();
			rs=stmt.executeQuery(sql);
			// 여러 가지 값을 넣을수 있도록
			while(rs.next()) {
				boardsVO = new BoardsVO();
				boardsVO.setNum(rs.getInt("num"));
				boardsVO.setAdmin(rs.getInt("admin"));
				boardsVO.setName(rs.getString("name"));
				boardsVO.setTitle(rs.getString("title"));
				boardsVO.setContent(rs.getString("content"));
				boardsVO.setReadcount(rs.getInt("readcount"));
				boardsVO.setWritedate(rs.getTimestamp("writedate"));
				
				list.add(boardsVO);
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;	//리스트 타입으로 준다
	}
	
	public BoardsVO selectOneBoardsByNum(int num,String boardname) {
		
		System.out.println("selectOneBoardsByNum("+num+") 호출되었습니다.");
		String sql = "select * from "+boardname+" where num=?";
		BoardsVO boardsVO = null;
		Connection conn = null;
		PreparedStatement pstmt= null;
		ResultSet rs =null;
		
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				boardsVO = new BoardsVO();
				boardsVO.setNum(rs.getInt("num"));
				boardsVO.setAdmin(rs.getInt("admin"));
				boardsVO.setName(rs.getString("name"));
				boardsVO.setWritedate(rs.getTimestamp("writedate"));
				boardsVO.setReadcount(rs.getInt("readcount"));
				boardsVO.setTitle(rs.getString("title"));
				boardsVO.setContent(rs.getString("content"));	
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return boardsVO;
		
	}
	//boardAction
	public void updateReadCount(int num,String boardname) {
		// TODO Auto-generated method stub
		System.out.println("updateReadCount("+num+")를 호출했습니다");
		//조회수를 1증가시키세여
		String sql = "update "+boardname+" set readcount=readcount +1 where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null ;
		
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,num);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}

	public void deleteBoards(int num,String boardname) {
		// TODO Auto-generated method stub
		String sql= "delete from "+boardname+" where num=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn= DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateBoards(BoardsVO boardsVO,String boardname ) {
		// TODO Auto-generated method stub
		//게시글 정보를 수정하세요
		System.out.println("updateBoards출력");
		String sql ="update "+boardname+" set title=?,name=?,content=? where num=?" ;

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			//?에 값 넣어주기
			conn= DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,boardsVO.getTitle());
			pstmt.setString(2,boardsVO.getName());
			pstmt.setString(3,boardsVO.getContent());
			pstmt.setInt(4,boardsVO.getNum());
			//실행하기
			int result=pstmt.executeUpdate();
			System.out.println("updateBoards result="+result);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		
		
	}

	public void insertBoards(BoardsVO boardsVO, String boardname) {
		// TODO Auto-generated method stub
		System.out.println("insertBoards() 호출되었습니다.");
		
		String sql = "insert into "+ boardname +"(num,title,name,content) "
		+"values(fishboarder_seq.nextval,?,?,?)";

		
		
		Connection conn = null; 
		PreparedStatement pstmt = null;
		
		try { 
			conn= DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);

		   
			pstmt.setString(1,boardsVO.getTitle()); 
			pstmt.setString(2, boardsVO.getName()); 
			pstmt.setString(3,boardsVO.getContent()); 
			pstmt.executeUpdate(); 
			
		}catch (Exception e) { 
			e.printStackTrace(); 
			}finally {
				DBManager.close(conn, pstmt);
			}	
	}

	

}



