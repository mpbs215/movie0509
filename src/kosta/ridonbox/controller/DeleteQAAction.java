package kosta.ridonbox.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.ridonbox.model.dao.UserDAO;
import kosta.ridonbox.model.dao.UserDAOImpl;
import kosta.ridonbox.model.dto.ModelAndView;
import kosta.ridonbox.model.dto.QnADTO;
import kosta.ridonbox.model.service.UserService;
import kosta.ridonbox.model.service.UserServiceImpl;

public class DeleteQAAction implements Action {
	
	

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		UserDAO userDAO = new UserDAOImpl();
		UserService userService = new UserServiceImpl();
		
		ModelAndView mv = new ModelAndView();
		//mv.setPath("errorView/error.jsp");
		
		int qnaNo= Integer.parseInt(request.getParameter("qnaNo"));
		String password = request.getParameter("password"); //사용자가 친거
		try{
			if( password == null){
			   throw new SQLException("정보가 정확하지 않습니다.");	
			}
			//password확인
			
			//db에서 언니가 넣은 qnaNo의 password를 가져와야한다.
			QnADTO dto = userService.selectByQaNo(qnaNo);
			
			if(dto.getPassword().equals(password)){//일치
				 if(userService.qaDelete(qnaNo)>  0){//삭제성공
					 mv.setPath("main?command=QA");
					
				 }
			}else{//비번오류
				throw new SQLException("비밀번호 확인해주세요.");
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
			//request.setAttribute("errorMsg", e.getMessage());
		}
       return mv;
	}

}
