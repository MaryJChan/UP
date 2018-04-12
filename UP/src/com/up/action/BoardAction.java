package com.up.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.dao.BoardDAO;
import com.up.dto.BoardDTO;

public class BoardAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board.jsp";
		BoardDAO bDao = BoardDAO.getInstance();
		List<BoardDTO> list = bDao.listAll();
		
		request.setAttribute("boardList", list);					
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);

		forward.setRedirect(false);	

		return forward;

	}

}
