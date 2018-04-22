package com.up.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.up.dto.BoardDTO;
import com.up.dto.BoardReplyDTO;
import com.up.mybatis.SqlMapConfig;

public class BoardReplyDAO {
	
	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	// mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int result;
	ResultSet rs;
	
	private BoardReplyDAO() {}
	
	private static BoardReplyDAO instance = new BoardReplyDAO();
	
	public static BoardReplyDAO getInstance() {
		return instance;
	}
	
	public int boardReplyStore(BoardReplyDTO rDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("boardReplyStore", rDto);
			sqlSession.commit();
			System.out.println("boardReplyStore결과 : " + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
	public List<BoardReplyDTO> boardReplyView(Integer bno) {
		List<BoardReplyDTO> list = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			list = sqlSession.selectList("boardReplyView", bno);
			System.out.println("boardReplyView불러오기 성공");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	public int boardReplyDelete(Integer rno) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.delete("boardReplyDelete", rno);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	public int boardReplyUpdate(BoardReplyDTO rDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("boardReplyUpdate", rDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
}
