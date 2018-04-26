package com.up.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.BoardFavoriteDAO;
import com.up.dao.BoardReplyDAO;
import com.up.dto.BoardFavoriteDTO;
import com.up.dto.BoardReplyDTO;

public class BoardDetailCommentListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "board/commentlist.jsp";
		Integer bno = Integer.parseInt(request.getParameter("bno"));
		String sessionUser = request.getParameter("sessionUser");
		
		//상세 게시글 댓글 출력
		BoardReplyDAO rDao = BoardReplyDAO.getInstance();
		List<BoardReplyDTO> list = rDao.boardReplyView(bno);
		request.setAttribute("boardReply", list);
		
		// 좋아요 출력
		BoardFavoriteDAO fDao = BoardFavoriteDAO.getInstance();
		int goodcnt = fDao.boardGoodcntselect(bno);
		
		request.setAttribute("goodcnt", goodcnt);
		
		BoardFavoriteDTO fDto = new BoardFavoriteDTO(bno, sessionUser);
		fDto = fDao.boardFavoriteSelect(fDto);
		
		request.setAttribute("favoriteBoard", fDto);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);	

		return forward;
	}

}
