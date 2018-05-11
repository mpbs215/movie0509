package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.ridonbox.model.dto.BookDTO;
import kosta.ridonbox.model.dto.BookingDTO;
import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;

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
		UserService service = new UserServiceImpl();
		//mv.setPath("errView/error.jsp");//에러페이지로 옮김.
		
		
		HttpSession session = request.getSession();	
		String userId = (String)session.getAttribute("userid");
		try {
			if(userId==null) {
				request.setAttribute("errorMsg", "로그인을 해주세요.");
				mv.setPath("errorView/error.jsp");
				
			}else {

			MemberDTO member = service.memberInfo(userId);
			System.out.println("1");
			List<BookingDTO> list = service.memberbyBookList(userId);
			
			System.out.println(list);
			System.out.println("2"+member);
			if(member==null) {
				throw new SQLException("해당하는 상품이 없습니다.");
			}else {
				request.setAttribute("bookingList", list);
				request.setAttribute("member", member);
				mv.setPath("web/myPage.jsp");
			}
			}
			
		}catch (Exception e) {
			request.setAttribute("errorMsg", e.getMessage());
		}

		return mv;
	}

}

