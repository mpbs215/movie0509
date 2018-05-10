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

public class UpdateQAAction implements Action {
	UserService userService = new UserServiceImpl();
 
	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		mv.setPath("main?command=QA");
		
		//넘어오는 값들 받기
		int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
//		String memberId = request.getParameter("memberId");
		String context = request.getParameter("context");
		String password = request.getParameter("password");
		
		System.out.println(qnaNo);
		
		//유효성 검사
		try{
		  if(context==null||password==null ){
			  
			  throw new SQLException("입력값이 충분하지 않습니다.");
			  
		  }
		  
		  //비밀번호 체크
		  QnADTO qnADTO = userService.selectByQaNo(qnaNo);
		 
		 if(qnADTO.getPassword().equals(password)){//일치
			 QnADTO dto = new QnADTO(qnaNo,null, context);
			 
			 if( userService.qaUpdate(dto)> 0){//수정완료
			 // commmand=detailView , modelNum=? , flag=?
			 mv.setPath("main?command=readQA&qnaNo="+qnaNo);
			 }
			 
		 }else{//비번오류
			 throw new SQLException("비밀번호 다시 확인해주세요.");
		 }
		
		}catch(SQLException e){
			//request.setAttribute("errorMsg", e.getMessage());
			e.printStackTrace();
			}
			
		  return mv;
				

	}


}
