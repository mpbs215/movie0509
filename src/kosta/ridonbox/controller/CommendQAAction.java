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

public class CommendQAAction implements Action {
	UserService userService = new UserServiceImpl();
 
	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		mv.setPath("main?command=QA");
		
		//넘어오는 값들 받기
		int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
		String commend = request.getParameter("commend");
		
		System.out.println(qnaNo);
		
		QnADTO dto = new QnADTO(qnaNo,commend, null);
			 
		try {
			if( userService.qaCommendUpdate(dto)> 0){//수정완료
				 // commmand=detailView , modelNum=? , flag=?
				 mv.setPath("main?command=readQA&qnaNo="+qnaNo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 return mv;
	}
}
