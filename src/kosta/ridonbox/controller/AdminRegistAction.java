package kosta.ridonbox.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.dto.MovieScreenDTO;
import kosta.ridonbox.model.dto.TheaterDTO;
import kosta.ridonbox.model.service.AdminService;
import kosta.ridonbox.model.service.AdminServiceImpl;
import net.sf.json.JSONArray;

public class AdminRegistAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("어드민레지스트액션실행");
		AdminService service = new AdminServiceImpl();
		try {
			List<MovieScreenDTO> list=service.movieList();
			List<TheaterDTO> tList= service.theaterList();
			Map<String, List> map = new HashMap<>();
			map.put("list", list);
			map.put("tList", tList);
			JSONArray arr = JSONArray.fromObject(map);
			PrintWriter out = response.getWriter();
			System.out.println(arr);
			out.println(arr);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}