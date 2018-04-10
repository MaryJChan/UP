package com.up.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.dao.MemberDAO;
import com.up.dto.MemberDTO;

public class MemberInsertAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;
		
		String birth1 = request.getParameter("PlaceHolder1_txtBirthYear");
		String birth2 = request.getParameter("PlaceHolder1_txtBirthMonth");
		String birth3= request.getParameter("PlaceHolder1_txtBirthDay");
		
		String phone1 = request.getParameter("PlaceHolder1_ddlCellNo1");
		String phone2 = request.getParameter("PlaceHolder1_txtCellNo2");
		String phone3= request.getParameter("PlaceHolder1_txtCellNo3");		
		
		String email1 = request.getParameter("PlaceHolder1_txtEmail1"); 
		String email2 = request.getParameter("PlaceHolder1_txtEmail2"); 
		
		String add1 = request.getParameter("sample6_address");
		String add2 = request.getParameter("sample6_address2");
		
		String id = request.getParameter("PlaceHolder1_txtWebID");
		String pw = request.getParameter("PlaceHolder1_txtWebPwd");
		String name = request.getParameter("PlaceHolder1_txtCustName");
		String sex = request.getParameter("PlaceHolder1_rbtnCustSex");
		String birth = birth1 + birth2 + birth3;
		String phone = phone1 + phone2 + phone3;
		String postcode = request.getParameter("sample6_postcode");
		String add = add1 + " " + add2;
		String email = email1 + "@" + email2;
		
		System.out.println("아이디 : " + id + "  패스워드 : " + pw + "  이름 : " + name + "  성별 : " + sex + "  생년월일 : " + birth + "  핸드폰 번호 : " + phone + " 우편번호 : " + postcode + " 주소 : " + add +  "이메일 주소 : " + email);
		
		MemberDTO mDto = new MemberDTO(id, pw ,name, sex, birth, phone, postcode, add, email);
		MemberDAO mDao = MemberDAO.getInstance();
		
		int result = mDao.memInsert(mDto);
		
		if(result > 0) {
			url = "index.bizpoll";
		} else {
			url = "member.bizpoll";
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

	
	
}
