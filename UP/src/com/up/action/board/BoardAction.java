package com.up.action.board;

import java.io.IOException;
import java.util.Date;
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

public class BoardAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/board.jsp";
		int flag = 0;
		
		// 객체 생성과 동시에 page = 1, perPageNum = 10이됨
		CriteriaDTO criDto = new CriteriaDTO();
		
		// action에서 사용하는 page변수
		int page = 1;
		// 1페이지가 아닌경우
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}		
		System.out.println("페이지 번호 : " + page);
		
		// CriteriaDTO에 page를 1로 변경
		criDto.setPage(page);
		
		// bDao객체 생성
		BoardDAO bDao = BoardDAO.getInstance();
		
		// bDao에 listAll메서드에 criDto를 매게변수로 주고 Mapper를 통해 조건에 맞는 행을 담아 list변수에 저장
		List<BoardDTO> list = bDao.listAll(criDto);
		
		// list를 view딴으로 보냄
		request.setAttribute("boardList", list);			
		
		// 페이지 메이커 설정
		// 페이지 메이커 객체 생성
		PageMakerDTO pageMaker = new PageMakerDTO();
		
		// 페이지 메이커DTO에 criDto를 매게변수로 보냄 [criDto값을 모두사용]
		pageMaker.setCriDto(criDto);
		
		// 전체 개수를 구함
		int totalcount = bDao.totalCount();
		
		// 페이지 메이커DTO의 setTotalCount메서드에 totalcount를 매게변수로 보냄
		pageMaker.setTotalCount(totalcount);
		
		request.setAttribute("pageMaker", pageMaker);
		request.setAttribute("flag", flag);
		
		// 오늘 날짜를 보내준다
		Date today = new Date();
		
		request.setAttribute("today", today);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);

		forward.setRedirect(false);	

		return forward;

	}

}
