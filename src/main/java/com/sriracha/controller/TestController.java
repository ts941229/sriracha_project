package com.sriracha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sriracha.action.Action;
import com.sriracha.action.ActionForward;
import com.sriracha.model.TestDAO;
import com.sriracha.model.TestDTO;
import com.sriracha.util.Util;

public class TestController implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		TestDAO tdao = new TestDAO();
		TestDTO tdto = new TestDTO();
		tdto.setTest01_id("ts");
		tdto.setTest01_pw("1234");
		tdto.setTest01_name("태석");
		
//		tdao.insertRow(tdto);
		
		Util.getInstance().getMovieList("upcoming", "");
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath()+"/test_main.jsp");
		return forward;
	}

}
