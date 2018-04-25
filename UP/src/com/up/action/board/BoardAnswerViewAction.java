package com.up.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.BoardDAO;
import com.up.dto.BoardDTO;

public class BoardAnswerViewAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="board/boardanswerregister.jsp";
		Integer bno = Integer.parseInt(request.getParameter("bno"));
		System.out.println("bno =====> " + bno);
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = 	bDao.BoardAnswerView(bno);
		
		bDto.setContent("    ----------------------------------------------------------- 게시글의 내용 ------------------------------------------------------------\n\n\n	" + bDto.getContent() + "	\n\n\n    -----------------------------------------------------------------------------------------------------------------------------------------\n");
		request.setAttribute("boardAnswerView", bDto);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}
		

}
