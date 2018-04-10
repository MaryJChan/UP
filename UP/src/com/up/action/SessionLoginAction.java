package com.up.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.up.dao.MemberDAO;
import com.up.dto.MemberDTO;

public class SessionLoginAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String url = null;
		
		String mid = request.getParameter("login_id");
		String mpw = request.getParameter("login_pw");
		System.out.println("ID : " + mid);
		System.out.println("PW : " + mpw); 		
		
		MemberDTO mDto = new MemberDTO(mid, mpw);
		MemberDAO mDao = MemberDAO.getInstance();
		mDto = mDao.sessionLogin(mDto);
		System.out.println("로그인 성공");
		System.out.println("ID : " + mDto.getMid() + "PW : " + mDto.getMpw());
		
		// session으로 담아서 보냄
		if(mDto != null) {			
			// 혹시모를 남아있는값 제거
			session.removeAttribute("loginUser");
			
			// 세션에 값 담기
			session.setAttribute("loginUser", mDto);
			url = "index.bizpoll";
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);				
		return forward;
	}

}
