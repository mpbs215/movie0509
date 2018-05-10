package kosta.ridonbox.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.ridonbox.model.dto.BookingDTO;
import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;

public class IdDuplChk implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ModelAndView mv = new ModelAndView();
		UserService service = new UserServiceImpl();
		response.setContentType("text/html;charset=UTF-8"); //∫∏≥ª¡Ÿ
		
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		String id=request.getParameter("id");
		System.out.println(id);
		
		String result=null;
		try {
			result=service.checkById(id);
			 
		}catch (Exception e) {
			request.setAttribute("errorMsg", e.getMessage());
		}
		System.out.println(result);
		out.print(result);
		return null;
	}

}
