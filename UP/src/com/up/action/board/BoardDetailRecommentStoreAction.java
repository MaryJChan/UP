package com.up.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.BoardReplyDAO;
import com.up.dto.BoardReplyDTO;

public class BoardDetailRecommentStoreAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JSONObject jObj = new JSONObject();
		
		int flag = 0;		
		Integer rno_step = Integer.parseInt(request.getParameter("rno_step"));
		Integer bno = Integer.parseInt(request.getParameter("bno"));		
		String sessionUser = request.getParameter("sessionUser");
		String replyComment = request.getParameter("replyComment");

		System.out.println("bno = " + bno);
		System.out.println("rno_step = " + rno_step);
		System.out.println("sessionUser = " + sessionUser);
		System.out.println("replyComment = " + replyComment);
		
		BoardReplyDAO rDao = BoardReplyDAO.getInstance();
		BoardReplyDTO rDto = rDao.boardReplySelect(rno_step);
		int ref = rDto.getRef();
		int re_level = rDto.getRe_level()+1;
		
		if(sessionUser != null && replyComment != null) {
			
			rDao.boardReplyRno_stepUpdate(rno_step);
			
			if(re_level > 1) {
				re_level = 1;
			}
			
			rDto = new BoardReplyDTO(rno_step, bno, sessionUser, replyComment, ref, re_level);
			
			flag = rDao.boardRecommentStore(rDto);
			System.out.println("flag = " + flag);			
			
			if(flag == 1) {
				System.out.println("답글 등록 성공");
			} else {
				System.out.println("답글 등록 실패");
			}			
				
		}		
		
		jObj.put("flag", flag);
		
		response.setContentType("application/x-json; charset=UTF-8"); 
		response.getWriter().println(jObj);
		return null;
	}

}
