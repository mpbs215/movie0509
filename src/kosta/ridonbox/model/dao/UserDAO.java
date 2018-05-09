package kosta.ridonbox.model.dao;

import java.sql.SQLException;
import java.util.List;

import kosta.ridonbox.model.dto.BookDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.MyPageDTO;

public interface UserDAO {
	/**
	 * 사용자(고객) 로그인
	 * 
	 * @param id
	 *            (사용자 아이디)
	 * @param password
	 *            (사용자 비번)
	 * @return int : 1 이상이면 성공, 0이면 실패
	 */
	public int loginMember(String id, String password) throws SQLException;

	/**
	 * 사용자(고객) 회원가입
	 * 
	 * @param MemberDTO
	 *            (memberId, memberPwd, email, phone, joinDate)
	 * @return int : 1 이상이면 성공, 0이면 실패
	 */
	public int joinMember(MemberDTO memberDTO) throws SQLException;

	/**
	 * 박스오피스 순위 정렬
	 * 
	 * @return List<MovieDTO> 박스오피스 순위로 정렬하여 리스트로 반환
	 * @throws SQLException
	 */
	public List<MovieDTO> showByBoxoffice() throws SQLException;

	/**
	 * 최신개봉작 순위 정렬
	 * 
	 * @return List<MovieDTO> 최신개봉작 순위로 정렬하여 리스트로 반환
	 * @throws SQLException
	 */
	public List<MovieDTO> showByLatest() throws SQLException;

	/**
	 * 세부 영화보기
	 * 
	 * @param movieNo
	 *            (pk)
	 * @return MovieDTO
	 * @throws SQLException
	 */
	public MovieDTO showDetail(String movieNo) throws SQLException;

	/**
	 * 예매 시스템
	 * 
	 * @param booking
	 *            (pk)
	 * @return int : 1 이상이면 성공, 0이면 실패
	 * @throws SQLException
	 */
	public int Booking(BookDTO booking) throws SQLException;

	/**
	 * 사용자가 이벤트페이지 보기
	 * 
	 * @return List<EventDTO>
	 * @throws SQLException
	 */
	public List<EventDTO> listEvent() throws SQLException;

	// 마이페이지
	// 회원정보보기, 예매정보보기
	/**
	 * 사용자 마이페이지 / 마이페이지 내부에서 사용자정보를 뿌려준다.
	 * 
	 * @param id
	 *            (member)
	 * @return MyPageDTO
	 * @throws SQLException
	 */
	public MemberDTO myPageByMember(String id) throws SQLException;

	/**
	 * 사용자 마이페이지 / 마이페이지 내부에서 사용자정보를 수정한다.
	 * 
	 * @param MyPageDTO
	 * @return MyPageDTO
	 * @throws SQLException
	 */
	public int myPageByMemberUpdate(MemberDTO memberDto) throws SQLException;

	/**
	 * 사용자 마이페이지 / 마이페이지 내부에서 사용자 예매 정보를 뿌려준다.
	 * 
	 * @param id
	 *            (member)
	 * @return List<myPageDTO>
	 * @throws SQLException
	 */
	public List<BookDTO> myPageByMemberBooking(String id) throws SQLException;

	int checkById(String id) throws SQLException;

}
