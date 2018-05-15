package com.up.junit;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import com.up.dao.MemberDAO;
import com.up.dto.MemberDTO;

class LoginTest {

	@Test
	void test() {
		String id="dhfjswl3";
		String pw= "rlawocks1";
		MemberDTO mDto = new MemberDTO(id, pw);
		MemberDAO mDao = MemberDAO.getInstance();
		int flag = mDao.memLogin(mDto);
		
		if(flag > 0) {
			System.out.println("방문을 환영합니다.");
		} else {
			System.out.println("등록된 회원이 아닙니다.");
		}
	}

}
