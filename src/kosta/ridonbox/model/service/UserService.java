package kosta.ridonbox.model.service;

import java.sql.SQLException;
import java.util.List;

import kosta.ridonbox.model.dto.BookDTO;
import kosta.ridonbox.model.dto.EventDTO;
import kosta.ridonbox.model.dto.MemberDTO;
import kosta.ridonbox.model.dto.MovieDTO;

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
	public int checkById(String id) throws SQLException;
	
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
	public List<BookDTO> memberbyBookList(String memberId) throws SQLException;

	int myPageByMemberUpdate(MemberDTO memberDTO) throws SQLException;

	//영화관 정보 (보류)
	
}
