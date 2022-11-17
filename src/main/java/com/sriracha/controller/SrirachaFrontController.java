package com.sriracha.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sriracha.action.ActionForward;

@WebServlet("*.do")
public class SrirachaFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		HttpSession session = req.getSession();

		switch (requestURI) {

			case "/sriracha/get_main_page.do":
				forward = new GetMainPageController().execute(req, resp);
				break;
				
			case "/sriracha/BoardView.do" :
		            forward = new CommentListController().execute(req, resp);
		            break;
	
			case "/sriracha/get_contents_page.do":
				forward = new GetContentsPageController().execute(req, resp);
				break;
	
			case "/sriracha/logout.do":
				forward = new LogoutController().execute(req, resp);
				break;
	
			case "/sriracha/modiif.do":
				forward = new modiifController().execute(req, resp);
				break;
	
			case "/sriracha/login.do":
				forward = new LoginController().execute(req, resp);
				break;
	
			case "/sriracha/join.do":
				forward = new JoinController().execute(req, resp);
				break;
	
			case "/sriracha/commentView.do":
				forward = new CommentListController().execute(req, resp);
				break;
	
			case "/sriracha/commentDetailView.do":
				forward = new CommentDetailViewController().execute(req, resp);
				break;
	
			case "/sriracha/search.do":
				forward = new SearchController().execute(req, resp);
				break;
	
			case "/sriracha/overView.do":
				forward = new GetOverviewController().execute(req, resp);
				break;

			
			case "/sriracha/get_my_page.do" :
				forward = new GetMyPageController().execute(req, resp);
				break;
				
			case "/sriracha/modifyComment.do" :
				forward = new GetModifyCommentController().execute(req, resp);
				break;
			case "/sriracha/addComment.do" :
				forward = new AddCommentController().execute(req, resp);
				break;
				
		}

		if (forward != null) {
			if (forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			} else {
				req.getRequestDispatcher(forward.getPath()).forward(req, resp);
			}
		}

	}
}
