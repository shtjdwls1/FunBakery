package com.Board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BoardDAO;
import com.VO.BoardVO;
import com.VO.PageVO;

@WebServlet("/BoardListCon")
public class BoardListCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		
		int pageNum = 1;
		int amount = 20;
		
		if(request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}
		
		ArrayList<BoardVO> blist = dao.boardList(pageNum, amount);
		int total = dao.getTotal();
		PageVO vo = new PageVO(pageNum, amount, total); 
		
		request.setAttribute("blist", blist);
		request.setAttribute("vo", vo);
		
		RequestDispatcher rd = request.getRequestDispatcher("board.jsp");
		rd.forward(request, response);
	}

}
