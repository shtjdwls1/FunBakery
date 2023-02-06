package com.Member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.MemberDAO;
import com.VO.MemberVO;
import com.VO.PageVO;

@WebServlet("/ManageCon")
public class ManageCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();

		int pageNum = 1;
		int amount = 20;

		if (request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}

		ArrayList<MemberVO> mlist = dao.Select(pageNum, amount);
		int total = dao.getTotal();
		PageVO vo = new PageVO(pageNum, amount, total);

		request.setAttribute("mlist", mlist);
		request.setAttribute("vo", vo);

		RequestDispatcher rd = request.getRequestDispatcher("member_manage.jsp");
		rd.forward(request, response);
	}

}