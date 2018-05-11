package kosta.ridonbox.model.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kosta.ridonbox.model.dto.BookDTO;
import kosta.ridonbox.model.dto.BookingDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.QnADTO;
import kosta.ridonbox.model.dto.MyPageDTO;
import kosta.ridonbox.model.dto.ReservationDTO;

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
	public List<BookingDTO> myPageByMemberBooking(String id) throws SQLException;

	/**
	 * 사용자 메인페이지에서 예약 취소메소드
	 * @param revNum 예약 정보 
	 * @return 확인
	 * @throws SQLException
	 */
	public int deleteByBooking(String revNum) throws SQLException;
	
	String checkById(String id) throws SQLException;
	
	/**
	 * QA 등록
	 * @param qaDAO 
	 * @return int : 1 이상 - 성공, 0 - 실패
	 */
	public int qaInsert(QnADTO qnADTO) throws SQLException;
	
	/**
	 * QA 업데이트
	 * @param qaNo (pk)
	 * @return int : 1 이상 - 성공, 0 - 실패
	 */
	public int qaUpdate(QnADTO qnADTO) throws SQLException;
	

	/**
	 * QA 삭제
	 * @param qaNo (pk)
	 * @return int : 1 이상 - 성공, 0 - 실패
	 */
	public int qaDelete(int qaNo) throws SQLException;
	

	/**
	 * QA전체검색
	 * */
	public List<QnADTO> selectAll();
	
	/**
	  * QA 번호에 해당하는 QA 검색
	  * */
	QnADTO selectByQaNo(int qnaNo) throws SQLException;
 
	

	
	
	
	
	/**
	 * 		사용자에게 영화리스트를 뿌려주는 메소드(예매페이지)
	 *		@return 확인
	 * 		@throws SQLException
	 * */
	public List<MovieDTO> movieNameList() throws SQLException;
	
	
	
	/**
	 *  사용자의 영화 날짜를 뿌려주는 메소드( 예매페이지)
	 * */
	public List<String> movieDateList(String movieNum) throws SQLException;
	
	
	/**
	 *  선택한 영화, 날짜에 대한 예매 가능 시간을 보여주는 메소드(예매 페이지)
	 * */
	public List<Integer> movieTimeList(String movieNum) throws SQLException;
	
	/**
	 *  시간 선택 하였을 때에 이미지경로, 상영관 이름, 상영관 번호를 해당하는 영화번호에 대한 값을 이용하여 가저온다
	 * */
	public List<String> movieRevList(String movieNum) throws SQLException;
	
	
	/**
	 * 	예매 테이블에 저장해야 하는 정보들을 DTO에 insert해준다.
	 * */
	public int revList(ReservationDTO revDTO) throws SQLException;

	/**
	 * 사용자 qna 답변 업로드하는 메소드
	 * @param qaDTO
	 * @return
	 * @throws SQLException
	 */
	int qaCommendUpdate(QnADTO qaDTO) throws SQLException;
	
}
