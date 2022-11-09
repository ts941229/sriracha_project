package com.sriracha.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.MovieDAO;
import com.sriracha.model.MovieDTO;

public class GetMainPageController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		MovieDAO mdao = new MovieDAO();
		List<MovieDTO> movieList = mdao.selectAllMovies();
		
		req.setAttribute("movieList", movieList);
		
		forward.setRedirect(false);
		forward.setPath(req.getContextPath()+"/view/main.jsp");
		return forward;
	}
	
}
