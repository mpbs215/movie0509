package kosta.ridonbox.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;

/**
 * FAQ페이지 이동시 사용하는 Action
 * 요청값 X
 * 응답값: X 하드코딩 예정이므로 그냥 페이지 설정 후 이동하면 될듯
 */
public class FaqAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ModelAndView mv = new ModelAndView();
		mv.setPath("web/faq.jsp");
		
		
		
		return mv;
	}

}
