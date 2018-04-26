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
	
	public int boardReplyRegister(BoardReplyDTO rDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("boardReplyRegister", rDto);
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

	public void boardReplyDelete(Integer rno_step) {
		sqlSession = sqlSessionFactory.openSession();
		try {			
			result = sqlSession.delete("boardReplyDelete", rno_step);
			sqlSession.commit();			
			if(result > 0) {
				System.out.println("댓글 삭제 성공");
			} else {
				System.out.println("댓글 삭제 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
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

	public String boardWriterGrade(String writer) {
		sqlSession = sqlSessionFactory.openSession();
		String grade = null;
		try {
			grade = sqlSession.selectOne("boardWriterGrade", writer);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return grade;
	}

	public int boardRecommentStore(BoardReplyDTO rDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.insert("boardRecommentStore", rDto);
			sqlSession.commit();
			System.out.println("boardRecommentStore결과 : " + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	public BoardReplyDTO boardReplySelect(Integer rno_step) {
		sqlSession = sqlSessionFactory.openSession();
		BoardReplyDTO rDto = new BoardReplyDTO();
		try {
			rDto = sqlSession.selectOne("boardReplySelect", rno_step);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return rDto;
		
	}

	public void boardReplyRno_stepUpdate(Integer rno_step) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("boardReplyRno_stepUpdate", rno_step);
			sqlSession.commit();
			System.out.println("boardReplyRno_stepUpdate결과 : " + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
	}
	
	// 게시글 삭제시 rno_step 수정
	public void boardReplyRno_stepUpdate2(Integer rno_step) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("boardReplyRno_stepUpdate2", rno_step);
			sqlSession.commit();
			if(result > 0) {
				System.out.println("rno_step 수정 성공");
			} else {
				System.out.println("rno_step 수정 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
	}
	
}
