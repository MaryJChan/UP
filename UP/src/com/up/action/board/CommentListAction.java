package com.up.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.impl.protocol.BootstrapServerRequestDispatcher;
import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.BoardDAO;
import com.up.dao.BoardFavoriteDAO;
import com.up.dao.BoardRecommentDAO;
import com.up.dao.BoardReplyDAO;
import com.up.dto.BoardFavoriteDTO;
import com.up.dto.BoardRecommentDTO;
import com.up.dto.BoardReplyDTO;

public class CommentListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/commentlist.jsp";
		
		Integer bno = Integer.parseInt(request.getParameter("bno"));
		String sessionUser = request.getParameter("sessionUser");
		
		BoardReplyDAO rDao = BoardReplyDAO.getInstance();
		List<BoardReplyDTO> list = rDao.boardReplyView(bno);
		
				
		request.setAttribute("boardReply", list);
		
		// 2차 댓글 출력 코드
		BoardRecommentDAO rcDao = BoardRecommentDAO.getInstance();
		List<BoardRecommentDTO> list2 = rcDao.boardRecommentView(bno);
		
		request.setAttribute("boardRecomment", list2);
		
		// 좋아요 확인
		if(!sessionUser.equals("null")) {
			BoardFavoriteDTO fDto = new BoardFavoriteDTO(bno, sessionUser);
			BoardFavoriteDAO fDao = BoardFavoriteDAO.getInstance();
			fDto = fDao.boardFavoriteSelect(fDto);
			
			request.setAttribute("favoriteBoard", fDto);
		}
		BoardDAO bDao = BoardDAO.getInstance();
		int goodcnt = bDao.boardGoodcntselect(bno);
		
		request.setAttribute("goodcnt", goodcnt);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		

		return forward;		
	}

}
