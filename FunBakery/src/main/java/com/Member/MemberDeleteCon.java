package com.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.MemberDAO;

@WebServlet("/MemberDeleteCon")
public class MemberDeleteCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String mb_id = (String) request.getParameter("name");
		System.out.println(mb_id);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.Delete(mb_id);

		if (cnt > 0) {
			System.out.println("회원 삭제 성공");
		} else {
			System.out.println("회원 삭제 실패");
		}

		response.sendRedirect("ManageCon");
	}

}