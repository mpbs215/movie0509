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
 * ���������� �̵��� ����ϴ� Action
 * ��û��: ���� ���� and ��ȭ����
 * ���䰪: �������� - MyPage ����Ȯ�ζ����� �̵�
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
				
				String movieNo = request.getParameter("movieNumber");			// ��ȭ��ȣ
				String screenNumber = request.getParameter("screenNumber");	// ��ũ����ȣ
				String rRoomNum = request.getParameter("rRoomNum");		// �󿵰��̸�
				bookingNum = request.getParameter("bookingNum");		// ���ż�
				
				
				revDTO.setMemberId(memberId);									// ȸ�����̵�
				revDTO.setMovieNum(movieNo);									// ��ȭ��ȣ
				revDTO.setTheaterName(rRoomNum);							// �󿵰� �̸�
				revDTO.setScreenNum(screenNumber);							// �󿵰� ��ȣ
				revDTO.setRevPep(Integer.parseInt(bookingNum));								// �� ���ż�
				
				result = service.revList(revDTO);
				
				if (result ==0) { mv.setPath("web/error.jsp"); }
				
		} catch (SQLException e) { e.printStackTrace();
							request.setAttribute("errorMsg", e.getMessage());
		} 
			return mv;
		}
	
}