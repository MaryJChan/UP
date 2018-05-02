package com.up.action.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.MemberDAO;
import com.up.dto.MemberDTO;

public class MypageAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "mypage/mypage.jsp";		

		String mid = request.getParameter("mid");
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = null;
		mDto = mDao.memSelect(mid);
		
		request.setAttribute("memSelect", mDto);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);		

		return forward;		
	}

}
