package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.BookingDTO;
import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;

public class DeleteBookingAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		UserService service = new UserServiceImpl();
		//mv.setPath("errView/error.jsp");//에러페이지로 옮김.
		
		try {
		String revName =request.getParameter("revName");
		System.out.println(revName);
		int result = service.deleteByBooking(revName);
		if(result==0) {
				throw new SQLException("해당하는 예약이 없습니다.");
			}else {
				request.setAttribute("result", result);
				mv.setPath("web/index.jsp");
			}
			
		}catch (Exception e) {
			request.setAttribute("errorMsg", e.getMessage());
		}

		return mv;
		
	}

}
