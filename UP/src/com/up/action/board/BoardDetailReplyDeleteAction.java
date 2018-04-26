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

// 댓글 삭제 페이지
public class BoardDetailReplyDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JSONObject jObj = new JSONObject();
		
		Integer rno_step = Integer.parseInt(request.getParameter("rno_step"));
		System.out.println("rno_step = " + rno_step);
		
		BoardReplyDAO rDao = BoardReplyDAO.getInstance();
		rDao.boardReplyDelete(rno_step);
		rDao.boardReplyRno_stepUpdate2(rno_step);
		
		response.setContentType("application/x-json; charset=UTF-8"); 
		response.getWriter().println(jObj);
		
		return null;		
	}

}
