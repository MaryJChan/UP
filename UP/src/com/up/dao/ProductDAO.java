package com.up.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.up.mybatis.SqlMapConfig;

import com.up.dto.ProductDTO;

public class ProductDAO {

	// MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	// mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	int result;
	ResultSet rs;
	
	private ProductDAO() {
		
	}
	
	private static ProductDAO instance = new ProductDAO();
	
	public static ProductDAO getInstance() {
		return instance;
	}
	
	public List<ProductDTO> listNewProduct() {
		sqlSession = sqlSessionFactory.openSession();
		List<ProductDTO> list = new ArrayList<>();
		
		try {
			// 바로 담기 때문에 while로 담을 필요 x
			list = sqlSession.selectList("newpdtview");			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	public List<ProductDTO> listBestProduct() {
		sqlSession = sqlSessionFactory.openSession();
		List<ProductDTO> list = new ArrayList<>();
		
		try {			
			// 바로 담기 때문에 while로 담을 필요 x
			list = sqlSession.selectList("bestpdtview");			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

}
