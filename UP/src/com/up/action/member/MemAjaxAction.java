package com.up.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.up.action.Action;
import com.up.action.ActionForward;
import com.up.dao.MemberDAO;

public class MemAjaxAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {		
	
		String mid = request.getParameter("id");
		System.out.println("ID = " + mid);
		
		if(mid != null && mid.trim().equals("") == false) {
			MemberDAO mDao = MemberDAO.getInstance();
			int flag = mDao.memIdCheck(mid);
			System.out.println("flag = " + flag);
			
			JSONObject jObj = new JSONObject();
			jObj.put("flag", flag);
			jObj.put("id", mid);
			
			response.setContentType("application/x-json; charset=UTF-8"); 
			response.getWriter().println(jObj);			
			
		}		
		
		return null;
		
	}

}
