package com.up.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.BoardDAO;
import com.up.dto.BoardDTO;
import com.up.dto.NextPreDTO;

public class BoardUpdateViewAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/boardupdate.jsp";		
		
		Integer bno = Integer.parseInt(request.getParameter("bno"));
		System.out.println("게시글 번호 : " + bno);
				 
		BoardDAO bDao = BoardDAO.getInstance();
		NextPreDTO npDto =bDao.boardDetail(bno);
		
		request.setAttribute("boardUpdate", npDto);
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		

		return forward;
	}

}
