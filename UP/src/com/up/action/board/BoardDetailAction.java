package com.up.action.board;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.BoardDAO;
import com.up.dao.BoardReplyDAO;
import com.up.dto.BoardReplyDTO;
import com.up.dto.NextPreDTO;

public class BoardDetailAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/boarddetail.jsp";		
		
		List<BoardReplyDTO> list = null;
		
		Integer bno = Integer.parseInt(request.getParameter("bno"));
		System.out.println("게시글 번호 : " + bno);
		
		BoardDAO bDao = BoardDAO.getInstance();
		NextPreDTO npDto = null;
		
		// 조회수 1증가
		// Session을 활용한 조회수 증가 방지
		HttpSession session = request.getSession();
		bDao.boardHits(bno, session);
				
		// 이전글 다음글 출력 코드
		npDto = bDao.boardDetail(bno);
		System.out.println("번호 : " + npDto.getBno() + "  제목 : " + npDto.getTitle() + " 카테고리 : " + npDto.getCategory() + "  내용" + npDto.getContent() + "  작성자 : " + npDto.getWriter() + "  조회수 : " + npDto.getHits() + " 추천수 : " + npDto.getGoodcnt() + "  작성일 : " + npDto.getRegdate());
		System.out.println("이전글 번호 : " + npDto.getPre_article_bno() + " 이전글 제목 : " + npDto.getPre_title() + " 이전글 작성자 : " + npDto.getPre_writer() + " 이전글 작성일 : " + npDto.getPre_regdate());
		System.out.println("다음글 번호 : " + npDto.getNext_article_bno() + " 다음글 제목 : " + npDto.getNext_title() + " 다음글 작성자 : " + npDto.getNext_writer() + " 다음글 작성일 : " + npDto.getNext_regdate());
		request.setAttribute("boardDetailList", npDto);
		request.setAttribute("writer", npDto.getWriter());
		request.setAttribute("bno", npDto.getBno());
		
		// 1차 댓글 출력 코드
		System.out.println(bno);
		BoardReplyDAO rDao = BoardReplyDAO.getInstance();
		list = rDao.boardReplyView(bno);		
		request.setAttribute("boardReply", list);		
		
		// new
		Date today = new Date();		
		request.setAttribute("today", today);	
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		

		return forward;		
	}

}
