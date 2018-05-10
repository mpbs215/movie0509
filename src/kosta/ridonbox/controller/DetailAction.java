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
 * ��ȭ�� ������ �̵��� ����ϴ� Action
 * ��û��: ���� ��ȭ
 * ���䰪: ������ȭ�� �ش��ϴ� ����
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
