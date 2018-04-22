package com.up.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sun.org.apache.bcel.internal.generic.IREM;
import com.up.dto.BoardDTO;
import com.up.dto.CriteriaDTO;
import com.up.dto.NextPreDTO;
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
	
	public NextPreDTO boardDetail(Integer bno) {
		NextPreDTO npDto = new NextPreDTO();
		sqlSession = sqlSessionFactory.openSession();
		try {
			// 여러건 출력 : selectList = List Type
			// 단건 출력 : selectOne = DTO Type
			npDto = sqlSession.selectOne("boarddetailview", bno);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
		return npDto;
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
			
			int result2 = sqlSession.delete("boardReplyDelete2", bno);			
			sqlSession.commit();
			
			if (result2 > 0) {
				System.out.println("게시글의 댓글 삭제 완료");
			} else {
				System.out.println("게시글의 댓글 삭제 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	public int boardHits(int bno, HttpSession countSession) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			long update_time = 0;
			
			// 조회수를 증가할 때 생기는 read_time_게시글 번호가 없으면
			// 현재 처음 조회수를 1증가하는 경우임
			if(countSession.getAttribute("read_time_" + bno) != null) {
				update_time = (long)countSession.getAttribute("read_time_" + bno);
			}
			
			// 현재 시간을 담는 변수
			long current_time = System.currentTimeMillis();
			
			// 현재시간과 조회수 1증가한 시간을 비교해서 24시간(1일)이 지났으면
			// 조회수 1 증가
			if(current_time - update_time > 24 * 60 * 60 * 1000) {
				result = sqlSession.update("boardhitsupdate", bno);
				sqlSession.commit();
				
				countSession.setAttribute("read_time_" + bno, bno);
			}			
			
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
