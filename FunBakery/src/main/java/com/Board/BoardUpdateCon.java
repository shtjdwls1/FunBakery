package com.Board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BoardDAO;
import com.VO.BoardVO;

@WebServlet("/BoardUpdateCon")
public class BoardUpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		BoardDAO dao = new BoardDAO();
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		BoardVO vo = new BoardVO(seq, title, content);
		
		int cnt = dao.boardUpdate(vo);
		
		if(cnt>0) {
			response.sendRedirect("BoardDetailCon?seq="+seq);
		}else {
			System.out.println("입력실패");
		}
	}

}
