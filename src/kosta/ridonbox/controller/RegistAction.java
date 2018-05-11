package kosta.ridonbox.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;

/**
 * ȸ�����Խ� ����ϴ� Action
 * ��û��: ȸ����������
 * ���䰪: X
 */
public class RegistAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserService userService = new UserServiceImpl();
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = null;
		PrintWriter out = response.getWriter();
		int re = 0;
		mv.setPath("errorView/error.jsp");
		
		String userName = request.getParameter("Username");
		String passWord = request.getParameter("Password");
		String passWord2=request.getParameter("Password2");
		String email = request.getParameter("Email");
		String phone = request.getParameter("Phone");
		
		
		memberDTO = new MemberDTO(userName,passWord,email,phone);
		try {
			if(userService.checkById(userName) != null || !passWord.equals(passWord2)) {
			re = userService.joinMember(memberDTO);
			if(re==0) {
				request.setAttribute("errorMsg", "ȸ�����Կ���");
				mv.setPath("errorView/error.jsp");
			} else {
				//request.setAttribute("errorMsg", "ȸ�������� �����մϴ�.");
				out.println("<script>alert('ȸ�������� �����մϴ�.')</script>");
				mv.setPath("web/index.jsp");
				
			}
		}else {
			request.setAttribute("errorMsg", "��й�ȣ�� �ߺ��Ǿ����ϴ�.");
			mv.setPath("errorView/error.jsp");
		}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", e.getMessage());
		}
		return mv;
	}
}
