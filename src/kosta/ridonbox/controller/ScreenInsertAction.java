package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.ScreenDTO;
import kosta.ridonbox.model.service.AdminService;
import kosta.ridonbox.model.service.AdminServiceImpl;

public class ScreenInsertAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String screenNum=request.getParameter("screenNum");
		String movieNum=request.getParameter("movieNum");
		String theaterName=request.getParameter("theaterName");
		String screenDate=request.getParameter("screenDate");
		String screenTime=request.getParameter("screenTime");
		ScreenDTO dto = new ScreenDTO(screenNum, movieNum, theaterName, screenDate, Integer.parseInt(screenTime));
		System.out.println(screenNum);
		System.out.println(movieNum);
		System.out.println(theaterName);
		System.out.println(screenDate);
		System.out.println(screenTime);
		AdminService service = new AdminServiceImpl();
		try {
			service.screenInsert(dto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
