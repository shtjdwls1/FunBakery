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

@WebServlet("/BakeryOneCon")
public class BakeryOneCon extends HttpServlet {
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
		
		
		ArrayList<ArrayList<BakeryVO>> taste1 = new ArrayList<ArrayList<BakeryVO>>();
		
		taste1.add(dao.getRecipe(b_seq, 1));
		taste1.add(dao.getIngredients(b_seq, 1));
		
		BakeryVO breadInfo = dao.getBreadInfo(b_seq);
		
		request.setAttribute("taste1", taste1);
		request.setAttribute("breadInfo", breadInfo);
		
		RequestDispatcher rd = request.getRequestDispatcher("recipe_one_detail.jsp");
		rd.forward(request, response);
		
	}

}
