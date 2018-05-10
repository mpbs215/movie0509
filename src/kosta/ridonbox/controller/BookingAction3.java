package kosta.ridonbox.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;
import net.sf.json.JSONArray;

/**
 * 예매페이지 이동시 사용하는 Action
 * 요청값: 현재 세션 and 영화제목
 * 응답값: 예매정보 - MyPage 예매확인란으로 이동
 */
public class BookingAction3 implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		UserService service = new UserServiceImpl();
		
		List<Integer> list = new ArrayList<>();
		
		ModelAndView mv = new ModelAndView();
		
		String movieNum = request.getParameter("id");
		
		try {
				list = service.movieTimeList(movieNum);
				
				if (list.isEmpty()) 
					mv.setPath("web/error.jsp");
				
				mv = new ModelAndView();
				mv.setPath("web/bookingview.jsp");
					
		} catch (SQLException e) { e.printStackTrace();
					request.setAttribute("errorMsg", e.getMessage());
			} 
		
			JSONArray arr = JSONArray.fromObject(list);		// 출력 형태 [{id : 값, name : 값, ...}, {}, {}, ... {}]
			PrintWriter out = response.getWriter();
			out.print(arr);
		
			return null;
		}
	}