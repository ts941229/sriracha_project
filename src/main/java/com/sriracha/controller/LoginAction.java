package com.sriracha.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.MovieDAO;
import com.sriracha.model.UserDTO;

public class LoginAction implements Action{
@Override
public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
	ActionForward forward = new ActionForward();
	MovieDAO mdao = new MovieDAO();
	
	String inputPw = req.getParameter("user_pw");
	String user_id = req.getParameter("user_id");
	
	String realPw = mdao.login(user_id);
	
	PrintWriter out;
	
		
		
		

	
	
	if(inputPw.equals(realPw)) {
		
		forward.setRedirect(false);
		forward.setPath("/view/main.jsp" );
		
	}
	else {
		try {
			out = resp.getWriter();
			out.println("<script>alert('아디비번틀림'); location.href='/view/login.jsp';</script>");
			out.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*
		 * forward.setRedirect(false); forward.setPath("/view/login.jsp" );
		 */
	}
	return forward;
}
}
