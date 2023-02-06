package com.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutCon")
public class LogoutCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String referer = request.getHeader("referer");
		
		session.invalidate();
		
//		String resplit = referer.substring(32, 39);
//		
//		if(resplit.equals("board_w") || resplit.equals("board_e")) {
//			response.sendRedirect("main.jsp");
//		}
		
		response.sendRedirect(referer);
		
		
	}

}
