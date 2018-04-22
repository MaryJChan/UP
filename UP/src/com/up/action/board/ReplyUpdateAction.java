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

public class ReplyUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JSONObject jObj = new JSONObject();
		
		int rno = Integer.parseInt(request.getParameter("rno"));
		String replyComment = request.getParameter("replyComment");
		System.out.println("rno = " + rno + "   replyComment = " + replyComment);
		
		BoardReplyDTO rDto = new BoardReplyDTO(rno, replyComment);
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
