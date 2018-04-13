package com.up.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.dao.BoardDAO;
import com.up.dto.BoardDTO;

public class BoardDetailAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "boarddetail.jsp";		
		
		BoardDTO bDto = null;
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		int hits = Integer.parseInt(request.getParameter("hits"));
		System.out.println("게시글 번호 : " + bno);
		System.out.println("조회수 : " + hits);
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDto = bDao.boardDetail(bno);
		System.out.println("번호 : " + bDto.getBno() + "  제목 : " + bDto.getTitle() + "  내용" + bDto.getContent() + "  작성자 : " + bDto.getWriter() + "  조회수 : " + bDto.getHits() + "  작성일 : " + bDto.getRegdate());
		
		request.setAttribute("boardDetailList", bDto);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		

		return forward;		
	}

}
