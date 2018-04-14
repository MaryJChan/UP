package com.up.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.BoardDAO;
import com.up.dto.BoardDTO;

public class BoardRegisterStoreAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board.bizpoll";		
		
		String title = request.getParameter("bdregister_title");
		String content = request.getParameter("bdregister_content");
		String writer = request.getParameter("bdregister_writer");
		System.out.println("제목 : " + title + "  내용 : " + content + "  작성자 : " + writer);
				
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = new BoardDTO(title, content, writer);
		int result = bDao.boardStore(bDto);
		
		if(result > 0) {
			System.out.println("게시글 등록 성공");
		} else {
			System.out.println("게시글 등록 실패");
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		// 새로고침시에도 게시글이 등록되지 않음 
		forward.setRedirect(true);		

		return forward;
	}

}
