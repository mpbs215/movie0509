package kosta.ridonbox.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;

/**
 * myPage 이동시 사용하는 Action
 * 현재세션에서 ID값을 읽어와야함
 * 응답값: ID에 해당하는 회원정보, 예매정보
 */
public class MyPageAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ModelAndView mv = new ModelAndView();
		mv.setPath("web/myPage.jsp");
		return mv;
	}

}
