package com.up.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.websocket.Session;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.up.dto.BoardDTO;
import com.up.mybatis.SqlMapConfig;

public class BoardDAO {
	
	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	// mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int result;
	ResultSet rs;
	
	private BoardDAO() {
		
	}
	
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	public List<BoardDTO> listAll() {
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = new ArrayList<>();
		try {
			list = sqlSession.selectList("boardListAll");
			System.out.println();
			for (BoardDTO boardDTO : list) {
				System.out.println("번호 : " + boardDTO.getBno() + "  작성자 : " + boardDTO.getWriter() + "  제목 : " + boardDTO.getTitle() + "  내용 : " + boardDTO.getContent() + "  조회수 : " + boardDTO.getHits() + "  작성일 : " + boardDTO.getRegdate());
			}			
			System.out.println();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
		return list;
	}
	
	public int boardStore(BoardDTO bDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("boardstore", bDto);
			sqlSession.commit();
			System.out.println("boardStore결과 : " + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
}
