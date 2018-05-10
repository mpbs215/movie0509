package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;

public class UpdateMemberAction implements Action {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("updateMemberAction");
		System.out.println(request.getParameter("memberPwd"));
		
		ModelAndView mv = new ModelAndView();
		UserService service = new UserServiceImpl();
		//mv.setPath("errView/error.jsp");//에러페이지로 옮김.
		
		try {
			if(request.getParameter("memberId")==null)	{
				throw new SQLException("로그인을 해주세요.");
			}
		MemberDTO memberDTO = new MemberDTO(request.getParameter("memberId"), request.getParameter("memberPwd"),
				request.getParameter("memberEmail"), request.getParameter("memberPhone"), request.getParameter("memberJoin"));
		
			int result = service.myPageByMemberUpdate(memberDTO);
			System.out.println(result);
			if(result>0) {
				MemberDTO member = service.memberInfo(request.getParameter("memberId"));
				request.setAttribute("member", member);
				request.setAttribute("result", "수정되었습니다.");
				mv.setPath("web/index.jsp");
			}else {
				request.setAttribute("result", "수정되지 않았습니다.");
				mv.setPath("web/myPage.jsp");
			}
			
		}catch (Exception e) {
			request.setAttribute("errorMsg", e.getMessage());
		}

		return mv;
	}

}
