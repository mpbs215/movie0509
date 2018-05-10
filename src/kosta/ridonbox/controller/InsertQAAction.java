package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.dto.QnADTO;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;

public class InsertQAAction implements Action {
	UserService userService = new UserServiceImpl();

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	ModelAndView mv = new ModelAndView();
	HttpSession session = request.getSession();	
	
	try {
		  String memberId =  (String) session.getAttribute("userid");
		  String qnaTitle =  request.getParameter("qnaTitle");
		  String context =  request.getParameter("context");
		  String comment= request.getParameter("comment");
		  String date =  request.getParameter("date");
		  String password =  request.getParameter("password");  
		 
		  QnADTO qnADTO =
			new QnADTO(memberId, qnaTitle, context, comment, date, password);
		
		  /*db���� �����  qna��no�� �����;��Ѵ�.
		 *   userService
		  mv.setPath("main?command=readQA&qnaNo="); */
		  
		  int re = userService.qaInsert(qnADTO);
		  if(re>0) {//����� �Ϸ�Ǿ���.
			  mv.setPath("main?command=QA"); 
			  mv.setRedirect(true);//redirect������� �̵�.
		  }

	}catch (SQLException e) {
		e.printStackTrace();
		//request.setAttribute("errorMsg", e.getMessage());
		//mv.setPath("errorView/error.jsp");
	}
	return mv;
	}

}
