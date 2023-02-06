package com.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.MemberDAO;
import com.VO.MemberVO;

@WebServlet("/RegisterCon")
public class RegisterCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String repassword = request.getParameter("repassword");
	
		MemberVO mbvo = new MemberVO(email, password ,username);
		MemberDAO mbdao = new MemberDAO();
		int cnt = mbdao.Register(mbvo);
		
		if(cnt>0) {
			response.sendRedirect("login_register.jsp");
		}else {
			System.out.println("입력실패");
		}
		
	}

}
