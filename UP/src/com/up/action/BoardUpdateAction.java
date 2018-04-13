package com.up.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.dao.BoardDAO;
import com.up.dto.BoardDTO;

public class BoardUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board.bizpoll";		
		
		Integer bno = Integer.parseInt(request.getParameter("bdupdate_bno"));
		String title = request.getParameter("bdupdate_title");
		String content = request.getParameter("bdupdate_content");
		
		BoardDTO bDto = new BoardDTO(bno, title, content);
		BoardDAO bDao = BoardDAO.getInstance();
		int result = bDao.boardUpdate(bDto);
		
		if(result > 0) {
			System.out.println("수정 성공");
		} else {
			System.out.println("수정 실패");
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);		

		return forward;
	}

}
