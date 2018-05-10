package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.ReservationDTO;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;

/**
 * 예매페이지 이동시 사용하는 Action
 * 요청값: 현재 세션 and 영화제목
 * 응답값: 예매정보 - MyPage 예매확인란으로 이동
 */
public class BookingAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserService service = new UserServiceImpl();
		HttpSession session = request.getSession();
		List<MovieDTO> list = new ArrayList<>();
		ModelAndView mv = new ModelAndView();
		
		ReservationDTO revDTO = new ReservationDTO(); 
		
		int result = 0;
		String bookingNum = "";
		
		try {
				list = service.movieNameList();
				if (list.isEmpty()) 
					mv.setPath("web/error.jsp");
				
				request.setAttribute("bookingList", list);
				mv = new ModelAndView();
				mv.setPath("web/bookingview.jsp");
				
				String memberId = session.getId();
				
				String movieNo = request.getParameter("movieNumber");			// 영화번호
				String screenNumber = request.getParameter("screenNumber");	// 스크린번호
				String rRoomNum = request.getParameter("rRoomNum");		// 상영관이름
				bookingNum = request.getParameter("bookingNum");		// 예매수
				
				
				revDTO.setMemberId(memberId);									// 회원아이디
				revDTO.setMovieNum(movieNo);									// 영화번호
				revDTO.setTheaterName(rRoomNum);							// 상영관 이름
				revDTO.setScreenNum(screenNumber);							// 상영관 번호
				revDTO.setRevPep(Integer.parseInt(bookingNum));								// 총 예매수
				
				result = service.revList(revDTO);
				
				if (result ==0) { mv.setPath("web/error.jsp"); }
				
		} catch (SQLException e) { e.printStackTrace();
							request.setAttribute("errorMsg", e.getMessage());
		} 
			return mv;
		}
	
}