package com.Bakery;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BakeryDAO;
import com.VO.BakeryVO;

@WebServlet("/BakeryCon")
public class BakeryCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		BakeryDAO dao = new BakeryDAO();
		int b_seq = Integer.parseInt(request.getParameter("seq"));
//		int b_seq = 22;
		
		
		ArrayList<ArrayList<BakeryVO>> taste1 = new ArrayList<ArrayList<BakeryVO>>();
		ArrayList<ArrayList<BakeryVO>> taste2 = new ArrayList<ArrayList<BakeryVO>>();
		ArrayList<ArrayList<BakeryVO>> taste3 = new ArrayList<ArrayList<BakeryVO>>();
		
		int index1 = dao.findB_r_index(b_seq, "taste1");
		taste1.add(dao.getRecipe(b_seq, index1));
		taste1.add(dao.getIngredients(b_seq, index1));
		
		int index2 = dao.findB_r_index(b_seq, "taste2");
		taste2.add(dao.getRecipe(b_seq, index2));
		taste2.add(dao.getIngredients(b_seq, index2));
		
		int index3 = dao.findB_r_index(b_seq, "taste3");
		taste3.add(dao.getRecipe(b_seq, index3));
		taste3.add(dao.getIngredients(b_seq, index3));
		
		BakeryVO breadInfo = dao.getBreadInfo(b_seq);
		
		request.setAttribute("taste1", taste1);
		request.setAttribute("taste2", taste2);
		request.setAttribute("taste3", taste3);
		request.setAttribute("breadInfo", breadInfo);
		
		RequestDispatcher rd = request.getRequestDispatcher("recipe_detail.jsp");
		rd.forward(request, response);
		
	}

}
