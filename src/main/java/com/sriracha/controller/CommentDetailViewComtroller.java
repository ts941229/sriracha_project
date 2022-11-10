package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.BoardDAO;
import com.sriracha.model.CommentDAO;
import com.sriracha.model.FullDTO;

public class CommentDetailViewComtroller implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		CommentDAO cdao = new CommentDAO();
		ActionForward forward = new ActionForward();
		
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		
		req.setAttribute("commentList", cdao.getComment(board_num));

		forward.setRedirect(false);
		forward.setPath("/view/comment_detail.jsp");
		
		return forward;
	}
	
}
