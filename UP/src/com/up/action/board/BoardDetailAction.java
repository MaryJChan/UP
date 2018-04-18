package com.up.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.BoardDAO;
import com.up.dao.BoardReplyDAO;
import com.up.dto.BoardDTO;
import com.up.dto.BoardReplyDTO;

public class BoardDetailAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/boarddetail.jsp";		
		
		List<BoardReplyDTO> list = null;
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		System.out.println("게시글 번호 : " + bno);
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = null;
		int result = bDao.boardHits(bno);
		
		if (result > 0) {
			System.out.println("조회수 수정 완료");
		} else {
			System.out.println("조회수 수정 실패");
		}
		
		bDto = null;
		bDto = bDao.boardDetail(bno);
		System.out.println("번호 : " + bDto.getBno() + "  제목 : " + bDto.getTitle() + "  내용" + bDto.getContent() + "  작성자 : " + bDto.getWriter() + "  조회수 : " + bDto.getHits() + "  작성일 : " + bDto.getRegdate());
		
		request.setAttribute("boardDetailList", bDto);
		request.setAttribute("writer", bDto.getWriter());
		request.setAttribute("bno", bDto.getBno());
		
		
		System.out.println(bno);
		BoardReplyDAO rDao = BoardReplyDAO.getInstance();
		list = rDao.boardReplyView(bno);
		
		request.setAttribute("boardReply", list);
		request.setAttribute("boardReply", list);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		

		return forward;		
	}

}
