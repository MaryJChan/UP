package com.up.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.up.dto.BoardRecommentDTO;
import com.up.dto.BoardReplyDTO;
import com.up.mybatis.SqlMapConfig;

public class BoardRecommentDAO {
	// MyBatis 세팅값 호출
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
		// mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result;
		ResultSet rs;
		
		private BoardRecommentDAO() {}
		
		private static BoardRecommentDAO instance = new BoardRecommentDAO();
		
		public static BoardRecommentDAO getInstance() {
			return instance;
		}

		public int boardRecommentStore(BoardRecommentDTO rcDto) {
			sqlSession = sqlSessionFactory.openSession();
			try {
				result = sqlSession.insert("boardRecommentStore", rcDto);
				sqlSession.commit();
				System.out.println("boardRecommentStore결과 : " + result);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			return result;
		}

		public List<BoardRecommentDTO> boardRecommentView(int bno) {
			List<BoardRecommentDTO> list = null;
			sqlSession = sqlSessionFactory.openSession();
			try {
				list = sqlSession.selectList("boardRecommentView", bno);
				System.out.println("boardRecommentView불러오기 성공");
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			return list;			
		}
}
