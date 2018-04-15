package com.up.action.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.json.simple.JSONObject;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.MemberDAO;
import com.up.dto.MemberDTO;

public class LoginAjaxCkAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JSONObject jObj = new JSONObject();
		HttpSession session = request.getSession();
		int flag = 0;
		
		String mid = request.getParameter("id");
		String mpw = request.getParameter("pw");
		System.out.println("ID = " + mid);
		System.out.println("PW = " + mpw);
		
		if(mid != null && mpw != null) {
			MemberDTO mDto = new MemberDTO(mid, mpw);
			MemberDAO mDao = MemberDAO.getInstance();
			flag = mDao.memLogin(mDto);
			System.out.println("flag = " + flag);			
			
			if(flag == 1) {
				System.out.println("로그인 성공");
				mDto = mDao.sessionLogin(mDto);
				if(mDto != null) {			
					// 혹시모를 남아있는값 제거
					session.removeAttribute("loginUser");
					
					// 세션에 값 담기
					session.setAttribute("sid", mDto.getMid());
					session.setAttribute("loginUser", mDto);
				}
			} else {
				System.out.println("로그인 실패");
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
