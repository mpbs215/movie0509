package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.service.AdminService;
import kosta.ridonbox.model.service.AdminServiceImpl;

public class TheaterDeleteAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String theaterName=request.getParameter("theaterName");
		AdminService service = new AdminServiceImpl();
		try {
			service.theaterDelete(theaterName);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
