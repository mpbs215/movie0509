package kosta.ridonbox.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.ModelAndView;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("/main")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Map<String, Action> map;

	public void init(ServletConfig config) throws ServletException {
		map=(Map<String, Action>)config.getServletContext().getAttribute("map");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key=request.getParameter("command");
		
		System.out.println(key);
		//맵에서 키에 해당하는 클래스를 꺼내서 메소드를 호출하고 리턴값을 받는다.
		Action action=map.get(key);
		ModelAndView mv=action.execute(request, response);
		
		if(mv==null) {
			return;
		}
		
		//리턴값에 따라 이동방식과 이동경로를 정한다.
		if(mv.isRedirect()) {
			response.sendRedirect(mv.getPath());
			return;
		}
		
		request.getRequestDispatcher(mv.getPath()).forward(request, response);
	}
	

}