package com.up.action; 

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.up.dao.ProductDAO;
import com.up.dto.ProductDTO; 

public class IndexAction implements Action{ 

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "index.jsp";		

		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductDTO> newProductList = pDao.listNewProduct();
		List<ProductDTO> bestProductList = pDao.listBestProduct();		

		request.setAttribute("newProductList", newProductList);
		request.setAttribute("bestProductList", bestProductList);				

		ActionForward forward = new ActionForward();
		forward.setPath(url);

		forward.setRedirect(false);		

		return forward;

	} 

}