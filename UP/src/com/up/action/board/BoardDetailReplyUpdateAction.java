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

public class BoardDetailReplyUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JSONObject jObj = new JSONObject();
		
		int rno_step = Integer.parseInt(request.getParameter("rno_step"));
		String replyComment = request.getParameter("replyComment");
		System.out.println("rno_step = " + rno_step + "   replyComment = " + replyComment);
		
		BoardReplyDTO rDto = new BoardReplyDTO(rno_step, replyComment);
		BoardReplyDAO rDao = BoardReplyDAO.getInstance();
		int flag = rDao.boardReplyUpdate(rDto);
		
		if(flag > 0) {
			flag = 1;
			System.out.println("댓글 수정 성공");
		} else {
			flag = 0;
			System.out.println("댓글 수정 실패");
		}
		
		jObj.put("flag", flag);
		
		response.setContentType("application/x-json; charset=UTF-8"); 
		response.getWriter().println(jObj);
		
		return null;		
	}

}
