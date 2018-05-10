package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.dto.QnADTO;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;
/**
 * readQA페이지 이동시 사용하는 Action
 * 요청값: qnaNo
 * 응답값: qnaNo에 해당하는 글 
 */
public class ReadQAAction implements Action {
	
	UserService userService = new UserServiceImpl();

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		int qano = Integer.parseInt(request.getParameter("qnaNo"));
		
		
		try {
		QnADTO qnADTO = userService.selectByQaNo(qano);
		request.setAttribute("qna", qnADTO);
		mv.setPath("web/readQA.jsp");
		}catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage());
			mv.setPath("errorView/error.jsp");
		}
		return mv;
	}

}
