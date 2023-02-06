package com.Bakery;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BakeryDAO;
import com.VO.BakeryVO;

@WebServlet("/CategoryCon")
public class CategoryCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BakeryDAO dao = new BakeryDAO();
		
		String cat = request.getParameter("cat");
		
		ArrayList<BakeryVO> brlist = dao.category(cat);
		ArrayList<BakeryVO> clist = dao.count();
		ArrayList<BakeryVO> plist = dao.popular();
		
		request.setAttribute("brlist",brlist);
		request.setAttribute("clist",clist);
		request.setAttribute("plist", plist);
		
		RequestDispatcher rd = request.getRequestDispatcher("category.jsp");
		rd.forward(request, response);
	}

}
