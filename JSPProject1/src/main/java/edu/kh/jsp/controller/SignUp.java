package edu.kh.jsp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignUp extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// post방식 인코딩처리
		req.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("userId");
		String[] userPw = req.getParameterValues("userPw");
		String name = req.getParameter("userName");
		String email = req.getParameter("Email");
		String[] hobby = req.getParameterValues("hobby");
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/signResult.jsp");
		

		
		dispatcher.forward(req, resp);
		
		
		
		
		
		
	}
}
