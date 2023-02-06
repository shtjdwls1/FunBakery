package com.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MemberDAO;
import com.VO.MemberVO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		MemberVO vo = new MemberVO(email, password);
		MemberDAO mbdao = new MemberDAO();
		String username = mbdao.login(vo);

		if(username != null) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			session.setAttribute("email", email);
			response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("login_register.jsp");
		}
				
		
	}

}
