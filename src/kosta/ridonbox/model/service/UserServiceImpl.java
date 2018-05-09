package kosta.ridonbox.model.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kosta.ridonbox.model.dao.UserDAO;
import kosta.ridonbox.model.dao.UserDAOImpl;
import kosta.ridonbox.model.dto.BookDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.MovieDTO;

public class UserServiceImpl implements UserService {
	
	private static UserDAO userDAO = new UserDAOImpl();


	@Override
	public List<MovieDTO> showByBoxoffice() throws SQLException {
		List<MovieDTO> list = userDAO.showByBoxoffice();
		  return list;
	}

	@Override
	public List<MovieDTO> showByLatest() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MovieDTO showDetail(String movieNo) throws SQLException {
		MovieDTO movieDTO = userDAO.showDetail(movieNo);
		if(movieDTO==null) throw new SQLException(movieNo+"에 해당하는 영화정보가 없습니다.");
		
		return movieDTO;
	}

	@Override
	public void Booking(BookDTO booking) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<EventDTO> listEvent() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO memberInfo(String memberId) throws SQLException  {
		MemberDTO member= null;
		member = userDAO.myPageByMember(memberId);
		if(member==null) throw new SQLException("사용자가 존재 하지 않습니다.");
		return member;
	}
	
	@Override
	public int myPageByMemberUpdate(MemberDTO memberDTO) throws SQLException {
		int result = 0;
		result =  userDAO.myPageByMemberUpdate(memberDTO);
		if(result==0) throw new SQLException("수정되지 않았습니다.");
		return result;
	}
	
	@Override
	public List<BookDTO> memberbyBookList(String memberId) throws SQLException  {
		List<BookDTO> list = new ArrayList<>();
		list=userDAO.myPageByMemberBooking(memberId);
		if(list==null) throw new SQLException("예약한 내용이 없습니다.");
		return list;
	}
	
	@Override
	public int loginMember(String id, String password) throws SQLException {
		
		int re = userDAO.loginMember(id, password);
		
		return re;
	}

	@Override
	public int joinMember(MemberDTO memberDTO) throws SQLException {
		
		int re = userDAO.joinMember(memberDTO);
		
		return re;
	}
	
	public int checkById(String id) throws SQLException{
		
		int re = userDAO.checkById(id);
		
		return re;
	}


}
