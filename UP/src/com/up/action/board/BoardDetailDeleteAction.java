package com.up.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.BoardDAO;

public class BoardDetailDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {		
		String url = "board.bizpoll";
		
		Integer bno = Integer.parseInt(request.getParameter("bno"));
		Integer bno_step = Integer.parseInt(request.getParameter("bno_step"));
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.boardUpdateBnoup(bno_step);
		int flag = bDao.boardDelete(bno);	
		
		request.setAttribute("flag", flag);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		

		return forward;
	}

}
