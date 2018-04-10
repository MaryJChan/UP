package com.up.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.up.dto.MemberDTO;
import com.up.mybatis.SqlMapConfig;

public class MemberDAO {
	
	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	// mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;	
	int result, flag = 0;
	List<MemberDTO> list;
	
	private MemberDAO() {
		
	}
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	// ID 중복체크
	public int memIdCheck(String memberid) {
		sqlSession = sqlSessionFactory.openSession();
		list = new ArrayList<>();
		
		try {
			list = sqlSession.selectList("memidchk", memberid);	
			
			if(list.isEmpty()) {				
				System.out.println("사용할수있는 ID 입니다.");
				flag = 1;
			} else {
				System.out.println("중복된 ID 입니다.");
				flag = 0;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return flag;
	}
	
	// 회원 로그인
	public int memLogin(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession();
		list = new ArrayList<>();
		
		try {
			list = sqlSession.selectList("memlogin", mDto);			
			if (list.isEmpty()) {
				flag=0;				
			} else {
				flag =1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();			
		}		
		
		return flag;
		
	}
	
	// 회원 로그인 성공시
	public MemberDTO sessionLogin(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession();
		list = new ArrayList<>();
		
		try {
			list = sqlSession.selectList("sessionlogin", mDto);
			
			if(!list.isEmpty()) {
				String mid = list.get(0).getMid();
				String mpw = list.get(0).getMpw();
				String mname = list.get(0).getMname();
				String msex = list.get(0).getMsex();
				String mbirth = list.get(0).getMbirth();
				String mphone = list.get(0).getMphone();
				String mpostcode = list.get(0).getMpostcode();
				String madd = list.get(0).getMadd();
				String memail = list.get(0).getMemail();
				Date regdate = list.get(0).getRegdate();
				
				mDto = new MemberDTO(mid, mpw, mname, msex, mbirth, mphone, mpostcode, madd, memail, regdate);
				
			}		
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();	
		}
		
		return mDto;
	}
	

	// 회원 등록
	public int memInsert(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			result = sqlSession.insert("meminsert", mDto);
			
			if(result > 0) {
				System.out.println("등록 성공");
				
				// 커밋
				sqlSession.commit();
				
			} else {
				System.out.println("등록 실패");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();	
		}
		
		return result;
	}
	
}




