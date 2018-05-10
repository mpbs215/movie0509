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
		String password = request.getParameter("password"); //����ڰ� ģ��
		try{
			if( password == null){
			   throw new SQLException("������ ��Ȯ���� �ʽ��ϴ�.");	
			}
			//passwordȮ��
			
			//db���� ��ϰ� ���� qnaNo�� password�� �����;��Ѵ�.
			QnADTO dto = userService.selectByQaNo(qnaNo);
			
			if(dto.getPassword().equals(password)){//��ġ
				 if(userService.qaDelete(qnaNo)>  0){//��������
					 mv.setPath("main?command=QA");
					
				 }
			}else{//�������
				throw new SQLException("��й�ȣ Ȯ�����ּ���.");
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
			//request.setAttribute("errorMsg", e.getMessage());
		}
       return mv;
	}

}
