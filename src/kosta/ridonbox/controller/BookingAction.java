package kosta.ridonbox.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;

/**
 * 예매페이지 이동시 사용하는 Action
 * 요청값: 현재 세션 and 영화제목
 * 응답값: 예매정보 - MyPage 예매확인란으로 이동
 */
public class BookingAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ModelAndView mv = new ModelAndView();
		mv.setPath("web/bookingview.jsp");
		String test;
		return mv;
	}

}