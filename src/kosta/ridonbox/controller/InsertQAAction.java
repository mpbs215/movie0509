package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	try {
//		  String qnaNo = request.getParameter("qnaNo");
		  String memberId =  request.getParameter("memberId");
		  String qnaTitle =  request.getParameter("qnaTitle");
		  String context =  request.getParameter("context");
		  String comment= request.getParameter("comment");
		  String date =  request.getParameter("date");
		  String password =  request.getParameter("password");  
		 
		  QnADTO qnADTO =
			new QnADTO(memberId, qnaTitle, context, comment, date, password);
		
		  /*db에서 저장된  qnaㅜno를 가져와야한다.
		 *   userService
		  mv.setPath("main?command=readQA&qnaNo="); */
		  
		  int re = userService.qaInsert(qnADTO);
		  if(re>0) {//등록이 완료되었다.
			  mv.setPath("main?command=QA"); 
			  mv.setRedirect(true);//redirect방식으로 이동.
		  }

	}catch (SQLException e) {
		e.printStackTrace();
		//request.setAttribute("errorMsg", e.getMessage());
		//mv.setPath("errorView/error.jsp");
	}
	return mv;
	}

}
