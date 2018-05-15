package com.up.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.MemberDAO;
import com.up.dto.MemberDTO;

public class MemUpdatePwChkAjaxAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		JSONObject jObj = new JSONObject();
		HttpSession session = request.getSession();
		int flag = 0;
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		System.out.println("ID = " + mid);
		System.out.println("PW = " + mpw);
		
		if(mid != null && mpw != null) {
			MemberDTO mDto = new MemberDTO(mid, mpw);
			MemberDAO mDao = MemberDAO.getInstance();
			flag = mDao.memLogin(mDto);
			System.out.println("flag = " + flag);			
			
			if(flag == 1) {
				System.out.println("아이디 체크 성공");
				flag = 1;
			} else {
				System.out.println("아이디 체크 실패");
				flag = 0;
			}			
				
		}
		jObj.put("flag", flag);
		jObj.put("id", mid);
		jObj.put("pw", mpw);		
		
		
		response.setContentType("application/x-json; charset=UTF-8"); 
		response.getWriter().println(jObj);
		return null;
	}

}
