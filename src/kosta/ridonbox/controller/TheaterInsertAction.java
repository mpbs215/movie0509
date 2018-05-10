package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.dto.TheaterDTO;
import kosta.ridonbox.model.service.AdminService;
import kosta.ridonbox.model.service.AdminServiceImpl;

public class TheaterInsertAction implements Action {
	
	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ModelAndView mv = new ModelAndView();
		mv.setPath("web/adminTheater.jsp");
		mv.setRedirect(true);
		
		String theaterName=request.getParameter("theaterName");
		String theaterTotal=request.getParameter("theaterTotal");
		
		TheaterDTO dto = new TheaterDTO(theaterName, Integer.parseInt(theaterTotal));

		AdminService service = new AdminServiceImpl();
		try {
			service.theaterInsert(dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mv;
	}

}
