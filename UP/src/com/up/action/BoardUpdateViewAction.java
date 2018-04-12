package com.up.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.dao.BoardDAO;
import com.up.dto.BoardDTO;

public class BoardUpdateViewAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "boardupdate.jsp";		
		
		Integer bno = Integer.parseInt(request.getParameter("bno"));
		System.out.println("게시글 번호 : " + bno);
				 
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto =bDao.boardDetail(bno);
		
		request.setAttribute("boardUpdate", bDto);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		

		return forward;
	}

}
