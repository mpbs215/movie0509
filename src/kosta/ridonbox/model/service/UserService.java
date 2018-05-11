package kosta.ridonbox.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kosta.ridonbox.model.dto.BookDTO;
import kosta.ridonbox.model.dto.BookingDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.MovieDTO;
import kosta.ridonbox.model.dto.ReservationDTO;
import kosta.ridonbox.model.dto.QnADTO;

public interface UserService {
	/**
	 * 로그
	 * @param id 로그인할 사용자아이디 
	 * @param password 로그인할 사용자비밀번호 
	 * @return 로그인되었는지 안되었는지 확
	 */
	public int loginMember(String id,String password) throws SQLException;
	
	/**
	 * 회원가입 
	 * @param memberDTO 회원가입할 회원정보 MemberDTO로 줌.
	 * @return 회원가입되었는지 안되었는지 확인.
	 * @throws SQLException
	 */
	public int joinMember(MemberDTO memberDTO) throws SQLException;
	
	/**
	 * 아이디 중복체크
	 * @param memberID
	 * @return 1이면 아이디 중복, 0이면 사용가능
	 * @throws SQLException
	 */
	public String checkById(String id) throws SQLException;
	
	/**
	 *메인페이지에서 BoxOffice순으로 영화보여줌.
	 * @return BoxOffic순 영화 정보 list
	 * @throws SQLException
	 */
	public List<MovieDTO> showByBoxoffice() throws SQLException;
	
	/**
	 * 메인페이지에서 최신개봉작순으로 보여줌.
	 * @return	최신개봉작순 영화정보 list
	 * @throws SQLException
	 */
	public List<MovieDTO> showByLatest() throws SQLException;
	
	/**
	 * 영화를 선택하면 한 영화정보(Detail) 보여주기 위해  
	 * @param movieNo	 선택한 영화 번
	 * @return		 선택된 영화정보들 보내줌.(MovieDTO)
	 * @throws SQLException
	 */
	public MovieDTO showDetail(String movieNo) throws SQLException;
	
	/**
	 * 예매한후 저장하는 클래스  
	 * @param booking 예매하는 정보를 BookDTO로 넘겨줌.
	 * @return	예매되었는지 안되었는지int로 넘겨줌.
	 * @throws SQLException
	 */
	public void Booking(BookDTO booking) throws SQLException;
	
	/**
	 * 이벤트 정보들을 넘겨주기 위해서  
	 * @return	전체이벤트 정보를 넘겨줌. 
	 * @throws SQLException
	 */
	public List<EventDTO> listEvent() throws SQLException;
	
/////////////////////////////마이페이지
/**
* 사용자(고객) 정보를 보여주기 위함 
* @return	memberId (사용자 아이디)
* @throws SQLException 
* @throws MemberDTO 
*/
public MemberDTO memberInfo(String memberId) throws SQLException;

/**수정*/
/**
* 사용자(고객) 예매 정보를 보여주기 위함  
* @return	memberId (사용자 아이디) 
* @throws SQLException 
* @throws List<BookDTO> (현 사용자의 예매 dto 리스트로 리턴)
*/
public List<BookingDTO> memberbyBookList(String memberId) throws SQLException;

public int deleteByBooking(String revNum) throws SQLException;

int myPageByMemberUpdate(MemberDTO memberDTO) throws SQLException;


/**
 *  예매 가능한 영화 목록들을 보여주기 위함
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
 * 예매 리스트를 보여주는 기능 (예매 페이지)
 * */
public List<String> movieRevList(String movieNum) throws SQLException;
	

/**
 * bookingView의 Form 에서 전송한 값들을 DB에 저장하는 기능
 * */
public int revList(ReservationDTO revDTO) throws SQLException;


	//QA
		/**
		 * QA 등록
		 * @param qaDAO 
		 * @return int형으로 1 이상이면 성공, 0이면 실패
		 */
		public int qaInsert(QnADTO qaDTO) throws SQLException;
		
		/**
		 * QA 수정
		 * @param qaDAO 
		 * @return int형으로 1 이상이면 성공, 0이면 실패
		 */
		public int qaUpdate(QnADTO qaNo) throws SQLException;

		/**
		 * QA 삭제
		 * @param qaNo (pk) 
		 * @return int형으로 1 이상이면 성공, 0이면 실패
		 */
		public int qaDelete(int qaNo) throws SQLException;
		
		/**
		 * QA의 모든레코드 검색하는 메소드 호출
		 * @return list
		 * */
		public List<QnADTO> selectAll() throws SQLException;
		
		/**
		 * QA의 QA 번호에 해당하는 레코드 검색하는 메소드 호출
		 * @param : qaNo (pk) 
		 * */
		QnADTO selectByQaNo(int qaNo) throws SQLException;
		
		/**
		 * qa의 commend 업로드
		 * @param qaNo
		 * @return
		 * @throws SQLException
		 */
		public int qaCommendUpdate(QnADTO qaNo) throws SQLException;
		  
}
