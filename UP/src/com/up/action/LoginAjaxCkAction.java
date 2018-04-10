package com.up.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.up.dao.MemberDAO;
import com.up.dto.MemberDTO;

public class LoginAjaxCkAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JSONObject jObj = new JSONObject();
		
		String mid = request.getParameter("id");
		String mpw = request.getParameter("pw");
		System.out.println("ID = " + mid);
		System.out.println("PW = " + mpw);
		
		if(mid != null && mpw != null) {
			MemberDTO mDto = new MemberDTO(mid, mpw);
			MemberDAO mDao = MemberDAO.getInstance();
			int flag = mDao.memLogin(mDto);
			System.out.println("flag = " + flag);			
			
			jObj.put("flag", flag);
			jObj.put("id", mid);
			jObj.put("pw", mpw);			
				
		}			
		response.setContentType("application/x-json; charset=UTF-8"); 
		response.getWriter().println(jObj);
		return null;
	}

}
