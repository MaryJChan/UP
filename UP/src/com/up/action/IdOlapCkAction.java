package com.up.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.dao.MemberDAO;

public class IdOlapCkAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse respons)
			throws ServletException, IOException {
		String url = "id_olap_ck.jsp";
		
		String memberid = request.getParameter("memberid");
		System.out.println("ID = "+memberid);
		
		MemberDAO mDao = MemberDAO.getInstance();
		int flag = mDao.memIdCheck(memberid);
		
		// flag == 0 중복된 ID
		//	flag == 1	// 사용가능한 ID
	
		request.setAttribute("flag", flag);
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
		
	}

}