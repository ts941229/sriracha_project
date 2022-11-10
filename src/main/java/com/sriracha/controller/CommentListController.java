package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.MovieDAO;

public class CommentListController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		BoardDAO bdao = new BoardDAO();
		ActionForward forward = new ActionForward();
		
		
//		String m_id = req.getParameter("movie_id");
//		
//		int movie_id = Integer.parseInt(m_id);
		
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		
		req.setAttribute("boardList", bdao.getCommentList(board_num));
		
		forward.setRedirect(false);
		forward.setPath("/view/commentPage.jsp");
		
		return forward;
		
	}

}
