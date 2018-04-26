package com.up.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.up.dto.BoardFavoriteDTO;
import com.up.mybatis.SqlMapConfig;

public class BoardFavoriteDAO {
	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	// mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int result;
	ResultSet rs;
	
	private BoardFavoriteDAO() {}
	
	private static BoardFavoriteDAO instance = new BoardFavoriteDAO();
	
	public static BoardFavoriteDAO getInstance() {
		return instance;
	}

	public List<BoardFavoriteDTO> boardFavoriteCheck(BoardFavoriteDTO fDto) {
		List<BoardFavoriteDTO> list = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			list = sqlSession.selectList("boardFavoriteCheck", fDto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return list;
	}

	public void boardFavoriteInsert(BoardFavoriteDTO fDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("boardFavoriteInsert", fDto);
			sqlSession.commit();
			if(result > 0) {
				System.out.println("boardFavoriteInsert 성공");
			} else {
				System.out.println("boardFavoriteInsert 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}	
		
	}

	public BoardFavoriteDTO boardFavoriteSelect(BoardFavoriteDTO fDto) {		
		sqlSession = sqlSessionFactory.openSession();		
		try {
			fDto = sqlSession.selectOne("boardFavoriteSelect", fDto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return fDto;
		
	}

	public int boardFavoriteUpdate(BoardFavoriteDTO fDto) {
		sqlSession = sqlSessionFactory.openSession();		
		try {
			System.out.println(fDto.getUseyn());
			result = sqlSession.update("boardFavoriteUpdate", fDto);
			sqlSession.commit();
			
			if(result > 0) {
				System.out.println("boardFavoriteUpdate 성공");
			} else {
				System.out.println("boardFavoriteUpdate 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
		
	}
	
	public int boardGoodcntselect(Integer bno) {
		int goodcnt = 0;

		sqlSession = sqlSessionFactory.openSession();
		try {
			goodcnt = sqlSession.selectOne("boardGoodcntSelect", bno);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return goodcnt;
	}

}
