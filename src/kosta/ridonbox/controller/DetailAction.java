package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;

/**
 * 영화상세 페이지 이동시 사용하는 Action
 * 요청값: 누른 영화
 * 응답값: 누른영화에 해당하는 정보
 */
public class DetailAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ModelAndView mv = new ModelAndView();
		
		String movieNum = request.getParameter("movieNum");
		
		UserService service = new UserServiceImpl();
		try {
			List<MovieDTO> movielist =service.showByBoxoffice();
			request.setAttribute("movielist", movielist);
			MovieDTO dto = service.showDetail(movieNum);
			request.setAttribute("movie", dto);
			mv.setPath("web/detail.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mv;
	}

}
