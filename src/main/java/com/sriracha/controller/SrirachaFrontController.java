package com.sriracha.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.ActionForward;

@WebServlet("*.do")
public class SrirachaFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		
		switch(requestURI) {
			case "/sriracha/test.do" :
				forward = new TestController().execute(req, resp);
				break;
				
				
				
				
				
				
				
				
				
				
				
				
				
			case "/sriracha/commentView.do" :
				forward = new CommentListController().execute(req, resp);
				System.out.println("프론트 컨트롤러 도착 !!!!");
				break;
		}
		
		if(forward!=null) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			}else {
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
//				req.getRequestDispatcher(forward.getPath()).forward(req, resp);
			}
		}
		
	}
}
