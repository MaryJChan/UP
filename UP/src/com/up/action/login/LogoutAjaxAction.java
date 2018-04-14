package com.up.action.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.up.action.Action;
import com.up.action.ActionForward;

public class LogoutAjaxAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int flag = 0;
		
		// 세션 객체 값 초기 true면 임의로 새로운값을 생성해서 반환 false면 null값을 반환
		HttpSession session = request.getSession(false);
		
		// 로그인이 된 상태
		if(session != null) {
			session.invalidate();			
			flag = 1;
		}
		
		JSONObject jObj = new JSONObject();
		jObj.put("flag", flag);		
		response.setContentType("application/x-json; charset=UTF-8"); 
		response.getWriter().println(jObj);
		
		return null;
	}
	
}
