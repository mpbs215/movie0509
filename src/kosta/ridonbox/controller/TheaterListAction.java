package kosta.ridonbox.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.dto.MovieScreenDTO;
import kosta.ridonbox.model.dto.TheaterDTO;
import kosta.ridonbox.model.service.AdminService;
import kosta.ridonbox.model.service.AdminServiceImpl;
import net.sf.json.JSONArray;

public class TheaterListAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AdminService service = new AdminServiceImpl();
		try {
			List<TheaterDTO> list=service.theaterList();
			JSONArray arr = JSONArray.fromObject(list);
			PrintWriter out = response.getWriter();
			System.out.println(arr);
			out.println(arr);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
