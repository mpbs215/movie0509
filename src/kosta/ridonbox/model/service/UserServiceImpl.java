package kosta.ridonbox.model.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kosta.ridonbox.model.dao.UserDAO;
import kosta.ridonbox.model.dao.UserDAOImpl;
import kosta.ridonbox.model.dto.BookDTO;
import kosta.ridonbox.model.dto.BookingDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.ReservationDTO;

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
	public List<BookingDTO> memberbyBookList(String memberId) throws SQLException  {
		List<BookingDTO> list = new ArrayList<>();
		list=userDAO.myPageByMemberBooking(memberId);
		System.out.println("userservice:"+list);
		if(list==null) throw new SQLException("예약한 내용이 없습니다.");
		return list;
	}
	
	public int deleteByBooking(String revNum) throws SQLException{
		int result=userDAO.deleteByBooking(revNum);
		if(result==0) throw new SQLException("수정되지 않았습니다.");
		
		return result;
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
	
	@Override
	public List<MovieDTO> movieNameList() throws SQLException {
		List<MovieDTO> list = userDAO.movieNameList();
		
		if(list.isEmpty()) {
			throw new SQLException("?????");	
		}
		System.out.println("list값은= " +list);
		return list;
	}
	
	
	@Override
	public List<String> movieDateList(String movieNum) throws SQLException {
		
		List<String> list = new ArrayList<>();
		
		list = userDAO.movieDateList(movieNum);
		
		if (list.size() == 0 || list==null) {
			throw new SQLException("해당 영화 정보에 대한 상영날짜가 존재 하지 않습니다.");
		}
		return list;
	}

	@Override
	public List<Integer> movieTimeList(String movieNum) throws SQLException {
		List<Integer> list = new ArrayList<>();
		
		list = userDAO.movieTimeList(movieNum);
		if (list.size() == 0 || list == null) 
			throw new SQLException("해당 영화 정보에 대한 상영 시간이 존재 하지 않습니다.");
		
		return list;
	}

	@Override
	public List<String> movieRevList(String movieNum) throws SQLException {
		List<String> list = new ArrayList<>();
		
		list = userDAO.movieRevList(movieNum);
		
		System.out.println("ststs" +list);
		
		if (list.size() ==0 || list == null) throw new SQLException("에러에러에러러어어어~");
		
		return list;
	}

	@Override
	public int revList(ReservationDTO revDTO) throws SQLException {
		int result = userDAO.revList(revDTO);
		
		if (result == 0 ) { throw new SQLException("추가 실패 하였습니다"); }
		
		return result;
	}
}
