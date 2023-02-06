package com.Board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BoardDAO;
import com.VO.BoardVO;

@WebServlet("/BoardWriteCon")
public class BoardWriteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		BoardDAO dao = new BoardDAO();
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		BoardVO vo = new BoardVO(title, content, id);
		
		int cnt = dao.boardWrite(vo);
		
		if(cnt>0) {
			response.sendRedirect("BoardListCon");
		}else {
			System.out.println("입력실패");
		}
	}

}
