package com.up.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.dao.BoardDAO;
import com.up.dto.BoardDTO;
import com.up.dto.CriteriaDTO;
import com.up.dto.PageMakerDTO;

public class BoardAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board.jsp";
		
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		// 1페이지가 아닌경우
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지 번호 : " + page);
		criDto.setPage(page);
		
		BoardDAO bDao = BoardDAO.getInstance();
		List<BoardDTO> list = bDao.listAll(criDto);
		/*BoardDAO bDao = BoardDAO.getInstance();
		List<BoardDTO> list = bDao.listAll();*/
		
		request.setAttribute("boardList", list);			
		
		// 페이지 메이커 설정
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		
		int result = bDao.totalCount(criDto);
		pageMaker.setTotalCount(result);
		
		request.setAttribute("pageMaker", pageMaker);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);

		forward.setRedirect(false);	

		return forward;

	}

}
