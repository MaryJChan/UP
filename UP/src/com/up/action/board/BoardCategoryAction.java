package com.up.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.BoardDAO;
import com.up.dto.BoardDTO;
import com.up.dto.CriteriaDTO;
import com.up.dto.PageMakerDTO;

public class BoardCategoryAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "board/board.jsp";	
		
		// criDto 계산하기
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		// 1페이지가 아닌경우
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지 번호 : " + page);
		criDto.setPage(page);
		
		// 검색된 게시판 리스트 출력			
		BoardDAO bDao = BoardDAO.getInstance();
		
		String category = request.getParameter("category");
		
		System.out.println(category);
				
		// criDto에 category값 추가
		criDto.setCategory(category);
		
		List<BoardDTO> boardList = bDao.boardCategory(criDto);
		request.setAttribute("boardList", boardList);			
		
		
		// 페이지 메이커 설정
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		
		int result = bDao.categoryTotalCount(criDto);
		pageMaker.setTotalCount(result);
		
		request.setAttribute("pageMaker", pageMaker);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		

		return forward;		
		
	}

}
