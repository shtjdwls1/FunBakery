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
import com.VO.CommentVO;

@WebServlet("/BoardDetailCon")
public class BoardDetailCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		int seq = Integer.parseInt(request.getParameter("seq"));
		BoardVO vo = dao.boardDetail(seq);
		if(vo != null) {
			ArrayList<CommentVO> clist = new ArrayList<>();
			clist = dao.commentView(seq);
			if(clist != null) {
				request.setAttribute("clist", clist);
				request.setAttribute("vo", vo);
				
				RequestDispatcher rd = request.getRequestDispatcher("board_detail.jsp");
				rd.forward(request, response);
			}else {
				request.setAttribute("vo", vo);
				
				RequestDispatcher rd = request.getRequestDispatcher("board_detail.jsp");
				rd.forward(request, response);
			}
		}
	}

}
