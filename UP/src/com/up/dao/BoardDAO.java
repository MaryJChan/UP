package com.up.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.up.dto.BoardDTO;
import com.up.dto.CriteriaDTO;
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
	
	public List<BoardDTO> listAll(CriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = new ArrayList<>();
		try {
			list = sqlSession.selectList("listCriteria", criDto);
			System.out.println(list.size());
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
	
	public int totalCount() {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("countPaging");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}	
	
	public int searchTotalCount(CriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("searchCountPaging", criDto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
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
	
	public BoardDTO boardDetail(Integer bno) {
		BoardDTO bDto = new BoardDTO();
		sqlSession = sqlSessionFactory.openSession();
		try {
			// 여러건 출력 : selectList = List Type
			// 단건 출력 : selectOne = DTO Type
			bDto = sqlSession.selectOne("boarddetailview", bno);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
		return bDto;
	}
	
	public int boardUpdate(BoardDTO bDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("boardupdate", bDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
	public int boardDelete(Integer bno) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.delete("boarddelete", bno);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	public int boardHits(int bno) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("boardhitsupdate", bno);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	public List<BoardDTO> boardSearch(CriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = new ArrayList<>();
		try {
			list = sqlSession.selectList("boardSearch", criDto);
			
			System.out.println(list.size());
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

	public List<BoardDTO> boardCategory(CriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = new ArrayList<>();
		try {
			list = sqlSession.selectList("boardCategoryView", criDto);
			
			System.out.println(list.size());
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

	public int categoryTotalCount(CriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.selectOne("categoryCountPaging", criDto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}
	
}
