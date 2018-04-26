package com.up.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.BoardDAO;
import com.up.dao.BoardFavoriteDAO;
import com.up.dto.BoardFavoriteDTO;

public class BoardFavoriteUpdateAjaxAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int flag = 0;
		int bno = Integer.parseInt(request.getParameter("bno"));
		String sessionUser = request.getParameter("sessionUser");
		
		System.out.println("bno = " + bno);
		System.out.println("sessionUser = " + sessionUser);
		
		if(!sessionUser.equals("null")) {
			BoardFavoriteDTO fDto = new BoardFavoriteDTO(bno, sessionUser);
			BoardFavoriteDAO fDao = BoardFavoriteDAO.getInstance();
			List<BoardFavoriteDTO> list = fDao.boardFavoriteCheck(fDto);
			
			if(list.isEmpty()) {			
				fDto = new BoardFavoriteDTO(bno, sessionUser);
				fDao.boardFavoriteInsert(fDto);
			}
			
			fDto = fDao.boardFavoriteSelect(fDto);
			
			BoardDAO bDao=  BoardDAO.getInstance();
			int result = fDao.boardFavoriteUpdate(fDto);
			int result2 = bDao.boardGoodcntUpdate(fDto);
			
			if(result > 0 && result2 > 0) {
				flag = 1;
			}
			
		}		
		
		
				
		JSONObject jObj = new JSONObject();
		jObj.put("flag", flag);		
		response.setContentType("application/x-json; charset=UTF-8"); 
		response.getWriter().println(jObj);
		
		return null;
		
	}

}
