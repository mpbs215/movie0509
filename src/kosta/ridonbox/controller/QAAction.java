package kosta.ridonbox.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;

/**
 * QA페이지 이동시 사용하는 Action
 * 요청값 X
 * 응답값: QA게시판에 등록된 글 리스트
 */
public class QAAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ModelAndView mv = new ModelAndView();
		mv.setPath("web/QAboard.jsp");
		return mv;
	}

}