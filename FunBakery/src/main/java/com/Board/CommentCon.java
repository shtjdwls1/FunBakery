package com.Board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BoardDAO;
import com.VO.CommentVO;

@WebServlet("/CommentCon")
public class CommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		BoardDAO dao = new BoardDAO();
		
		String id = request.getParameter("id");
		int seq = Integer.parseInt(request.getParameter("aseq"));
		String comment = request.getParameter("comment");
		
		CommentVO vo = new CommentVO(seq, comment, id);
		
		int cnt = dao.comment(vo);
		
		if(cnt>0) {
			response.sendRedirect("BoardDetailCon?seq="+seq);
		}else {
			System.out.println("입력실패");
		}
	}
}
