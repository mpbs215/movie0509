package kosta.ridonbox.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;

public class Loginout implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		UserService userService = new UserServiceImpl();
		HttpSession session = request.getSession();	
		
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("userid")!=null)session.invalidate();
		
		mv.setPath("web/index.jsp");
		return mv;
	}

}
