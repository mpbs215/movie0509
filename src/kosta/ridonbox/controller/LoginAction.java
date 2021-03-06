package kosta.ridonbox.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;

/**
 * 로그인 요청시 사용하는 Action
 * 요청값 ID, PASSWORD
 * 응답값: ?
 */
public class LoginAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserService userService = new UserServiceImpl();
		HttpSession session = request.getSession();	
		
		ModelAndView mv = new ModelAndView();
		String id = request.getParameter("Username");
		String password = request.getParameter("Password");
		System.out.println("loginAction :"+id+":"+password);
		int re = 0; 
		try {
			re = userService.loginMember(id, password);
			System.out.println("Action:"+re);
			if(re!=0) {
				if(id.equals("admin")) {
					mv.setPath("web/adminRegist.jsp");
				}else {
				mv.setPath("web/index.jsp");
				}
				session.setAttribute("userid", id);
			} else {
				System.out.println("로그인 안됨");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return mv;
	}

}
