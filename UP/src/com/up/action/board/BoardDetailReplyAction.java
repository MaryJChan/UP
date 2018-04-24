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

public class BoardDetailReplyAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JSONObject jObj = new JSONObject();
		
		int flag = 0;		
		int bno = Integer.parseInt(request.getParameter("bno"));
		String sessionUser = request.getParameter("sessionUser");
		String replyComment = request.getParameter("replyComment");

		System.out.println("bno = " + bno);
		System.out.println("sessionUser = " + sessionUser);
		System.out.println("replyComment = " + replyComment);
		
		BoardReplyDTO rDto = null;
		BoardReplyDAO rDao = null;		

		if(sessionUser != null && replyComment != null) {
			rDto = new BoardReplyDTO(bno, sessionUser, replyComment);
			rDao = BoardReplyDAO.getInstance();
			flag = rDao.boardReplyStore(rDto);
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
