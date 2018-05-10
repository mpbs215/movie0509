package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.dto.QnADTO;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;


/**
 * QA페이지 이동시 사용하는 Action
 * 요청값 X
 * 응답값: QA게시판에 등록된 글 리스트
 */
public class QAAction implements Action {
	
	UserService userService = new UserServiceImpl();

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ModelAndView mv = new ModelAndView();
		
		try {
		List<QnADTO> list = userService.selectAll();
		request.setAttribute("list", list);
		mv.setPath("web/QAboard.jsp");
		}catch (SQLException e) {
			e.printStackTrace();
			//request.setAttribute("errorMsg", e.getMessage());
			//mv.setPath("errorView/error.jsp");
		}
		return mv;
	}

}