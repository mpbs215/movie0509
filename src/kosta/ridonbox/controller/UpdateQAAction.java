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
		
		//�Ѿ���� ���� �ޱ�
		int qnaNo = Integer.parseInt(request.getParameter("qnaNo"));
//		String memberId = request.getParameter("memberId");
		String context = request.getParameter("context");
		String password = request.getParameter("password");
		
		System.out.println(qnaNo);
		
		//��ȿ�� �˻�
		try{
		  if(context==null||password==null ){
			  
			  throw new SQLException("�Է°��� ������� �ʽ��ϴ�.");
			  
		  }
		  
		  //��й�ȣ üũ
		  QnADTO qnADTO = userService.selectByQaNo(qnaNo);
		 
		 if(qnADTO.getPassword().equals(password)){//��ġ
			 QnADTO dto = new QnADTO(qnaNo,null, context);
			 
			 if( userService.qaUpdate(dto)> 0){//�����Ϸ�
			 // commmand=detailView , modelNum=? , flag=?
			 mv.setPath("main?command=readQA&qnaNo="+qnaNo);
			 }
			 
		 }else{//�������
			 throw new SQLException("��й�ȣ �ٽ� Ȯ�����ּ���.");
		 }
		
		}catch(SQLException e){
			//request.setAttribute("errorMsg", e.getMessage());
			e.printStackTrace();
			}
			
		  return mv;
				

	}


}
